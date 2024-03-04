package com.tencent.liteav.videoproducer2;

import androidx.annotation.NonNull;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.b.b;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.b.g;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.FrameMetaData;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.frame.d;
import com.tencent.liteav.videobase.frame.e;
import com.tencent.liteav.videobase.frame.j;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.a;
import com.tencent.liteav.videobase.videobase.c;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class FrameTransformer implements c.a {
    private static final String TAG = "FrameTransformer";
    private e mGLTexturePool;
    private long mNativeHandler;
    private final GLConstants.PixelBufferType mPixelBufferType;
    private final GLConstants.PixelFormatType mPixelFormatType;
    private j mPixelFrameRender;
    private c mVideoFrameConverter;
    private final b mThrottlers = new b();
    private com.tencent.liteav.videobase.b.e mEGLCore = null;
    private int mWidth = 0;
    private int mHeight = 0;
    private Rotation mRenderRotation = Rotation.NORMAL;
    private boolean mIsHorizontalMirror = false;
    private boolean mIsVerticalMirror = false;

    public FrameTransformer(GLConstants.PixelFormatType pixelFormatType, GLConstants.PixelBufferType pixelBufferType, long j10) {
        this.mPixelFormatType = pixelFormatType;
        this.mPixelBufferType = pixelBufferType;
        this.mNativeHandler = j10;
    }

    private void applyRenderParams(PixelFrame pixelFrame) {
        FrameMetaData metaData = pixelFrame.getMetaData();
        if (metaData != null) {
            this.mRenderRotation = metaData.getRenderRotation();
            this.mIsHorizontalMirror = metaData.isRenderMirrorHorizontal();
            this.mIsVerticalMirror = metaData.isRenderMirrorVertical();
        }
        pixelFrame.setRotation(Rotation.a((pixelFrame.getRotation().mValue + this.mRenderRotation.mValue) % 360));
        if (this.mIsHorizontalMirror) {
            pixelFrame.setMirrorHorizontal(!pixelFrame.isMirrorHorizontal());
        }
        if (this.mIsVerticalMirror) {
            pixelFrame.setMirrorVertical(!pixelFrame.isMirrorVertical());
        }
        Rotation rotation = this.mRenderRotation;
        if (rotation == Rotation.ROTATION_90 || rotation == Rotation.ROTATION_270) {
            pixelFrame.swapWidthHeight();
        }
    }

    private void destroyTransformer() {
        c cVar = this.mVideoFrameConverter;
        if (cVar != null) {
            cVar.a(0, this);
            this.mVideoFrameConverter.a();
            this.mVideoFrameConverter = null;
        }
    }

    private void initTransformer() {
        if (this.mVideoFrameConverter == null) {
            c cVar = new c();
            this.mVideoFrameConverter = cVar;
            cVar.a(new a(this.mWidth, this.mHeight), this.mPixelBufferType, this.mPixelFormatType, 0, this);
            this.mVideoFrameConverter.a(this.mGLTexturePool);
        }
    }

    private void initializeEGL(int i9, int i10, Object obj) {
        if (this.mEGLCore != null) {
            return;
        }
        try {
            LiteavLog.i(this.mThrottlers.a("initGL"), TAG, "egl init %d*%d", Integer.valueOf(i9), Integer.valueOf(i10));
            com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
            this.mEGLCore = eVar;
            eVar.a(obj, null, i9, i10);
            this.mEGLCore.a();
        } catch (g e10) {
            LiteavLog.e(this.mThrottlers.a("initError"), TAG, "egl initialize failed.", e10);
            this.mEGLCore = null;
        }
        if (this.mEGLCore != null) {
            if (this.mPixelFrameRender == null) {
                this.mPixelFrameRender = new j(i9, i10);
            }
            this.mGLTexturePool = new e();
            initTransformer();
        }
    }

    private boolean isNeedRecreateEGL(@NonNull PixelFrame pixelFrame) {
        if (this.mEGLCore != null && pixelFrame.getWidth() == this.mWidth && pixelFrame.getHeight() == this.mHeight) {
            return (pixelFrame.getGLContext() == null || CommonUtil.equals(pixelFrame.getGLContext(), this.mEGLCore.f31724b)) ? false : true;
        }
        return true;
    }

    private native void nativeOnFrameConverted(long j10, PixelFrame pixelFrame);

    private void uninitializedEGL() {
        com.tencent.liteav.videobase.b.e eVar = this.mEGLCore;
        if (eVar == null) {
            return;
        }
        try {
            eVar.a();
        } catch (g e10) {
            LiteavLog.e(this.mThrottlers.a("make"), TAG, "uninitializedEGL makeCurrent error ".concat(String.valueOf(e10)), new Object[0]);
        }
        LiteavLog.i(this.mThrottlers.a("uninitGL"), TAG, "egl uninitializedEGL", new Object[0]);
        j jVar = this.mPixelFrameRender;
        if (jVar != null) {
            jVar.a();
            this.mPixelFrameRender = null;
        }
        e eVar2 = this.mGLTexturePool;
        if (eVar2 != null) {
            eVar2.a();
            this.mGLTexturePool.b();
            this.mGLTexturePool = null;
        }
        destroyTransformer();
        com.tencent.liteav.videobase.b.e.a(this.mEGLCore);
        this.mEGLCore = null;
    }

    @Override // com.tencent.liteav.videobase.videobase.c.a
    public void onFrameConverted(int i9, PixelFrame pixelFrame) {
        long j10 = this.mNativeHandler;
        if (j10 != 0) {
            nativeOnFrameConverted(j10, pixelFrame);
        }
    }

    public void release() {
        LiteavLog.i(TAG, "release");
        if (this.mNativeHandler == 0) {
            return;
        }
        this.mNativeHandler = 0L;
        uninitializedEGL();
    }

    public void renderFrame(PixelFrame pixelFrame) {
        PixelFrame pixelFrame2 = new PixelFrame(pixelFrame);
        applyRenderParams(pixelFrame2);
        if (isNeedRecreateEGL(pixelFrame2)) {
            if (this.mWidth != pixelFrame2.getWidth() || this.mHeight != pixelFrame2.getHeight()) {
                this.mWidth = pixelFrame2.getWidth();
                this.mHeight = pixelFrame2.getHeight();
            }
            uninitializedEGL();
            initializeEGL(this.mWidth, this.mHeight, pixelFrame2.getGLContext());
        }
        com.tencent.liteav.videobase.b.e eVar = this.mEGLCore;
        if (eVar == null) {
            return;
        }
        try {
            eVar.a();
        } catch (g e10) {
            LiteavLog.e(this.mThrottlers.a("make"), TAG, "customRenderFrame makeCurrent error ".concat(String.valueOf(e10)), new Object[0]);
        }
        d a10 = this.mGLTexturePool.a(this.mWidth, this.mHeight);
        j jVar = this.mPixelFrameRender;
        if (jVar != null) {
            jVar.a(pixelFrame2, GLConstants.GLScaleType.CENTER_CROP, a10);
        }
        c cVar = this.mVideoFrameConverter;
        if (cVar != null) {
            cVar.a(pixelFrame2.getTimestamp(), a10);
        }
        a10.release();
    }

    public void setHorizontalMirror(boolean z10) {
        if (this.mIsHorizontalMirror != z10) {
            LiteavLog.i(TAG, "setHorizontalMirror ".concat(String.valueOf(z10)));
        }
        this.mIsHorizontalMirror = z10;
    }

    public void setRenderRotation(Rotation rotation) {
        if (this.mRenderRotation != rotation) {
            LiteavLog.i(TAG, "setRenderRotation ".concat(String.valueOf(rotation)));
        }
        this.mRenderRotation = rotation;
    }

    public void setVerticalMirror(boolean z10) {
        if (this.mIsVerticalMirror != z10) {
            LiteavLog.i(TAG, "setVerticalMirror ".concat(String.valueOf(z10)));
        }
        this.mIsVerticalMirror = z10;
    }
}
