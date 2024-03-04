package com.tencent.ugc;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videobase.videobase.h;
import com.tencent.liteav.videoconsumer.renderer.VideoRenderListener;
import com.tencent.liteav.videoproducer.encoder.VideoEncodeParams;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.liteav.videoproducer.producer.VideoProducerDef;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.TXVideoEditer;
import com.tencent.ugc.UGCAVSyncer;
import com.tencent.ugc.datereport.UGCDataReport;
import com.tencent.ugc.videoprocessor.SpeedProcessor;
import com.tencent.ugc.videoprocessor.VideoEffectProcessor;
import com.tencent.ugc.videoprocessor.VideoProcessManager;
import com.tencent.ugc.videoprocessor.VideoTransitionProcessor;
import com.tencent.ugc.videoprocessor.WatermarkProcessor;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4.dex */
public class UGCVideoProcessor {
    private static final int MSG_FORCE_PROCESS = 105;
    private static final int MSG_PAUSE = 102;
    private static final int MSG_PROCESS_FROM_SOURCE = 101;
    private static final int MSG_REFRESH = 104;
    private static final int MSG_START = 100;
    private static final int MSG_STOP = 103;
    private static final String TAG = "UGCVideoProcessor";
    private DisplayTarget mDisplayTarget;
    private com.tencent.liteav.videobase.b.e mEGLCore;
    private com.tencent.liteav.videobase.frame.e mGLTexturePool;
    private boolean mInvalidate;
    private PixelFrame mLastRenderFrame;
    private com.tencent.liteav.videobase.frame.j mPreScaleRenderer;
    private List<TXVideoEditConstants.TXAbsoluteRect> mRectList;
    private HandlerThread mRenderThread;
    private com.tencent.liteav.videoconsumer.renderer.p mRenderer;
    private IVideoReporter mReporter;
    private SpeedProcessor mSpeedProcessor;
    private a mStatus;
    private TXVideoEditer.TXVideoCustomProcessListener mTXVideoCustomProcessListener;
    private final UGCAVSyncer mUGCAVSyncer;
    private UGCCombineProcessor mUGCCombineProcessor;
    private UGCMediaListSource mUGCMediaListSource;
    private UGCTransitionProcessor mUGCTransitionProcessor;
    private com.tencent.liteav.videoproducer.encoder.ah mVideoEncodeController;
    private VideoEncodeParams mVideoEncodeParams;
    private VideoEncodedFrameListener mVideoEncodedFrameListener;
    private CustomHandler mVideoProcessHandler;
    private VideoProcessListener mVideoProcessListener;
    private VideoProcessManager mVideoProcessManager;
    private final com.tencent.liteav.base.b.b mThrottlers = new com.tencent.liteav.base.b.b();
    private boolean mIsInit = false;
    private int mTransitionType = -1;
    private long mFinalPts = -1;
    private GLConstants.GLScaleType mScaleType = GLConstants.GLScaleType.FIT_CENTER;
    private Rotation mRotation = Rotation.NORMAL;
    private boolean mIsRecord = false;
    private Object mCurEGLContext = null;
    private int mCurEGLWidth = -1;
    private int mCurEGLHeight = -1;
    private int mOutputWidth = -1;
    private int mOutputHeight = -1;
    private AtomicReference<Long> mTargetSeekPts = new AtomicReference<>();
    private final long MIN_SEEK_DIR = 100;
    private long mLastProgressedFrame = -1;
    private VideoRenderListener mVideoRenderListener = new AnonymousClass1();
    private com.tencent.liteav.videoproducer.preprocessor.ah mVideoPreprocessorListener = new AnonymousClass2();
    private VideoEncoderDef.VideoEncoderDataListener mVideoEncoderDataListener = new AnonymousClass3();
    private VideoProcessManager.IVideoProcessorListener mEffectProcessorListener = new AnonymousClass4();
    private Runnable onCompleteBroadcastRunnable = fr.a(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.ugc.UGCVideoProcessor$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass1 implements VideoRenderListener {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(AnonymousClass1 anonymousClass1, int i9, int i10) {
            if (UGCVideoProcessor.this.mVideoProcessManager != null) {
                UGCVideoProcessor.this.mVideoProcessManager.setOutputSize(i9, i10);
            }
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onFocusAtPoint(int i9, int i10, int i11, int i12) {
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onRenderFirstFrameOnView(int i9, int i10) {
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onRenderFrame(PixelFrame pixelFrame) {
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onRenderTargetSizeChanged(int i9, int i10) {
            LiteavLog.i(UGCVideoProcessor.TAG, "onRenderSizeChange " + i9 + "," + i10);
            UGCVideoProcessor.this.runOnVideoProcessHandler(gj.a(this, i9, i10));
        }

        @Override // com.tencent.liteav.videoconsumer.renderer.VideoRenderListener
        public final void onZoom(float f10) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.ugc.UGCVideoProcessor$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass2 implements com.tencent.liteav.videoproducer.preprocessor.ah {
        AnonymousClass2() {
        }

        @Override // com.tencent.liteav.videoproducer.preprocessor.ah
        public final void didProcessFrame(int i9, PixelFrame pixelFrame) {
            if (UGCVideoProcessor.this.filtInvalidatedFrame(pixelFrame.getTimestamp())) {
                return;
            }
            pixelFrame.retain();
            if (pixelFrame.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_2D || pixelFrame.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_OES) {
                GLES20.glFinish();
            }
            if (UGCVideoProcessor.this.runOnVideoProcessHandler(gk.a(this, pixelFrame))) {
                return;
            }
            pixelFrame.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.ugc.UGCVideoProcessor$3  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass3 implements VideoEncoderDef.VideoEncoderDataListener {
        AnonymousClass3() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(AnonymousClass3 anonymousClass3, EncodedVideoFrame encodedVideoFrame) {
            if (UGCVideoProcessor.this.mVideoEncodedFrameListener == null) {
                return;
            }
            if (encodedVideoFrame != null) {
                UGCVideoProcessor.this.mVideoEncodedFrameListener.onVideoFrameEncoded(encodedVideoFrame);
                if (encodedVideoFrame.pts != UGCVideoProcessor.this.mFinalPts) {
                    return;
                }
            }
            UGCVideoProcessor.this.mVideoEncodedFrameListener.onVideoEncodingCompleted();
            UGCVideoProcessor.this.stopEncoder();
        }

        @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
        public final void onEncodedFail(h.a aVar) {
            LiteavLog.e(UGCVideoProcessor.TAG, "onEncodedFail: ");
            TXVideoEditConstants.TXGenerateResult tXGenerateResult = new TXVideoEditConstants.TXGenerateResult();
            tXGenerateResult.retCode = aVar.ordinal();
            tXGenerateResult.descMsg = aVar.name();
            UGCVideoProcessor.this.mVideoProcessListener.onComplete(tXGenerateResult);
        }

        @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
        public final void onEncodedNAL(EncodedVideoFrame encodedVideoFrame, boolean z10) {
            UGCVideoProcessor.this.runOnVideoProcessHandler(gl.a(this, encodedVideoFrame));
        }

        @Override // com.tencent.liteav.videoproducer.encoder.VideoEncoderDef.VideoEncoderDataListener
        public final void onOutputFormatChanged(MediaFormat mediaFormat) {
            LiteavLog.i(UGCVideoProcessor.TAG, "onOutputFormatChanged: ".concat(String.valueOf(mediaFormat)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.ugc.UGCVideoProcessor$4  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass4 implements VideoProcessManager.IVideoProcessorListener {
        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(AnonymousClass4 anonymousClass4, PixelFrame pixelFrame) {
            UGCVideoProcessor.this.handleProcessFrame(pixelFrame);
            pixelFrame.release();
        }

        @Override // com.tencent.ugc.videoprocessor.VideoProcessManager.IVideoProcessorListener
        public final int customProcessFrame(PixelFrame pixelFrame) {
            if (UGCVideoProcessor.this.mTXVideoCustomProcessListener == null || pixelFrame == null) {
                return -1;
            }
            if (pixelFrame.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_2D || pixelFrame.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_OES) {
                GLES20.glFinish();
            }
            return UGCVideoProcessor.this.mTXVideoCustomProcessListener.onTextureCustomProcess(pixelFrame.getTextureId(), pixelFrame.getWidth(), pixelFrame.getHeight(), pixelFrame.getTimestamp());
        }

        @Override // com.tencent.ugc.videoprocessor.VideoProcessManager.IVideoProcessorListener
        public final void didProcessFrame(PixelFrame pixelFrame) {
            if (UGCVideoProcessor.this.filtInvalidatedFrame(pixelFrame.getTimestamp())) {
                return;
            }
            pixelFrame.retain();
            if (pixelFrame.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_2D || pixelFrame.getPixelBufferType() == GLConstants.PixelBufferType.TEXTURE_OES) {
                GLES20.glFinish();
            }
            if (UGCVideoProcessor.this.runOnVideoProcessHandler(gm.a(this, pixelFrame))) {
                return;
            }
            pixelFrame.release();
        }
    }

    /* loaded from: classes4.dex */
    public interface VideoEncodedFrameListener {
        void onVideoEncodeStarted();

        void onVideoEncodingCompleted();

        void onVideoFrameEncoded(EncodedVideoFrame encodedVideoFrame);
    }

    /* loaded from: classes4.dex */
    public interface VideoProcessListener {
        void onComplete(TXVideoEditConstants.TXGenerateResult tXGenerateResult);

        void onProgress(long j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum a {
        STOPPED,
        STARTED,
        PAUSED
    }

    public UGCVideoProcessor(Context context, UGCMediaListSource uGCMediaListSource, UGCAVSyncer uGCAVSyncer, IVideoReporter iVideoReporter, boolean z10) {
        this.mUGCMediaListSource = uGCMediaListSource;
        this.mUGCAVSyncer = uGCAVSyncer;
        this.mReporter = iVideoReporter;
        this.mVideoProcessManager = new VideoProcessManager(context, z10, iVideoReporter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean filtInvalidatedFrame(long j10) {
        if (this.mTargetSeekPts.get() == null || Math.abs(j10 - this.mTargetSeekPts.get().longValue()) <= 100) {
            return false;
        }
        LiteavLog.i(TAG, "filtInvalidatedFrame: framePts:" + j10 + "  mTargetSeekPts:" + this.mTargetSeekPts + "  d :" + Math.abs(j10 - this.mTargetSeekPts.get().longValue()));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(@NonNull Message message) {
        PixelFrame pixelFrame;
        VideoProcessManager videoProcessManager;
        LiteavLog.d(TAG, "handleMessage: " + message.what);
        switch (message.what) {
            case 100:
                this.mStatus = a.STARTED;
                if (this.mIsRecord) {
                    initEncoder();
                } else {
                    initRenderer();
                }
                return true;
            case 101:
                if (this.mStatus == a.STARTED && !this.mInvalidate) {
                    LiteavLog.e(TAG, "MSG_PROCESS_FROM_SOURCE FAILD AS mStatus == " + this.mStatus);
                    return true;
                }
                processFrame();
                this.mInvalidate = false;
                return true;
            case 102:
                this.mStatus = a.PAUSED;
                return true;
            case 103:
                this.mStatus = a.STOPPED;
                return true;
            case 104:
                if (this.mStatus != a.STARTED && (pixelFrame = this.mLastRenderFrame) != null && (videoProcessManager = this.mVideoProcessManager) != null) {
                    videoProcessManager.processFrame(pixelFrame);
                }
                return true;
            case 105:
                LiteavLog.i(TAG, "handleMessage: MSG_FORCE_PROCESS");
                removeMsgFromVideoProcessHandler(105);
                this.mInvalidate = true;
                if (this.mStatus == a.STARTED) {
                    break;
                }
                processFrame();
                this.mInvalidate = false;
                return true;
            default:
                return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleProcessFrame(PixelFrame pixelFrame) {
        CustomHandler customHandler;
        com.tencent.liteav.videoproducer.encoder.ah ahVar;
        com.tencent.liteav.videoconsumer.renderer.p pVar;
        if (filtInvalidatedFrame(pixelFrame.getTimestamp())) {
            return;
        }
        this.mTargetSeekPts.set(null);
        if (this.mVideoProcessListener != null) {
            this.mLastProgressedFrame = pixelFrame.getTimestamp();
            this.mVideoProcessListener.onProgress(pixelFrame.getTimestamp());
        }
        if (!this.mIsRecord && (pVar = this.mRenderer) != null) {
            pVar.renderFrame(pixelFrame);
        }
        if (this.mIsRecord && (ahVar = this.mVideoEncodeController) != null) {
            ahVar.a(pixelFrame);
            if (this.mFinalPts > 0 && pixelFrame.getTimestamp() == this.mFinalPts) {
                LiteavLog.i(TAG, "processFrameFromSource: signalEndOfStream");
                this.mVideoEncodeController.c();
                return;
            }
        } else if (this.mFinalPts > 0 && pixelFrame.getTimestamp() == this.mFinalPts && (customHandler = this.mVideoProcessHandler) != null) {
            customHandler.removeCallbacks(this.onCompleteBroadcastRunnable);
            customHandler.post(this.onCompleteBroadcastRunnable);
        }
        if (this.mStatus == a.STARTED) {
            sendMsgToVideoProcessHandler(101);
        }
    }

    private void initEncoder() {
        if (this.mVideoEncodeController != null || this.mVideoEncodeParams == null) {
            return;
        }
        com.tencent.liteav.videoproducer.encoder.ah ahVar = new com.tencent.liteav.videoproducer.encoder.ah(this.mReporter, VideoProducerDef.StreamType.STREAM_TYPE_BIG_VIDEO, true);
        this.mVideoEncodeController = ahVar;
        ahVar.a();
        this.mVideoEncodeController.a(VideoEncoderDef.EncodeStrategy.PREFER_HARDWARE);
        this.mVideoEncodeController.b(this.mRotation);
        this.mVideoEncodeController.a(this.mVideoEncodeParams, this.mVideoEncoderDataListener);
        VideoEncodedFrameListener videoEncodedFrameListener = this.mVideoEncodedFrameListener;
        if (videoEncodedFrameListener != null) {
            videoEncodedFrameListener.onVideoEncodeStarted();
        }
        this.mFinalPts = -1L;
    }

    private void initProcessChain(int i9, int i10) {
        LiteavLog.i(TAG, "initProcessChain:  width:" + i9 + " height:" + i10);
        if (this.mEGLCore == null) {
            return;
        }
        VideoProcessManager videoProcessManager = this.mVideoProcessManager;
        if (videoProcessManager != null) {
            videoProcessManager.initialize(this.mGLTexturePool, i9, i10, this.mVideoPreprocessorListener);
            this.mVideoProcessManager.setListener(this.mEffectProcessorListener);
        }
        this.mUGCTransitionProcessor = new UGCTransitionProcessor(i9, i10, this.mGLTexturePool);
        this.mUGCCombineProcessor = new UGCCombineProcessor(i9, i10, this.mGLTexturePool);
    }

    private void initRenderer() {
        if (this.mRenderer != null) {
            return;
        }
        if (this.mRenderThread == null) {
            HandlerThread handlerThread = new HandlerThread("VideoProcessRender" + hashCode());
            this.mRenderThread = handlerThread;
            handlerThread.start();
        }
        com.tencent.liteav.videoconsumer.renderer.p pVar = new com.tencent.liteav.videoconsumer.renderer.p(this.mRenderThread.getLooper(), this.mReporter);
        this.mRenderer = pVar;
        DisplayTarget displayTarget = this.mDisplayTarget;
        if (displayTarget != null) {
            pVar.setDisplayView(displayTarget, true);
            this.mRenderer.setScaleType(this.mScaleType);
        }
        this.mRenderer.start(this.mVideoRenderListener);
    }

    private void initializeEGL(Object obj, int i9, int i10) {
        try {
            com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
            this.mEGLCore = eVar;
            eVar.a(obj, null, i9, i10);
            this.mEGLCore.a();
            this.mCurEGLContext = obj;
            this.mCurEGLWidth = i9;
            this.mCurEGLHeight = i10;
            this.mGLTexturePool = new com.tencent.liteav.videobase.frame.e();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            this.mEGLCore = null;
            LiteavLog.e(this.mThrottlers.a("initGL"), TAG, e10.getMessage(), new Object[0]);
        }
    }

    private boolean isNeedReCreateEGL(Object obj, int i9, int i10) {
        Object obj2 = this.mCurEGLContext;
        if (obj2 == null || i9 < 0 || i10 < 0) {
            return false;
        }
        if (obj.equals(obj2) && this.mCurEGLWidth == i9 && this.mCurEGLHeight == i10) {
            return false;
        }
        LiteavLog.i(this.mThrottlers.a("recreateGL"), TAG, "isNeedReCreateEGL: true", new Object[0]);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setBeautyFilter$10(UGCVideoProcessor uGCVideoProcessor, int i9, int i10) {
        VideoProcessManager videoProcessManager = uGCVideoProcessor.mVideoProcessManager;
        if (videoProcessManager != null) {
            videoProcessManager.setBeautyFilter(i9, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setDisplayView$4(UGCVideoProcessor uGCVideoProcessor, DisplayTarget displayTarget, GLConstants.GLScaleType gLScaleType) {
        uGCVideoProcessor.mDisplayTarget = displayTarget;
        if (gLScaleType != null) {
            uGCVideoProcessor.mScaleType = gLScaleType;
        }
        com.tencent.liteav.videoconsumer.renderer.p pVar = uGCVideoProcessor.mRenderer;
        if (pVar != null) {
            pVar.setDisplayView(displayTarget, true);
            uGCVideoProcessor.mRenderer.setScaleType(uGCVideoProcessor.mScaleType);
        }
        VideoProcessManager videoProcessManager = uGCVideoProcessor.mVideoProcessManager;
        if (videoProcessManager != null) {
            videoProcessManager.setScaleType(uGCVideoProcessor.mScaleType);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setFilter$12(UGCVideoProcessor uGCVideoProcessor, Bitmap bitmap, float f10, Bitmap bitmap2, float f11, float f12) {
        VideoProcessManager videoProcessManager = uGCVideoProcessor.mVideoProcessManager;
        if (videoProcessManager != null) {
            videoProcessManager.setFilter(bitmap, f10, bitmap2, f11, f12);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setOutputSize$3(UGCVideoProcessor uGCVideoProcessor, int i9, int i10, GLConstants.GLScaleType gLScaleType) {
        uGCVideoProcessor.mOutputWidth = i9;
        uGCVideoProcessor.mOutputHeight = i10;
        if (i9 > 0) {
            uGCVideoProcessor.mScaleType = gLScaleType;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setRenderRotation$5(UGCVideoProcessor uGCVideoProcessor, Rotation rotation) {
        uGCVideoProcessor.mRotation = rotation;
        com.tencent.liteav.videoconsumer.renderer.p pVar = uGCVideoProcessor.mRenderer;
        if (pVar != null) {
            pVar.setRenderRotation(rotation);
        }
        com.tencent.liteav.videoproducer.encoder.ah ahVar = uGCVideoProcessor.mVideoEncodeController;
        if (ahVar != null) {
            ahVar.b(uGCVideoProcessor.mRotation);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setSpecialRatio$11(UGCVideoProcessor uGCVideoProcessor, float f10) {
        VideoProcessManager videoProcessManager = uGCVideoProcessor.mVideoProcessManager;
        if (videoProcessManager != null) {
            videoProcessManager.setSpecialRatio(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setSpeedList$9(UGCVideoProcessor uGCVideoProcessor, List list) {
        if (uGCVideoProcessor.mSpeedProcessor == null) {
            uGCVideoProcessor.mSpeedProcessor = new SpeedProcessor();
        }
        LiteavLog.i(TAG, "==== setSpeedList ==== ");
        if (list != null) {
            UGCDataReport.reportDAU(1019);
            ArrayList arrayList = new ArrayList();
            for (int i9 = 0; i9 < list.size(); i9++) {
                TXVideoEditConstants.TXSpeed tXSpeed = (TXVideoEditConstants.TXSpeed) list.get(i9);
                TXVideoEditConstants.TXSpeed tXSpeed2 = new TXVideoEditConstants.TXSpeed();
                tXSpeed2.speedLevel = tXSpeed.speedLevel;
                tXSpeed2.startTime = tXSpeed.startTime;
                tXSpeed2.endTime = tXSpeed.endTime;
                arrayList.add(tXSpeed2);
            }
            uGCVideoProcessor.mSpeedProcessor.setSpeedList(arrayList);
            return;
        }
        uGCVideoProcessor.mSpeedProcessor.setSpeedList(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setSplitScreenList$2(UGCVideoProcessor uGCVideoProcessor, List list, int i9, int i10) {
        uGCVideoProcessor.mRectList = list;
        uGCVideoProcessor.setOutputSize(i9, i10, GLConstants.GLScaleType.FIT_CENTER);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$start$1(UGCVideoProcessor uGCVideoProcessor, boolean z10) {
        uGCVideoProcessor.mIsRecord = z10;
        uGCVideoProcessor.mTargetSeekPts.set(null);
        uGCVideoProcessor.mFinalPts = -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$unInitialize$0(UGCVideoProcessor uGCVideoProcessor) {
        uGCVideoProcessor.mFinalPts = -1L;
        PixelFrame pixelFrame = uGCVideoProcessor.mLastRenderFrame;
        if (pixelFrame != null) {
            pixelFrame.release();
            uGCVideoProcessor.mLastRenderFrame = null;
        }
        com.tencent.liteav.videoconsumer.renderer.p pVar = uGCVideoProcessor.mRenderer;
        if (pVar != null) {
            pVar.stop(false);
            uGCVideoProcessor.mRenderer = null;
        }
        uGCVideoProcessor.stopEncoder();
        com.tencent.liteav.videobase.frame.j jVar = uGCVideoProcessor.mPreScaleRenderer;
        if (jVar != null) {
            jVar.a();
            uGCVideoProcessor.mPreScaleRenderer = null;
        }
        uGCVideoProcessor.uninitVideoProcessor();
        if (uGCVideoProcessor.mRenderThread != null) {
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 18) {
                uGCVideoProcessor.mRenderThread.quitSafely();
            } else {
                uGCVideoProcessor.mRenderThread.quit();
            }
            uGCVideoProcessor.mRenderThread = null;
        }
        uGCVideoProcessor.uninitializedEGL();
        synchronized (uGCVideoProcessor) {
            CustomHandler customHandler = uGCVideoProcessor.mVideoProcessHandler;
            if (customHandler != null) {
                customHandler.a();
                uGCVideoProcessor.mVideoProcessHandler = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCompleteBroadcast() {
        if (this.mVideoProcessListener != null) {
            TXVideoEditConstants.TXGenerateResult tXGenerateResult = new TXVideoEditConstants.TXGenerateResult();
            tXGenerateResult.retCode = 0;
            tXGenerateResult.descMsg = "";
            this.mVideoProcessListener.onComplete(tXGenerateResult);
        }
    }

    private PixelFrame preScale(PixelFrame pixelFrame) {
        if (this.mEGLCore != null && this.mOutputHeight > 0 && this.mOutputWidth > 0 && (pixelFrame.getWidth() != this.mOutputWidth || pixelFrame.getHeight() != this.mOutputHeight)) {
            if (this.mPreScaleRenderer == null) {
                this.mPreScaleRenderer = new com.tencent.liteav.videobase.frame.j(this.mOutputWidth, this.mOutputHeight);
            }
            com.tencent.liteav.videobase.frame.d a10 = this.mGLTexturePool.a(this.mOutputWidth, this.mOutputHeight);
            this.mPreScaleRenderer.a(pixelFrame, this.mScaleType, a10);
            PixelFrame a11 = a10.a(this.mEGLCore.d());
            a11.setTimestamp(pixelFrame.getTimestamp());
            a10.release();
            return a11;
        }
        pixelFrame.retain();
        return pixelFrame;
    }

    private void processFrame() {
        int i9;
        if (this.mIsInit) {
            List<PixelFrame> readNextVideoFrame = this.mUGCMediaListSource.readNextVideoFrame();
            if (readNextVideoFrame != null && readNextVideoFrame.size() > 0) {
                boolean z10 = false;
                PixelFrame pixelFrame = readNextVideoFrame.get(0);
                int width = pixelFrame.getWidth();
                int height = pixelFrame.getHeight();
                int i10 = this.mOutputWidth;
                if (i10 > 0 && (i9 = this.mOutputHeight) > 0) {
                    width = i10;
                    height = i9;
                }
                if (isNeedReCreateEGL(pixelFrame.getGLContext(), width, height)) {
                    VideoProcessManager videoProcessManager = this.mVideoProcessManager;
                    if (videoProcessManager != null) {
                        videoProcessManager.unInitialize(this.mVideoPreprocessorListener);
                    }
                    UGCTransitionProcessor uGCTransitionProcessor = this.mUGCTransitionProcessor;
                    if (uGCTransitionProcessor != null) {
                        uGCTransitionProcessor.release();
                        this.mUGCTransitionProcessor = null;
                    }
                    UGCCombineProcessor uGCCombineProcessor = this.mUGCCombineProcessor;
                    if (uGCCombineProcessor != null) {
                        uGCCombineProcessor.release();
                        this.mUGCCombineProcessor = null;
                    }
                    com.tencent.liteav.videobase.frame.j jVar = this.mPreScaleRenderer;
                    if (jVar != null) {
                        jVar.a();
                        this.mPreScaleRenderer = null;
                    }
                    uninitializedEGL();
                    z10 = true;
                }
                if (this.mEGLCore == null) {
                    initializeEGL(pixelFrame.getGLContext(), width, height);
                    if (!z10) {
                        initProcessChain(width, height);
                    } else {
                        reInitProcessorChain(width, height);
                    }
                }
                if (this.mUGCAVSyncer.syncVideo(pixelFrame.getTimestamp()) == UGCAVSyncer.SkipMode.SKIP_CURRENT_FRAME) {
                    for (PixelFrame pixelFrame2 : readNextVideoFrame) {
                        pixelFrame2.release();
                    }
                    if (this.mStatus == a.STARTED) {
                        sendMsgToVideoProcessHandler(101);
                        return;
                    }
                    return;
                }
                if (readNextVideoFrame.size() > 1) {
                    List<TXVideoEditConstants.TXAbsoluteRect> list = this.mRectList;
                    if (list != null) {
                        pixelFrame = this.mUGCCombineProcessor.processFrame(readNextVideoFrame, list);
                    } else {
                        pixelFrame = this.mUGCTransitionProcessor.processFrame(readNextVideoFrame, this.mTransitionType);
                    }
                }
                PixelFrame pixelFrame3 = this.mLastRenderFrame;
                if (pixelFrame3 != null) {
                    pixelFrame3.release();
                }
                PixelFrame preScale = preScale(pixelFrame);
                this.mLastRenderFrame = preScale;
                VideoProcessManager videoProcessManager2 = this.mVideoProcessManager;
                if (videoProcessManager2 != null) {
                    videoProcessManager2.processFrame(preScale);
                }
                if (readNextVideoFrame.size() > 1) {
                    pixelFrame.release();
                }
                for (PixelFrame pixelFrame4 : readNextVideoFrame) {
                    pixelFrame4.release();
                }
                return;
            }
            PixelFrame pixelFrame5 = this.mLastRenderFrame;
            if (pixelFrame5 != null) {
                this.mFinalPts = pixelFrame5.getTimestamp();
                LiteavLog.i(TAG, "processFrameFromSource: get no frame mFinalPts:" + this.mFinalPts + "  mLastProgressedFrame：" + this.mLastProgressedFrame);
                CustomHandler customHandler = this.mVideoProcessHandler;
                if (customHandler != null) {
                    customHandler.removeCallbacks(this.onCompleteBroadcastRunnable);
                    customHandler.postDelayed(this.onCompleteBroadcastRunnable, 100L);
                }
            }
        }
    }

    private void reInitProcessorChain(int i9, int i10) {
        if (this.mEGLCore == null) {
            return;
        }
        VideoProcessManager videoProcessManager = this.mVideoProcessManager;
        if (videoProcessManager != null) {
            videoProcessManager.reInitFilter(this.mGLTexturePool, i9, i10, this.mVideoPreprocessorListener);
        }
        if (this.mUGCTransitionProcessor == null) {
            this.mUGCTransitionProcessor = new UGCTransitionProcessor(i9, i10, this.mGLTexturePool);
        }
        if (this.mUGCCombineProcessor == null) {
            this.mUGCCombineProcessor = new UGCCombineProcessor(i9, i10, this.mGLTexturePool);
        }
    }

    private void removeMsgFromVideoProcessHandler(int i9) {
        synchronized (this) {
            CustomHandler customHandler = this.mVideoProcessHandler;
            if (customHandler != null) {
                customHandler.removeMessages(i9);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean runOnVideoProcessHandler(Runnable runnable) {
        synchronized (this) {
            CustomHandler customHandler = this.mVideoProcessHandler;
            if (customHandler != null && customHandler.getLooper() != null && this.mVideoProcessHandler.getLooper().getThread() != null && this.mVideoProcessHandler.getLooper().getThread().isAlive()) {
                CustomHandler customHandler2 = this.mVideoProcessHandler;
                if (customHandler2 != null) {
                    if (Looper.myLooper() == customHandler2.getLooper()) {
                        runnable.run();
                        return true;
                    }
                    boolean post = customHandler2.post(runnable);
                    if (!post) {
                        LiteavLog.e(TAG, "handler post fail ret = ".concat(String.valueOf(post)));
                    }
                    return post;
                }
                return false;
            }
            LiteavLog.e(TAG, "handler post fail thread is not alive ");
            return false;
        }
    }

    private void sendMsgToVideoProcessHandler(int i9) {
        synchronized (this) {
            CustomHandler customHandler = this.mVideoProcessHandler;
            if (customHandler != null) {
                customHandler.sendEmptyMessage(i9);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopEncoder() {
        com.tencent.liteav.videoproducer.encoder.ah ahVar = this.mVideoEncodeController;
        if (ahVar == null) {
            return;
        }
        this.mFinalPts = -1L;
        ahVar.c();
        this.mVideoEncodeController.d();
        this.mVideoEncodeController.b();
        this.mVideoEncodeController = null;
    }

    private void uninitVideoProcessor() {
        LiteavLog.i(TAG, "uninitVideoProcessor: ");
        VideoProcessManager videoProcessManager = this.mVideoProcessManager;
        if (videoProcessManager != null) {
            videoProcessManager.destroyFilter(this.mVideoPreprocessorListener);
            this.mVideoProcessManager = null;
        }
        UGCTransitionProcessor uGCTransitionProcessor = this.mUGCTransitionProcessor;
        if (uGCTransitionProcessor != null) {
            uGCTransitionProcessor.release();
            this.mUGCTransitionProcessor = null;
        }
        UGCCombineProcessor uGCCombineProcessor = this.mUGCCombineProcessor;
        if (uGCCombineProcessor != null) {
            uGCCombineProcessor.release();
            this.mUGCCombineProcessor = null;
        }
    }

    private void uninitializedEGL() {
        LiteavLog.i(this.mThrottlers.a("uninitGL"), TAG, "uninitializedEGL", new Object[0]);
        com.tencent.liteav.videobase.frame.e eVar = this.mGLTexturePool;
        if (eVar != null) {
            eVar.b();
        }
        TXVideoEditer.TXVideoCustomProcessListener tXVideoCustomProcessListener = this.mTXVideoCustomProcessListener;
        if (tXVideoCustomProcessListener != null) {
            tXVideoCustomProcessListener.onTextureDestroyed();
        }
        com.tencent.liteav.videobase.b.e.a(this.mEGLCore);
        this.mEGLCore = null;
    }

    public VideoEffectProcessor getEffectProcessor() {
        VideoProcessManager videoProcessManager = this.mVideoProcessManager;
        if (videoProcessManager != null) {
            return videoProcessManager.getEffectProcessor();
        }
        return null;
    }

    public VideoTransitionProcessor getTransitionProcessor() {
        VideoProcessManager videoProcessManager = this.mVideoProcessManager;
        if (videoProcessManager != null) {
            return videoProcessManager.getTransitionProcessor();
        }
        return null;
    }

    public WatermarkProcessor getWatermarkProcessor() {
        VideoProcessManager videoProcessManager = this.mVideoProcessManager;
        if (videoProcessManager != null) {
            return videoProcessManager.getWatermarkProcessor();
        }
        return null;
    }

    public void initialize() {
        if (this.mIsInit) {
            return;
        }
        this.mIsInit = true;
        LiteavLog.i(TAG, "initialize: ");
        HandlerThread handlerThread = new HandlerThread("VideoProcess_" + hashCode());
        handlerThread.start();
        synchronized (this) {
            this.mVideoProcessHandler = new CustomHandler(handlerThread.getLooper(), gb.a(this));
        }
    }

    public void refreshOneFrame() {
        sendMsgToVideoProcessHandler(104);
    }

    public void seekTo(long j10) {
        this.mTargetSeekPts.set(Long.valueOf(j10));
        removeMsgFromVideoProcessHandler(105);
        sendMsgToVideoProcessHandler(105);
    }

    public void setBeautyFilter(int i9, int i10) {
        runOnVideoProcessHandler(fw.a(this, i9, i10));
    }

    public void setCustomVideoProcessListener(TXVideoEditer.TXVideoCustomProcessListener tXVideoCustomProcessListener) {
        runOnVideoProcessHandler(fz.a(this, tXVideoCustomProcessListener));
    }

    public void setDisplayView(DisplayTarget displayTarget, GLConstants.GLScaleType gLScaleType) {
        LiteavLog.i(TAG, "setDisplayView: displayTarget:" + displayTarget + "scaleType:" + gLScaleType);
        runOnVideoProcessHandler(gh.a(this, displayTarget, gLScaleType));
    }

    public void setEncodeParams(VideoEncodeParams videoEncodeParams) {
        LiteavLog.i(TAG, "setEncodeParams: ".concat(String.valueOf(videoEncodeParams)));
        runOnVideoProcessHandler(fs.a(this, videoEncodeParams));
    }

    public void setFilter(Bitmap bitmap, float f10, Bitmap bitmap2, float f11, float f12) {
        runOnVideoProcessHandler(fy.a(this, bitmap, f10, bitmap2, f11, f12));
    }

    public void setOutputSize(int i9, int i10, GLConstants.GLScaleType gLScaleType) {
        runOnVideoProcessHandler(gg.a(this, i9, i10, gLScaleType));
    }

    public void setPictureTransition(int i9) {
        runOnVideoProcessHandler(fu.a(this, i9));
    }

    public void setProgressListener(VideoProcessListener videoProcessListener) {
        runOnVideoProcessHandler(ga.a(this, videoProcessListener));
    }

    public void setRenderRotation(Rotation rotation) {
        LiteavLog.i(TAG, "setRenderRotation: ".concat(String.valueOf(rotation)));
        if (rotation == null) {
            return;
        }
        runOnVideoProcessHandler(gi.a(this, rotation));
        sendMsgToVideoProcessHandler(104);
    }

    public void setSpecialRatio(float f10) {
        runOnVideoProcessHandler(fx.a(this, f10));
        sendMsgToVideoProcessHandler(104);
    }

    public void setSpeedList(List<TXVideoEditConstants.TXSpeed> list) {
        runOnVideoProcessHandler(fv.a(this, list));
    }

    public void setSplitScreenList(List<TXVideoEditConstants.TXAbsoluteRect> list, int i9, int i10) {
        runOnVideoProcessHandler(gf.a(this, list, i9, i10));
    }

    public void setVideoEncodedFrameListener(VideoEncodedFrameListener videoEncodedFrameListener) {
        runOnVideoProcessHandler(ft.a(this, videoEncodedFrameListener));
    }

    public void start(boolean z10) {
        LiteavLog.i(TAG, "start: ".concat(String.valueOf(z10)));
        runOnVideoProcessHandler(gd.a(this, z10));
        sendMsgToVideoProcessHandler(100);
        sendMsgToVideoProcessHandler(101);
    }

    public void stop() {
        LiteavLog.i(TAG, "stop: ");
        removeMsgFromVideoProcessHandler(101);
        sendMsgToVideoProcessHandler(103);
        runOnVideoProcessHandler(ge.a(this));
    }

    public void unInitialize() {
        if (this.mIsInit) {
            this.mIsInit = false;
            LiteavLog.i(TAG, "uninitialize");
            runOnVideoProcessHandler(gc.a(this));
        }
    }
}
