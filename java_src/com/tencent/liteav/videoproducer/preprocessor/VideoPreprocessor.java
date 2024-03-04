package com.tencent.liteav.videoproducer.preprocessor;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.utils.a;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
import com.tencent.liteav.videoproducer.preprocessor.BeautyProcessor;
import java.util.List;
import java.util.concurrent.CyclicBarrier;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class VideoPreprocessor implements BeautyProcessor.a {
    private static final String TAG = "VideoPreprocessor";
    private final com.tencent.liteav.videobase.utils.a mAverageCostCalculator;
    private final h mPreprocessor;
    private final IVideoReporter mVideoReporter;
    private CustomHandler mWorkHandler;
    private final CyclicBarrier mLoadFrameCyclicBarrier = new CyclicBarrier(2);
    private final SparseArray<com.tencent.liteav.videobase.videobase.a> mConvertParamsList = new SparseArray<>();
    private float mLookupMixLevel = 0.5f;
    private long mTotalFrameCount = 0;
    private long mLastProcessTimestamp = 0;
    private CaptureSourceInterface.SourceType mSourceType = CaptureSourceInterface.SourceType.NONE;

    public VideoPreprocessor(@NonNull Context context, @NonNull BeautyProcessor beautyProcessor, @NonNull IVideoReporter iVideoReporter) {
        this.mPreprocessor = new h(context, beautyProcessor, iVideoReporter);
        this.mVideoReporter = iVideoReporter;
        beautyProcessor.setBeautyManagerStatusListener(this);
        com.tencent.liteav.beauty.a.a(iVideoReporter);
        this.mAverageCostCalculator = new com.tencent.liteav.videobase.utils.a("preprocess", new a.InterfaceC0329a(this) { // from class: com.tencent.liteav.videoproducer.preprocessor.q

            /* renamed from: a  reason: collision with root package name */
            private final VideoPreprocessor f33104a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f33104a = this;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$processFrame$2(VideoPreprocessor videoPreprocessor, PixelFrame pixelFrame, long j10) {
        videoPreprocessor.mPreprocessor.a(pixelFrame, videoPreprocessor.mSourceType == CaptureSourceInterface.SourceType.SCREEN ? GLConstants.GLScaleType.FIT_CENTER : GLConstants.GLScaleType.CENTER_CROP);
        videoPreprocessor.mVideoReporter.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_PREPROCESS_TIME, Long.valueOf(SystemClock.elapsedRealtime() - j10));
        videoPreprocessor.reportProcessFrameRate();
        pixelFrame.release();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$registerVideoProcessedListener$3(VideoPreprocessor videoPreprocessor, int i9, com.tencent.liteav.videobase.videobase.a aVar, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType, boolean z10, ah ahVar) {
        videoPreprocessor.mPreprocessor.a(i9, aVar, pixelBufferType, pixelFormatType, z10, ahVar);
        videoPreprocessor.mConvertParamsList.put(i9, aVar);
        videoPreprocessor.recalculateProcessSizeInternal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setGaussianBlurLevel$12(VideoPreprocessor videoPreprocessor, float f10) {
        h hVar = videoPreprocessor.mPreprocessor;
        hVar.f33045b.a(l.a(hVar, f10 / 4.0f));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setGreenScreenParam$6(VideoPreprocessor videoPreprocessor, GLConstants.GLScaleType gLScaleType, boolean z10) {
        h hVar = videoPreprocessor.mPreprocessor;
        hVar.f33045b.a(p.a(hVar, gLScaleType, z10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setWatermarkList$11(VideoPreprocessor videoPreprocessor, List list) {
        h hVar = videoPreprocessor.mPreprocessor;
        hVar.f33045b.a(k.a(hVar, list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$unregisterVideoProcessedListener$4(VideoPreprocessor videoPreprocessor, int i9, ah ahVar) {
        videoPreprocessor.mPreprocessor.a(i9, ahVar);
        videoPreprocessor.mConvertParamsList.remove(i9);
        videoPreprocessor.recalculateProcessSizeInternal();
    }

    private void recalculateProcessSizeInternal() {
        if (this.mConvertParamsList.size() == 0) {
            return;
        }
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < this.mConvertParamsList.size(); i11++) {
            com.tencent.liteav.videobase.videobase.a valueAt = this.mConvertParamsList.valueAt(i11);
            Rotation rotation = valueAt.f31924c;
            boolean z10 = rotation == Rotation.ROTATION_90 || rotation == Rotation.ROTATION_270;
            int i12 = z10 ? valueAt.f31923b : valueAt.f31922a;
            int i13 = z10 ? valueAt.f31922a : valueAt.f31923b;
            if (i9 * i13 != i10 * i12) {
                LiteavLog.w(TAG, "video preprocessor has different w/h ratio: %dx%d vs %dx%d", Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf(i12), Integer.valueOf(i13));
            }
            if (i12 * i13 > i9 * i10) {
                i10 = i13;
                i9 = i12;
            }
        }
        this.mPreprocessor.a(i9, i10);
    }

    private void reportProcessFrameRate() {
        long j10;
        this.mTotalFrameCount++;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime > 2000 + this.mLastProcessTimestamp) {
            this.mVideoReporter.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_PREPROCESS_FPS_IN, Double.valueOf((this.mTotalFrameCount * 1000.0d) / (elapsedRealtime - j10)));
            this.mTotalFrameCount = 0L;
            this.mLastProcessTimestamp = elapsedRealtime;
        }
    }

    public BeautyProcessor getBeautyProcessor() {
        return this.mPreprocessor.f33046c;
    }

    public void initialize() {
        LiteavLog.i(TAG, "initialize");
        HandlerThread handlerThread = new HandlerThread("video-preprocessor");
        handlerThread.start();
        this.mWorkHandler = new CustomHandler(handlerThread.getLooper());
    }

    @Override // com.tencent.liteav.videoproducer.preprocessor.BeautyProcessor.a
    public void onBeautyStatsChanged(String str) {
        this.mVideoReporter.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_PREPROCESS_BEAUTY_SETTINGS, str);
    }

    public void postTaskToGlThread(Runnable runnable) {
        this.mWorkHandler.post(runnable);
    }

    public synchronized boolean processFrame(PixelFrame pixelFrame) {
        boolean post;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        pixelFrame.retain();
        post = this.mWorkHandler.post(aa.a(this, pixelFrame, elapsedRealtime));
        if (!post) {
            pixelFrame.release();
        }
        return post;
    }

    public void registerVideoProcessedListener(int i9, com.tencent.liteav.videobase.videobase.a aVar, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType, boolean z10, ah ahVar) {
        GLConstants.PixelBufferType pixelBufferType2 = GLConstants.PixelBufferType.TEXTURE_OES;
        if (pixelBufferType == GLConstants.PixelBufferType.TEXTURE_2D) {
            GLConstants.PixelFormatType pixelFormatType2 = GLConstants.PixelFormatType.RGBA;
        }
        this.mWorkHandler.post(ab.a(this, i9, aVar, pixelBufferType, pixelFormatType, z10, ahVar));
    }

    public void runTaskInGlThreadAndWaitDone(Runnable runnable) {
        this.mWorkHandler.a(runnable);
    }

    @CalledByNative
    public void setFilterGroupImages(float f10, Bitmap bitmap, float f11, Bitmap bitmap2, float f12) {
        postTaskToGlThread(r.a(this, f10, bitmap, f11, bitmap2, f12));
    }

    @CalledByNative
    public void setFilterMixLevel(float f10) {
        LiteavLog.i(TAG, "setFilterMixLevel: ".concat(String.valueOf(f10)));
        this.mLookupMixLevel = f10;
        this.mWorkHandler.post(af.a(this, f10));
    }

    public void setGaussianBlurLevel(float f10) {
        this.mWorkHandler.post(u.a(this, f10));
    }

    @CalledByNative
    public boolean setGreenScreenFile(String str, boolean z10) {
        if (LiteavSystemInfo.getSystemOSVersionInt() < 18) {
            return false;
        }
        LiteavLog.i(TAG, "setGreenScreenFile: path=" + str + ", isLoop=" + z10);
        this.mWorkHandler.post(ad.a(this, str, z10));
        return true;
    }

    public void setGreenScreenParam(GLConstants.GLScaleType gLScaleType, boolean z10) {
        this.mWorkHandler.post(ae.a(this, gLScaleType, z10));
    }

    public void setInterceptorBeforeWatermark(com.tencent.liteav.videobase.a.a aVar) {
        this.mWorkHandler.post(y.a(this, aVar));
    }

    @CalledByNative
    public void setLookupImage(Bitmap bitmap) {
        LiteavLog.i(TAG, "setLookupImage: ".concat(String.valueOf(bitmap)));
        this.mWorkHandler.post(ag.a(this, bitmap));
    }

    public void setSourceType(CaptureSourceInterface.SourceType sourceType) {
        this.mWorkHandler.post(z.a(this, sourceType));
    }

    public void setWatermark(Bitmap bitmap, float f10, float f11, float f12) {
        this.mWorkHandler.post(s.a(this, bitmap, f10, f11, f12));
    }

    public void setWatermarkList(List<com.tencent.liteav.beauty.b.o> list) {
        this.mWorkHandler.post(t.a(this, list));
    }

    public void uninitialize() {
        LiteavLog.i(TAG, "uninitialize");
        this.mAverageCostCalculator.a();
        CustomHandler customHandler = this.mWorkHandler;
        if (customHandler != null) {
            h hVar = this.mPreprocessor;
            hVar.getClass();
            customHandler.post(w.a(hVar));
            customHandler.a();
        }
    }

    public void uninitializeGLComponents() {
        CustomHandler customHandler = this.mWorkHandler;
        h hVar = this.mPreprocessor;
        hVar.getClass();
        customHandler.post(x.a(hVar));
    }

    public void unregisterVideoProcessedListener(int i9, ah ahVar) {
        this.mWorkHandler.post(ac.a(this, i9, ahVar));
    }

    public void updateHomeOrientation(int i9) {
        this.mWorkHandler.post(v.a(this, i9));
    }
}
