package com.tencent.ugc;

import android.graphics.Bitmap;
import android.os.HandlerThread;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.ugc.UGCFrameQueue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class UGCImageProvider implements UGCFrameQueue.UGCFrameQueueListener, UGCPixelFrameProvider {
    private static final int MAX_FRAME_SIZE = 5;
    private static final String TAG = "UGCImageProvider";
    private final List<Bitmap> mBitmapList;
    private FutureTask<Long> mDurationFuture;
    private long mDurationMs;
    private com.tencent.liteav.videobase.b.e mEGLCore;
    private final int mFps;
    private final int mFrameIntervalMs;
    private final UGCFrameQueue<List<PixelFrame>> mFrameQueue;
    private final Map<Bitmap, com.tencent.liteav.videobase.frame.d> mGLTextureMap;
    private com.tencent.liteav.videobase.frame.e mGLTexturePool;
    private int mTotalFrameCount;
    private CustomHandler mWorkHandler;
    private final com.tencent.liteav.base.b.b mThrottlers = new com.tencent.liteav.base.b.b();
    private int mCurrentFrameCount = 0;
    private long mStayDurationMs = 1000;
    private long mMotionDurationMs = 500;
    private int mTransitionType = 1;

    public UGCImageProvider(List<Bitmap> list, int i9) {
        LiteavLog.i(TAG, TAG);
        i9 = i9 <= 0 ? 20 : i9;
        this.mFps = i9;
        this.mFrameIntervalMs = 1000 / i9;
        this.mFrameQueue = new UGCFrameQueue<>();
        this.mGLTextureMap = new HashMap();
        this.mBitmapList = list;
    }

    private int clamp(int i9, int i10, int i11) {
        return i9 < i10 ? i10 : i9 > i11 ? i11 : i9;
    }

    private void clearGLTextureCache() {
        for (com.tencent.liteav.videobase.frame.d dVar : this.mGLTextureMap.values()) {
            if (dVar != null) {
                dVar.release();
            }
        }
        this.mGLTextureMap.clear();
    }

    private void clearPixelFrameQueue() {
        for (List<PixelFrame> list : this.mFrameQueue.dequeueAll()) {
            if (list != null) {
                for (PixelFrame pixelFrame : list) {
                    pixelFrame.release();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void decodeBitmapFrame() {
        if (this.mEGLCore == null || this.mFrameQueue.size() > 5) {
            return;
        }
        if (this.mCurrentFrameCount >= this.mTotalFrameCount) {
            this.mFrameQueue.queue(UGCPixelFrameProvider.END_OF_STREAM);
            return;
        }
        ArrayList arrayList = new ArrayList();
        int i9 = this.mCurrentFrameCount;
        long j10 = i9 * this.mFrameIntervalMs;
        this.mCurrentFrameCount = i9 + 1;
        int clamp = clamp((int) (j10 / (this.mStayDurationMs + this.mMotionDurationMs)), 0, this.mBitmapList.size() - 1);
        arrayList.add(loadBitmapToPixelFrame(this.mBitmapList.get(clamp), j10));
        arrayList.add(loadBitmapToPixelFrame(this.mBitmapList.get(clamp(clamp + 1, 0, this.mBitmapList.size() - 1)), j10));
        this.mFrameQueue.queue(arrayList);
        CustomHandler customHandler = this.mWorkHandler;
        if (customHandler != null) {
            customHandler.removeCallbacks(cu.a(this));
            customHandler.post(cv.a(this));
        }
    }

    private void initializeGLComponents() {
        com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
        this.mEGLCore = eVar;
        try {
            eVar.a(com.tencent.liteav.videoproducer.capture.ay.a().b(), null, 128, 128);
            this.mEGLCore.a();
            this.mGLTexturePool = new com.tencent.liteav.videobase.frame.e();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.mThrottlers.a("initGL"), TAG, "create EGLCore failed.", e10);
            this.mEGLCore = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$initialize$0(UGCImageProvider uGCImageProvider) {
        uGCImageProvider.mFrameQueue.setUGCFrameQueueListener(uGCImageProvider);
        uGCImageProvider.initializeGLComponents();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$seekTo$4(UGCImageProvider uGCImageProvider, long j10) {
        uGCImageProvider.mCurrentFrameCount = (((int) (j10 - 1)) / uGCImageProvider.mFrameIntervalMs) + 1;
        uGCImageProvider.clearPixelFrameQueue();
        uGCImageProvider.runOnWorkThread(cm.a(uGCImageProvider));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Long lambda$setPictureTransition$5(UGCImageProvider uGCImageProvider, int i9) throws Exception {
        uGCImageProvider.setPictureTransitionInternal(i9);
        return Long.valueOf(uGCImageProvider.mDurationMs);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$start$2(UGCImageProvider uGCImageProvider) {
        uGCImageProvider.setPictureTransitionInternal(uGCImageProvider.mTransitionType);
        uGCImageProvider.decodeBitmapFrame();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$stop$3(UGCImageProvider uGCImageProvider) {
        CustomHandler customHandler = uGCImageProvider.mWorkHandler;
        if (customHandler != null) {
            customHandler.removeCallbacks(cn.a(uGCImageProvider));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$uninitialize$1(UGCImageProvider uGCImageProvider) {
        uGCImageProvider.clearPixelFrameQueue();
        uGCImageProvider.clearGLTextureCache();
        uGCImageProvider.uninitGLComponents();
        uGCImageProvider.mFrameQueue.setUGCFrameQueueListener(null);
        CustomHandler customHandler = uGCImageProvider.mWorkHandler;
        if (customHandler != null) {
            customHandler.a();
            uGCImageProvider.mWorkHandler = null;
        }
    }

    private PixelFrame loadBitmapToPixelFrame(Bitmap bitmap, long j10) {
        com.tencent.liteav.videobase.frame.d dVar;
        try {
            com.tencent.liteav.videobase.b.e eVar = this.mEGLCore;
            if (eVar != null) {
                eVar.a();
            }
        } catch (Exception e10) {
            LiteavLog.e(this.mThrottlers.a("make_current_fail"), TAG, "loadBitmapToPixelFrame makeCurrent fail".concat(String.valueOf(e10)), new Object[0]);
        }
        if (!this.mGLTextureMap.containsKey(bitmap)) {
            dVar = this.mGLTexturePool.a(bitmap.getWidth(), bitmap.getHeight());
            OpenGlUtils.loadTexture(bitmap, dVar.a(), false);
            this.mGLTextureMap.put(bitmap, dVar);
        } else {
            dVar = this.mGLTextureMap.get(bitmap);
        }
        PixelFrame a10 = dVar.a(com.tencent.liteav.videoproducer.capture.ay.a().b());
        a10.setTimestamp(j10);
        return a10;
    }

    private boolean runOnWorkThread(Runnable runnable) {
        CustomHandler customHandler = this.mWorkHandler;
        if (customHandler != null) {
            return customHandler.a(runnable, 0);
        }
        return false;
    }

    private void setPictureTransitionInternal(int i9) {
        this.mTransitionType = i9;
        this.mStayDurationMs = UGCTransitionRules.getStayDurationMs(i9);
        this.mMotionDurationMs = UGCTransitionRules.getMotionDurationMs(i9);
        List<Bitmap> list = this.mBitmapList;
        if (list == null) {
            return;
        }
        if (i9 != 5 && i9 != 4) {
            long j10 = this.mStayDurationMs;
            long j11 = this.mMotionDurationMs;
            this.mDurationMs = (list.size() * (j10 + j11)) - j11;
        } else {
            this.mDurationMs = list.size() * (this.mStayDurationMs + this.mMotionDurationMs);
        }
        this.mTotalFrameCount = (int) ((this.mDurationMs / 1000) * this.mFps);
    }

    private void uninitGLComponents() {
        if (this.mEGLCore == null) {
            return;
        }
        try {
            com.tencent.liteav.videobase.frame.e eVar = this.mGLTexturePool;
            if (eVar != null) {
                eVar.a();
                this.mGLTexturePool.b();
                this.mGLTexturePool = null;
            }
            this.mEGLCore.a();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.mThrottlers.a("uninitGL"), TAG, "EGLCore destroy failed.", e10);
        }
        com.tencent.liteav.videobase.b.e.a(this.mEGLCore);
        this.mEGLCore = null;
    }

    public long getDuration() {
        if (this.mDurationFuture == null) {
            return 0L;
        }
        Long l10 = 0L;
        try {
            l10 = this.mDurationFuture.get(500L, TimeUnit.MILLISECONDS);
        } catch (Exception e10) {
            LiteavLog.w(TAG, "getDuration future task exception: ".concat(String.valueOf(e10)));
        }
        return l10.longValue();
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public UGCFrameQueue<List<PixelFrame>> getFrameQueue() {
        return this.mFrameQueue;
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void initialize() {
        LiteavLog.i(TAG, "initialize");
        synchronized (this) {
            if (this.mWorkHandler != null) {
                LiteavLog.w(TAG, "UGCPixelFrameProvider is initialized");
                return;
            }
            HandlerThread handlerThread = new HandlerThread("ugc-image-frame-provider");
            handlerThread.start();
            this.mWorkHandler = new CustomHandler(handlerThread.getLooper());
            runOnWorkThread(cl.a(this));
        }
    }

    @Override // com.tencent.ugc.UGCFrameQueue.UGCFrameQueueListener
    public void onFrameDequeued() {
        runOnWorkThread(ct.a(this));
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void seekTo(long j10, boolean z10) {
        runOnWorkThread(cr.a(this, j10));
    }

    public void setPictureTransition(int i9) {
        LiteavLog.i(TAG, "setPictureTransition type = ".concat(String.valueOf(i9)));
        FutureTask<Long> futureTask = new FutureTask<>(cs.a(this, i9));
        this.mDurationFuture = futureTask;
        runOnWorkThread(futureTask);
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void setPlayEndPts(long j10) {
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void setReverse(boolean z10) {
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void start() {
        Log.i(TAG, "Start", new Object[0]);
        runOnWorkThread(cp.a(this));
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void stop() {
        LiteavLog.i(TAG, "stop");
        runOnWorkThread(cq.a(this));
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void uninitialize() {
        LiteavLog.i(TAG, "unInitialize");
        runOnWorkThread(co.a(this));
    }
}
