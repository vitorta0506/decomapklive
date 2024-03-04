package com.tencent.ugc;

import android.graphics.Bitmap;
import android.os.HandlerThread;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.ugc.TXVideoEditer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
public class UGCThumbnailGenerator {
    private com.tencent.liteav.videobase.frame.e mGLTexturePool;
    private CustomHandler mHandler;
    private boolean mIsInitialized;
    private com.tencent.liteav.videobase.frame.j mPixelFrameRender;
    private UGCThumbnailGenerateParams mThumbnailGenerateInfo;
    private TXVideoEditer.TXThumbnailListener mThumbnailListener;
    private final com.tencent.liteav.base.b.b mThrottlers = new com.tencent.liteav.base.b.b();
    private String mTag = "ThumbnailGenerator_";
    private int mGenerateIndex = 0;
    private com.tencent.liteav.videobase.b.e mEGLCore = null;
    private final com.tencent.liteav.videobase.frame.c mGLFrameBuffer = new com.tencent.liteav.videobase.frame.c();
    private Object mSharedContext = null;
    private final UGCMediaListSource mMediaListSource = new UGCMediaListSource();

    /* loaded from: classes4.dex */
    public static class UGCThumbnailGenerateParams {
        boolean fast;
        int height;
        int thumbnailCount;
        List<Long> thumbnailPtsList;
        int width;
    }

    public UGCThumbnailGenerator() {
        this.mTag += hashCode();
    }

    public static List<Long> calculateThumbnailList(int i9, long j10, long j11, long j12) {
        if (j12 >= 0 && i9 != 0) {
            LiteavLog.i("calculateThumbnailList", "calculateThumbnailList startTimeMs : " + j10 + ", endTimeMs : " + j11 + "  duration:" + j12);
            long min = Math.min(j11, j12);
            ArrayList arrayList = new ArrayList();
            long j13 = min - j10;
            if (j13 > 0) {
                j12 = j13;
            }
            long j14 = j12 / i9;
            for (int i10 = 0; i10 < i9; i10++) {
                long j15 = (i10 * j14) + j10;
                if (min > 0) {
                    j15 = Math.min(j15, min);
                }
                arrayList.add(Long.valueOf(j15));
            }
            return arrayList;
        }
        LiteavLog.w("calculateThumbnailList", "param error: duration= " + j12 + ",count= " + i9);
        return null;
    }

    private Bitmap getBitmapFromTexture(com.tencent.liteav.videobase.frame.d dVar) {
        this.mGLFrameBuffer.a(dVar.a());
        this.mGLFrameBuffer.b();
        UGCThumbnailGenerateParams uGCThumbnailGenerateParams = this.mThumbnailGenerateInfo;
        ByteBuffer order = ByteBuffer.allocateDirect(uGCThumbnailGenerateParams.width * uGCThumbnailGenerateParams.height * 4).order(ByteOrder.nativeOrder());
        order.position(0);
        UGCThumbnailGenerateParams uGCThumbnailGenerateParams2 = this.mThumbnailGenerateInfo;
        OpenGlUtils.readPixels(0, 0, uGCThumbnailGenerateParams2.width, uGCThumbnailGenerateParams2.height, order);
        order.position(0);
        UGCThumbnailGenerateParams uGCThumbnailGenerateParams3 = this.mThumbnailGenerateInfo;
        Bitmap createBitmap = Bitmap.createBitmap(uGCThumbnailGenerateParams3.width, uGCThumbnailGenerateParams3.height, Bitmap.Config.ARGB_8888);
        createBitmap.copyPixelsFromBuffer(order);
        OpenGlUtils.bindFramebuffer(36160, 0);
        this.mGLFrameBuffer.c();
        return createBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getNextThumbnail() {
        List<Long> list;
        com.tencent.liteav.videobase.frame.e eVar;
        UGCThumbnailGenerateParams uGCThumbnailGenerateParams = this.mThumbnailGenerateInfo;
        if (uGCThumbnailGenerateParams != null && (list = uGCThumbnailGenerateParams.thumbnailPtsList) != null) {
            int size = list.size();
            int i9 = this.mGenerateIndex;
            if (size > i9) {
                List<Long> list2 = this.mThumbnailGenerateInfo.thumbnailPtsList;
                this.mGenerateIndex = i9 + 1;
                long longValue = list2.get(i9).longValue();
                if (this.mThumbnailGenerateInfo.fast) {
                    this.mMediaListSource.impreciseSeekTo(longValue);
                } else {
                    this.mMediaListSource.seekTo(longValue);
                }
                List<PixelFrame> readNextVideoFrame = this.mMediaListSource.readNextVideoFrame();
                if (!com.tencent.liteav.videobase.utils.c.a(readNextVideoFrame) && readNextVideoFrame.get(0) != null) {
                    PixelFrame pixelFrame = readNextVideoFrame.get(0);
                    if (this.mEGLCore == null || !CommonUtil.equals(this.mSharedContext, pixelFrame.getGLContext())) {
                        uninitOpenGLComponents();
                        Object gLContext = pixelFrame.getGLContext();
                        UGCThumbnailGenerateParams uGCThumbnailGenerateParams2 = this.mThumbnailGenerateInfo;
                        initOpenGLComponents(gLContext, uGCThumbnailGenerateParams2.width, uGCThumbnailGenerateParams2.height);
                    }
                    if (this.mEGLCore != null && (eVar = this.mGLTexturePool) != null) {
                        UGCThumbnailGenerateParams uGCThumbnailGenerateParams3 = this.mThumbnailGenerateInfo;
                        com.tencent.liteav.videobase.frame.d a10 = eVar.a(uGCThumbnailGenerateParams3.width, uGCThumbnailGenerateParams3.height);
                        this.mPixelFrameRender.a(pixelFrame, GLConstants.GLScaleType.CENTER_CROP, a10);
                        Bitmap bitmapFromTexture = getBitmapFromTexture(a10);
                        TXVideoEditer.TXThumbnailListener tXThumbnailListener = this.mThumbnailListener;
                        if (tXThumbnailListener != null) {
                            tXThumbnailListener.onThumbnail(this.mGenerateIndex, longValue, bitmapFromTexture);
                        }
                        a10.release();
                        pixelFrame.release();
                        if (list2.size() > this.mGenerateIndex) {
                            this.mHandler.post(fp.a(this));
                            return;
                        }
                        return;
                    }
                    LiteavLog.e(this.mThrottlers.a("NoEGLCore"), this.mTag, "EGLCore or GLTexturePool is null", new Object[0]);
                    pixelFrame.release();
                    return;
                }
                LiteavLog.i(this.mTag, "readNextVideoFrame return null.");
                return;
            }
        }
        String str = this.mTag;
        LiteavLog.i(str, "generate runnable: mThumbnailGenerateInfo= " + this.mThumbnailGenerateInfo + " mGenerateIndex = " + this.mGenerateIndex);
    }

    private void initOpenGLComponents(Object obj, int i9, int i10) {
        LiteavLog.i(this.mThrottlers.a("initGL"), this.mTag, "initOpenGLComponents ".concat(String.valueOf(obj)), new Object[0]);
        if (this.mEGLCore != null) {
            return;
        }
        com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
        this.mEGLCore = eVar;
        try {
            eVar.a(obj, null, 128, 128);
            this.mGLTexturePool = new com.tencent.liteav.videobase.frame.e();
            this.mPixelFrameRender = new com.tencent.liteav.videobase.frame.j(i9, i10);
            this.mGLFrameBuffer.a();
            this.mSharedContext = obj;
        } catch (com.tencent.liteav.videobase.b.g e10) {
            this.mEGLCore = null;
            LiteavLog.e(this.mThrottlers.a("initGLError"), this.mTag, "EGLCore create failed.", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setVideoSourceList$1(UGCThumbnailGenerator uGCThumbnailGenerator, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            LiteavLog.i(uGCThumbnailGenerator.mTag, "setVideoSourceList ".concat(String.valueOf((String) it.next())));
        }
        uGCThumbnailGenerator.mMediaListSource.setVideoSources(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$start$3(UGCThumbnailGenerator uGCThumbnailGenerator, UGCThumbnailGenerateParams uGCThumbnailGenerateParams, TXVideoEditer.TXThumbnailListener tXThumbnailListener) {
        if (uGCThumbnailGenerateParams != null && !com.tencent.liteav.videobase.utils.c.a(uGCThumbnailGenerateParams.thumbnailPtsList)) {
            String str = uGCThumbnailGenerator.mTag;
            LiteavLog.i(str, "start width = " + uGCThumbnailGenerateParams.width + " height = " + uGCThumbnailGenerateParams.height);
            uGCThumbnailGenerator.mGenerateIndex = 0;
            uGCThumbnailGenerator.mThumbnailGenerateInfo = uGCThumbnailGenerateParams;
            uGCThumbnailGenerator.mThumbnailListener = tXThumbnailListener;
            uGCThumbnailGenerator.getNextThumbnail();
            return;
        }
        LiteavLog.w(uGCThumbnailGenerator.mTag, "start param error!");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$stop$4(UGCThumbnailGenerator uGCThumbnailGenerator) {
        LiteavLog.i(uGCThumbnailGenerator.mTag, "stop");
        uGCThumbnailGenerator.mThumbnailGenerateInfo = null;
        uGCThumbnailGenerator.mThumbnailListener = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$uninitialize$0(UGCThumbnailGenerator uGCThumbnailGenerator) {
        LiteavLog.i(uGCThumbnailGenerator.mTag, "unInitialize");
        uGCThumbnailGenerator.uninitOpenGLComponents();
        synchronized (uGCThumbnailGenerator) {
            if (!uGCThumbnailGenerator.mIsInitialized) {
                LiteavLog.w(uGCThumbnailGenerator.mTag, "already uninitialize.");
                return;
            }
            CustomHandler customHandler = uGCThumbnailGenerator.mHandler;
            uGCThumbnailGenerator.mHandler = null;
            uGCThumbnailGenerator.mIsInitialized = false;
            uGCThumbnailGenerator.mMediaListSource.uninitialize();
            if (customHandler != null) {
                customHandler.a();
            }
        }
    }

    private boolean runOnThumbnailThread(Runnable runnable) {
        CustomHandler customHandler = this.mHandler;
        if (!this.mIsInitialized || customHandler == null) {
            return false;
        }
        return customHandler.a(runnable, 0);
    }

    private void uninitOpenGLComponents() {
        if (this.mEGLCore == null) {
            return;
        }
        LiteavLog.i(this.mThrottlers.a("uninitGL"), this.mTag, "uninitOpenGLComponents", new Object[0]);
        this.mEGLCore.b();
        com.tencent.liteav.videobase.frame.e eVar = this.mGLTexturePool;
        if (eVar != null) {
            eVar.b();
            this.mGLTexturePool = null;
        }
        com.tencent.liteav.videobase.frame.j jVar = this.mPixelFrameRender;
        if (jVar != null) {
            jVar.a();
            this.mPixelFrameRender = null;
        }
        this.mGLFrameBuffer.d();
        com.tencent.liteav.videobase.b.e.a(this.mEGLCore);
        this.mEGLCore = null;
    }

    public void initialize() {
        LiteavLog.i(this.mTag, "initialize");
        synchronized (this) {
            if (this.mIsInitialized) {
                LiteavLog.w(this.mTag, "already initialized.");
                return;
            }
            HandlerThread handlerThread = new HandlerThread("thumbnailG_" + hashCode());
            handlerThread.start();
            this.mHandler = new CustomHandler(handlerThread.getLooper());
            this.mIsInitialized = true;
            UGCMediaListSource uGCMediaListSource = this.mMediaListSource;
            uGCMediaListSource.getClass();
            runOnThumbnailThread(fk.a(uGCMediaListSource));
        }
    }

    public void setVideoSourceList(List<String> list) {
        runOnThumbnailThread(fm.a(this, list));
    }

    public void setVideoSourceRange(long j10, long j11) {
        runOnThumbnailThread(fn.a(this, j10, j11));
    }

    public void start(UGCThumbnailGenerateParams uGCThumbnailGenerateParams, TXVideoEditer.TXThumbnailListener tXThumbnailListener) {
        runOnThumbnailThread(fo.a(this, uGCThumbnailGenerateParams, tXThumbnailListener));
    }

    public void stop() {
        runOnThumbnailThread(fq.a(this));
    }

    public void uninitialize() {
        runOnThumbnailThread(fl.a(this));
    }
}
