package com.tencent.liteav.videoproducer.capture;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.opengl.GLES20;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.TimeUtil;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class VirtualCameraPixelFrameCreator {
    private com.tencent.liteav.videobase.b.e mEGLCore;
    private com.tencent.liteav.videobase.frame.e mGLTexturePool;
    private final String mTAG = "VirtualCameraPixelFrameCreator_" + hashCode();
    private final com.tencent.liteav.base.b.b mThrottlers = new com.tencent.liteav.base.b.b();

    @CalledByNative
    public VirtualCameraPixelFrameCreator(Object obj) {
        initGLComponents(obj);
    }

    private void initGLComponents(Object obj) {
        LiteavLog.i(this.mTAG, "initGLComponents");
        com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
        this.mEGLCore = eVar;
        try {
            eVar.a(obj, null, 128, 128);
            this.mEGLCore.a();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.mTAG, "initializeEGL failed.", e10);
            this.mEGLCore = null;
        }
        if (this.mEGLCore != null) {
            this.mGLTexturePool = new com.tencent.liteav.videobase.frame.e();
        }
    }

    private boolean makeCurrent() {
        com.tencent.liteav.videobase.b.e eVar = this.mEGLCore;
        if (eVar == null) {
            return false;
        }
        try {
            eVar.a();
            return true;
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.mThrottlers.a("makeCurrent"), this.mTAG, "EGLCore make current failed.", e10);
            return false;
        }
    }

    @CalledByNative
    private void release() {
        uninitGLComponents();
    }

    private void uninitGLComponents() {
        LiteavLog.i(this.mTAG, "uninitGLComponents");
        if (this.mEGLCore == null) {
            return;
        }
        makeCurrent();
        com.tencent.liteav.videobase.frame.e eVar = this.mGLTexturePool;
        if (eVar != null) {
            eVar.b();
            this.mGLTexturePool = null;
        }
        com.tencent.liteav.videobase.b.e.a(this.mEGLCore);
        this.mEGLCore = null;
    }

    @CalledByNative
    public PixelFrame createPixelFrame(Bitmap bitmap, int i9, int i10) {
        if (makeCurrent()) {
            if (bitmap == null) {
                com.tencent.liteav.base.b.a a10 = this.mThrottlers.a("Bitmap.createBitmap");
                String str = this.mTAG;
                LiteavLog.i(a10, str, "bitmap is null. input size=" + i9 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i10, new Object[0]);
                bitmap = Bitmap.createBitmap(Math.max((i9 / 2) * 2, 2), Math.max((i10 / 2) * 2, 2), Bitmap.Config.ARGB_8888);
                new Canvas(bitmap).drawARGB(255, 0, 0, 0);
            } else if (bitmap.getWidth() % 2 == 1 || bitmap.getHeight() % 2 == 1) {
                com.tencent.liteav.base.b.a a11 = this.mThrottlers.a("Bitmap.createBitmap");
                String str2 = this.mTAG;
                LiteavLog.i(a11, str2, "original bitmap:" + bitmap.getWidth() + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + bitmap.getHeight(), new Object[0]);
                Bitmap createBitmap = Bitmap.createBitmap(Math.max((bitmap.getWidth() / 2) * 2, 2), Math.max((bitmap.getHeight() / 2) * 2, 2), bitmap.getConfig());
                Canvas canvas = new Canvas(createBitmap);
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
                bitmap = createBitmap;
            }
            com.tencent.liteav.base.b.a a12 = this.mThrottlers.a("createPixelFrame");
            String str3 = this.mTAG;
            LiteavLog.i(a12, str3, "createPixelFrame,bitmap:" + bitmap.getWidth() + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + bitmap.getHeight(), new Object[0]);
            com.tencent.liteav.videobase.frame.d a13 = this.mGLTexturePool.a(bitmap.getWidth(), bitmap.getHeight());
            OpenGlUtils.loadTexture(bitmap, a13.a(), false);
            PixelFrame a14 = a13.a(this.mEGLCore.d());
            a14.setTimestamp(TimeUtil.c());
            a13.release();
            GLES20.glFinish();
            return a14;
        }
        return null;
    }

    @CalledByNative
    public void releasePixelFrame(PixelFrame pixelFrame) {
        LiteavLog.i(this.mThrottlers.a("releasePixelFrame"), this.mTAG, "releasePixelFrame", new Object[0]);
        if (pixelFrame == null) {
            return;
        }
        makeCurrent();
        pixelFrame.release();
    }
}
