package com.tencent.liteav.videoproducer.capture;

import android.opengl.GLES20;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class CustomFrameToPixelFrameConverter {
    private static final String TAG = "CustomFrameToPixelFrameConverter";
    @Nullable
    private final Object mSharedContext;
    private final com.tencent.liteav.base.b.b mThrottlers = new com.tencent.liteav.base.b.b();
    @Nullable
    private com.tencent.liteav.videobase.b.e mEGLCore = null;
    @Nullable
    private com.tencent.liteav.videobase.frame.j mPixelFrameRenderer = null;
    @Nullable
    private com.tencent.liteav.videobase.frame.e mGLTexturePool = null;
    private int mWidth = 0;
    private int mHeight = 0;

    @CalledByNative
    public CustomFrameToPixelFrameConverter(@Nullable Object obj) {
        this.mSharedContext = obj;
    }

    private void initializeGLComponents(int i9, int i10, @NonNull PixelFrame pixelFrame) {
        if (this.mEGLCore != null) {
            LiteavLog.w(this.mThrottlers.a("initGL"), TAG, "egl is initialized!", new Object[0]);
            return;
        }
        Object gLContext = pixelFrame.getGLContext() != null ? pixelFrame.getGLContext() : this.mSharedContext;
        try {
            com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
            this.mEGLCore = eVar;
            eVar.a(gLContext, null, i9, i10);
            this.mEGLCore.a();
            com.tencent.liteav.base.b.a a10 = this.mThrottlers.a("initSuccess");
            LiteavLog.i(a10, TAG, "initialize egl, width: " + i9 + ", height: " + i10 + ", sharedContext: " + gLContext, new Object[0]);
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.mThrottlers.a("initError"), TAG, "initialize egl failed.", e10);
            this.mEGLCore = null;
        }
        if (this.mEGLCore != null) {
            this.mGLTexturePool = new com.tencent.liteav.videobase.frame.e();
            if (this.mPixelFrameRenderer == null) {
                this.mPixelFrameRenderer = new com.tencent.liteav.videobase.frame.j(i9, i10);
            }
        }
    }

    private boolean isNeedRecreateEGL(@NonNull PixelFrame pixelFrame, @NonNull com.tencent.liteav.videobase.b.e eVar) {
        return (pixelFrame.getHeight() == this.mHeight && pixelFrame.getWidth() == this.mWidth && !(pixelFrame.getGLContext() != null && !CommonUtil.equals(pixelFrame.getGLContext(), eVar.f31724b))) ? false : true;
    }

    private void uninitializedGLComponents() {
        com.tencent.liteav.videobase.b.e eVar = this.mEGLCore;
        if (eVar == null) {
            return;
        }
        try {
            eVar.a();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.mThrottlers.a("make"), TAG, "uninitialize egl, make current error ", e10);
        }
        LiteavLog.i(this.mThrottlers.a("uninitGL"), TAG, "uninitialize egl", new Object[0]);
        com.tencent.liteav.videobase.frame.j jVar = this.mPixelFrameRenderer;
        if (jVar != null) {
            jVar.a();
            this.mPixelFrameRenderer = null;
        }
        com.tencent.liteav.videobase.frame.e eVar2 = this.mGLTexturePool;
        if (eVar2 != null) {
            eVar2.a();
            this.mGLTexturePool.b();
            this.mGLTexturePool = null;
        }
        com.tencent.liteav.videobase.b.e.a(this.mEGLCore);
        this.mEGLCore = null;
    }

    @CalledByNative
    public PixelFrame convertFrame(@Nullable PixelFrame pixelFrame) {
        if (pixelFrame == null) {
            LiteavLog.w(TAG, "convertFrame: pixelFrame is null.");
            return null;
        }
        com.tencent.liteav.videobase.b.e eVar = this.mEGLCore;
        if (eVar == null || isNeedRecreateEGL(pixelFrame, eVar)) {
            this.mWidth = pixelFrame.getWidth();
            this.mHeight = pixelFrame.getHeight();
            uninitializedGLComponents();
            initializeGLComponents(this.mWidth, this.mHeight, pixelFrame);
        }
        com.tencent.liteav.videobase.b.e eVar2 = this.mEGLCore;
        if (eVar2 == null || this.mGLTexturePool == null || this.mPixelFrameRenderer == null) {
            return null;
        }
        try {
            eVar2.a();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(TAG, "EGL makeCurrent error ", e10);
        }
        OpenGlUtils.glViewport(0, 0, this.mWidth, this.mHeight);
        com.tencent.liteav.videobase.frame.d a10 = this.mGLTexturePool.a(this.mWidth, this.mHeight);
        this.mPixelFrameRenderer.a(pixelFrame, GLConstants.GLScaleType.CENTER_CROP, a10);
        GLES20.glFinish();
        PixelFrame a11 = a10.a(this.mEGLCore.d());
        a11.setTimestamp(pixelFrame.getTimestamp());
        a10.release();
        return a11;
    }

    @CalledByNative
    public void release() {
        uninitializedGLComponents();
    }

    @CalledByNative
    public void releaseFrame(PixelFrame pixelFrame) {
        if (pixelFrame != null) {
            pixelFrame.release();
        }
    }
}
