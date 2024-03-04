package com.tencent.ugc;

import android.opengl.GLES20;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.UGCFrameQueue;
import java.nio.ByteBuffer;
import java.util.Deque;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes4.dex */
public class UGCSingleFilePixelFrameProvider implements VideoDecodeController.a, UGCFrameQueue.UGCFrameQueueListener, UGCPixelFrameProvider {
    private static final int MAX_FRAME_SIZE = 3;
    private static final int REVERSE_STEP_TIME = 500;
    private static final String TAG = "UGCVideoFileProvider";
    private final Clip mClip;
    private VideoDemuxer mDemuxer;
    private com.tencent.liteav.videobase.b.e mEGLCore;
    private com.tencent.liteav.videobase.frame.e mGLTexturePool;
    private com.tencent.liteav.videobase.frame.j mPixelFrameRenderer;
    private long mReversePlayCurrentPts;
    private VideoDecodeController mVideoDecodeController;
    private final CustomHandler mWorkHandler;
    private final com.tencent.liteav.base.b.b mThrottlers = new com.tencent.liteav.base.b.b();
    private boolean mIsAbandoningDecodingFrame = false;
    private long mSeekingTimeMs = -1;
    private boolean mIsInPreciseSeeking = true;
    private boolean mHasReadEOF = false;
    private boolean mIsDecodeCompleted = false;
    private boolean mIsFrameSendingDecoder = false;
    private boolean mIsReverse = false;
    private int mFrameCacheCapacityForReverse = 0;
    private int mVideoWidth = 0;
    private int mVideoHeight = 0;
    private Rotation mVideoRotation = Rotation.NORMAL;
    private long mPlayEndPts = Long.MAX_VALUE;
    private final UGCFrameQueue<List<PixelFrame>> mPixFrameQueue = new UGCFrameQueue<>();
    private final Deque<PixelFrame> mPixFrameCacheForReverse = new LinkedList();

    public UGCSingleFilePixelFrameProvider(@NonNull Clip clip, @NonNull CustomHandler customHandler) {
        this.mClip = new Clip(clip);
        this.mWorkHandler = customHandler;
    }

    private void addFrameToQueue(PixelFrame pixelFrame) {
        if (pixelFrame == null) {
            this.mPixFrameQueue.queue(UGCPixelFrameProvider.END_OF_STREAM);
        } else if (pixelFrame.getTimestamp() < this.mClip.startInFileTime) {
            pixelFrame.release();
        } else if (pixelFrame.getTimestamp() <= this.mClip.endInFileTime && pixelFrame.getTimestamp() <= this.mPlayEndPts) {
            pixelFrame.setTimestamp(fileTimeToTimeline(pixelFrame.getTimestamp()));
            LinkedList linkedList = new LinkedList();
            linkedList.add(pixelFrame);
            this.mPixFrameQueue.queue(linkedList);
        } else {
            LiteavLog.i(TAG, "addFrameToQueue Timestamp = " + pixelFrame.getTimestamp() + " endInnerFileTime = " + this.mClip.endInFileTime);
            this.mPixFrameQueue.queue(UGCPixelFrameProvider.END_OF_STREAM);
            pixelFrame.release();
        }
    }

    private void addFrameToQueueForReverse(PixelFrame pixelFrame) {
        if (pixelFrame != null && pixelFrame.getTimestamp() <= this.mReversePlayCurrentPts) {
            this.mPixFrameCacheForReverse.addLast(pixelFrame);
            return;
        }
        if (pixelFrame != null) {
            pixelFrame.release();
        }
        if (this.mPixFrameCacheForReverse.isEmpty()) {
            LiteavLog.i(TAG, "mGopVideoFrameList isEmpty so put END_OF_STREAM");
            this.mPixFrameQueue.queue(UGCPixelFrameProvider.END_OF_STREAM);
            return;
        }
        this.mFrameCacheCapacityForReverse = this.mPixFrameCacheForReverse.size();
        while (!this.mPixFrameCacheForReverse.isEmpty()) {
            PixelFrame pollLast = this.mPixFrameCacheForReverse.pollLast();
            long timestamp = pollLast.getTimestamp();
            this.mReversePlayCurrentPts = timestamp;
            Clip clip = this.mClip;
            if (timestamp <= clip.endInFileTime && timestamp >= clip.startInFileTime) {
                pollLast.setTimestamp(fileTimeToTimelineForReverse(timestamp));
                LinkedList linkedList = new LinkedList();
                linkedList.add(pollLast);
                this.mPixFrameQueue.queue(linkedList);
            } else {
                pollLast.release();
            }
        }
        long j10 = this.mReversePlayCurrentPts;
        if (j10 <= this.mClip.startInFileTime) {
            LiteavLog.i(TAG, "mLastGopFinishPts is smaller start time so put END_OF_STREAM");
            this.mPixFrameQueue.queue(UGCPixelFrameProvider.END_OF_STREAM);
            return;
        }
        long j11 = j10 - 1;
        this.mReversePlayCurrentPts = j11;
        seekToInFileTime(j11 - 500, false);
    }

    private void clearPixelFrameQueue() {
        for (List<PixelFrame> list : this.mPixFrameQueue.dequeueAll()) {
            PixelFrame.releasePixelFrames(list);
        }
    }

    private boolean createDemuxerAndOpenFile() {
        String str = this.mClip.videoMimeType;
        if (str != null && !"video/hevc".equals(str) && !TPDecoderType.TP_CODEC_MIMETYPE_AVC.equals(this.mClip.videoMimeType)) {
            this.mDemuxer = new VideoDemuxerSystem();
        } else {
            this.mDemuxer = new VideoDemuxerFFmpeg();
        }
        if (this.mDemuxer.open(this.mClip.path)) {
            return true;
        }
        this.mDemuxer.close();
        this.mDemuxer = null;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void decodeInternal() {
        if (this.mVideoDecodeController != null && isNeedDecode()) {
            EncodedVideoFrame nextEncodeVideoFrame = this.mDemuxer.getNextEncodeVideoFrame();
            if (nextEncodeVideoFrame == VideoDemuxer.END_OF_STREAM) {
                LiteavLog.i(TAG, "demuxer read completed");
                this.mHasReadEOF = true;
                VideoDecodeController videoDecodeController = this.mVideoDecodeController;
                videoDecodeController.a(com.tencent.liteav.videoconsumer.decoder.aw.a(videoDecodeController));
                this.mWorkHandler.removeCallbacks(ez.a(this));
                this.mWorkHandler.a(fa.a(this), 1000);
                return;
            }
            this.mIsFrameSendingDecoder = true;
            this.mIsDecodeCompleted = false;
            this.mVideoRotation = Rotation.a(nextEncodeVideoFrame.rotation);
            this.mVideoDecodeController.a(nextEncodeVideoFrame);
            return;
        }
        this.mIsFrameSendingDecoder = false;
    }

    private long fileTimeToTimeline(long j10) {
        Clip clip = this.mClip;
        long j11 = clip.startInClipsTimeline;
        List<TXVideoEditConstants.TXSpeed> list = clip.speedList;
        if (list == null) {
            return j11 + (j10 - clip.startInFileTime);
        }
        for (TXVideoEditConstants.TXSpeed tXSpeed : list) {
            float timeMultipleInSpeed = 1.0f / getTimeMultipleInSpeed(tXSpeed.speedLevel);
            long j12 = tXSpeed.endTime;
            if (j10 < j12) {
                return j11 + (((float) (j10 - tXSpeed.startTime)) * timeMultipleInSpeed);
            }
            j11 += ((float) (j12 - tXSpeed.startTime)) * timeMultipleInSpeed;
        }
        return j11;
    }

    private long fileTimeToTimelineForReverse(long j10) {
        long j11;
        Clip clip = this.mClip;
        List<TXVideoEditConstants.TXSpeed> list = clip.speedList;
        if (list == null) {
            return clip.endInFileTime - j10;
        }
        long j12 = clip.startInClipsTimeline;
        for (int size = list.size() - 1; size >= 0; size--) {
            TXVideoEditConstants.TXSpeed tXSpeed = this.mClip.speedList.get(size);
            float timeMultipleInSpeed = 1.0f / getTimeMultipleInSpeed(tXSpeed.speedLevel);
            if (j10 > tXSpeed.startTime) {
                return j12 + (((float) (tXSpeed.endTime - j10)) * timeMultipleInSpeed);
            }
            j12 += ((float) (tXSpeed.endTime - j11)) * timeMultipleInSpeed;
        }
        return j12;
    }

    private float getTimeMultipleInSpeed(int i9) {
        return UGCMediaListSource.getSpeed(i9);
    }

    private void initializeDecodeController() {
        if (this.mVideoDecodeController != null) {
            LiteavLog.w(TAG, "UGCVideoFileProvider is initialized");
            return;
        }
        LiteavLog.i(TAG, "initializeDecodeController");
        VideoDecodeController videoDecodeController = new VideoDecodeController(new com.tencent.liteav.videobase.videobase.e(), true);
        this.mVideoDecodeController = videoDecodeController;
        videoDecodeController.a();
        this.mVideoDecodeController.a(com.tencent.liteav.videoproducer.capture.ay.a().b());
        this.mVideoDecodeController.a(VideoDecodeController.DecodeStrategy.FORCE_HARDWARE);
        this.mVideoDecodeController.a(VideoDecoderDef.ConsumerScene.UNKNOWN);
    }

    private void initializeGLComponents() {
        if (this.mEGLCore != null) {
            return;
        }
        LiteavLog.i(this.mThrottlers.a("initGL"), TAG, "initializeGLComponents", new Object[0]);
        com.tencent.liteav.videobase.b.e eVar = new com.tencent.liteav.videobase.b.e();
        this.mEGLCore = eVar;
        try {
            eVar.a(com.tencent.liteav.videoproducer.capture.ay.a().b(), null, 128, 128);
            this.mEGLCore.a();
            this.mGLTexturePool = new com.tencent.liteav.videobase.frame.e();
        } catch (com.tencent.liteav.videobase.b.g e10) {
            LiteavLog.e(this.mThrottlers.a("initGLError"), TAG, "initializeGLComponents failed.", e10);
            this.mEGLCore = null;
        }
    }

    private boolean isNeedDecode() {
        return (this.mVideoDecodeController != null && this.mDemuxer != null && !this.mIsAbandoningDecodingFrame && !this.mHasReadEOF) && !(!this.mIsReverse ? this.mPixFrameQueue.size() >= 3 : !(this.mPixFrameQueue.size() < 3 || this.mPixFrameQueue.size() + this.mPixFrameCacheForReverse.size() < this.mFrameCacheCapacityForReverse + 3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onAbandonDecodingFramesCompleted$4(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        if (uGCSingleFilePixelFrameProvider.mVideoDecodeController == null) {
            return;
        }
        uGCSingleFilePixelFrameProvider.mIsAbandoningDecodingFrame = false;
        uGCSingleFilePixelFrameProvider.decodeInternal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onDecodeFailed$5(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        if (uGCSingleFilePixelFrameProvider.mVideoDecodeController == null) {
            return;
        }
        uGCSingleFilePixelFrameProvider.mPixFrameQueue.queue(UGCPixelFrameProvider.END_OF_STREAM);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onFrameDequeued$3(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider) {
        if (uGCSingleFilePixelFrameProvider.mIsFrameSendingDecoder) {
            return;
        }
        uGCSingleFilePixelFrameProvider.decodeInternal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$seekTo$0(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider, long j10, boolean z10) {
        if (uGCSingleFilePixelFrameProvider.mVideoDecodeController == null || uGCSingleFilePixelFrameProvider.mDemuxer == null) {
            return;
        }
        uGCSingleFilePixelFrameProvider.clearPixelFrameQueue();
        long timelineToFileTime = uGCSingleFilePixelFrameProvider.timelineToFileTime(j10);
        uGCSingleFilePixelFrameProvider.mReversePlayCurrentPts = timelineToFileTime;
        uGCSingleFilePixelFrameProvider.seekToInFileTime(timelineToFileTime, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDecodeCompletedInternal() {
        LiteavLog.i(TAG, "onDecodeCompletedInteral");
        if (this.mVideoDecodeController == null || this.mIsAbandoningDecodingFrame || this.mIsDecodeCompleted || !this.mHasReadEOF) {
            return;
        }
        if (this.mIsReverse) {
            addFrameToQueueForReverse(null);
        } else {
            addFrameToQueue(null);
        }
        this.mIsDecodeCompleted = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
        if (r5 != (-1)) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDecodeFrameInternal(com.tencent.liteav.videobase.frame.PixelFrame r8) {
        /*
            r7 = this;
            com.tencent.liteav.videoconsumer.decoder.VideoDecodeController r0 = r7.mVideoDecodeController
            if (r0 != 0) goto L8
            r8.release()
            return
        L8:
            long r0 = r8.getTimestamp()
            boolean r2 = r7.mIsAbandoningDecodingFrame
            if (r2 != 0) goto L37
            boolean r2 = r7.mIsReverse
            r3 = -1
            if (r2 != 0) goto L25
            boolean r2 = r7.mIsInPreciseSeeking
            if (r2 == 0) goto L25
            long r5 = r7.mSeekingTimeMs
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 >= 0) goto L25
            int r0 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r0 == 0) goto L25
            goto L37
        L25:
            r7.mSeekingTimeMs = r3
            com.tencent.liteav.videobase.frame.PixelFrame r8 = r7.processFrame(r8)
            boolean r0 = r7.mIsReverse
            if (r0 == 0) goto L33
            r7.addFrameToQueueForReverse(r8)
            return
        L33:
            r7.addFrameToQueue(r8)
            return
        L37:
            r8.release()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.ugc.UGCSingleFilePixelFrameProvider.onDecodeFrameInternal(com.tencent.liteav.videobase.frame.PixelFrame):void");
    }

    private PixelFrame processFrame(PixelFrame pixelFrame) {
        com.tencent.liteav.videobase.frame.j jVar;
        try {
            this.mEGLCore.a();
            pixelFrame.setRotation(this.mVideoRotation);
            if (pixelFrame.getRotation() != Rotation.NORMAL && pixelFrame.getRotation() != Rotation.ROTATION_180) {
                pixelFrame.swapWidthHeight();
            }
            int width = pixelFrame.getWidth();
            int height = pixelFrame.getHeight();
            if ((width != this.mVideoWidth || height != this.mVideoHeight) && (jVar = this.mPixelFrameRenderer) != null) {
                jVar.a();
                this.mPixelFrameRenderer = null;
            }
            if (this.mPixelFrameRenderer == null) {
                this.mPixelFrameRenderer = new com.tencent.liteav.videobase.frame.j(width, height);
                this.mVideoWidth = width;
                this.mVideoHeight = height;
            }
            OpenGlUtils.glViewport(0, 0, width, height);
            com.tencent.liteav.videobase.frame.d a10 = this.mGLTexturePool.a(width, height);
            this.mPixelFrameRenderer.a(pixelFrame, GLConstants.GLScaleType.CENTER_CROP, a10);
            PixelFrame a11 = a10.a(this.mEGLCore.d());
            a11.setTimestamp(pixelFrame.getTimestamp());
            a11.setGLContext(com.tencent.liteav.videoproducer.capture.ay.a().b());
            GLES20.glFinish();
            a10.release();
            pixelFrame.release();
            return a11;
        } catch (com.tencent.liteav.videobase.b.g unused) {
            pixelFrame.release();
            return null;
        }
    }

    private void seekToInFileTime(long j10, boolean z10) {
        if (this.mDemuxer == null) {
            return;
        }
        Clip clip = this.mClip;
        long a10 = com.tencent.liteav.base.util.g.a(j10, clip.startInFileTime, clip.endInFileTime);
        if (this.mSeekingTimeMs == a10 && this.mIsInPreciseSeeking == z10) {
            return;
        }
        LiteavLog.i(TAG, "seekToInFileTime file time = ".concat(String.valueOf(a10)));
        this.mSeekingTimeMs = a10;
        this.mIsInPreciseSeeking = z10;
        this.mDemuxer.seek(a10);
        this.mIsAbandoningDecodingFrame = true;
        this.mHasReadEOF = false;
        VideoDecodeController videoDecodeController = this.mVideoDecodeController;
        LiteavLog.i(videoDecodeController.f32142a, "decoder abandonDecodingFrames");
        videoDecodeController.a(com.tencent.liteav.videoconsumer.decoder.ae.a(videoDecodeController));
        PixelFrame.releasePixelFrames(this.mPixFrameCacheForReverse);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReverseInternal(boolean z10) {
        if (this.mIsReverse == z10) {
            return;
        }
        this.mIsReverse = z10;
        if (z10) {
            long j10 = this.mClip.endInFileTime;
            this.mReversePlayCurrentPts = j10;
            seekToInFileTime(j10 - 500, false);
        } else {
            seekToInFileTime(this.mClip.startInFileTime, true);
        }
        clearPixelFrameQueue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startInternal() {
        if (!createDemuxerAndOpenFile()) {
            LiteavLog.e(TAG, this.mClip.path + " open fail or there is not video stream");
            this.mPixFrameQueue.queue(UGCPixelFrameProvider.END_OF_STREAM);
            return;
        }
        LiteavLog.i(TAG, this.mClip.path + " open success");
        this.mPixFrameQueue.setUGCFrameQueueListener(this);
        this.mPixFrameQueue.clear();
        if (this.mIsReverse) {
            long j10 = this.mClip.endInFileTime;
            this.mReversePlayCurrentPts = j10;
            this.mDemuxer.seek(j10 - 500);
        } else {
            long j11 = this.mClip.startInFileTime;
            if (j11 != 0) {
                this.mDemuxer.seek(j11);
            }
        }
        initializeDecodeController();
        initializeGLComponents();
        this.mVideoDecodeController.a((VideoDecodeController.a) this);
        decodeInternal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopInternal() {
        this.mPixFrameQueue.setUGCFrameQueueListener(null);
        VideoDemuxer videoDemuxer = this.mDemuxer;
        if (videoDemuxer != null) {
            videoDemuxer.close();
            this.mDemuxer = null;
        }
        VideoDecodeController videoDecodeController = this.mVideoDecodeController;
        if (videoDecodeController != null) {
            videoDecodeController.g();
        }
        clearPixelFrameQueue();
        PixelFrame.releasePixelFrames(this.mPixFrameCacheForReverse);
        this.mPixFrameQueue.queue(UGCPixelFrameProvider.END_OF_STREAM);
        this.mIsAbandoningDecodingFrame = false;
        this.mIsInPreciseSeeking = true;
        this.mIsReverse = false;
        this.mIsFrameSendingDecoder = false;
        this.mSeekingTimeMs = -1L;
        this.mReversePlayCurrentPts = this.mClip.startInFileTime;
    }

    private long timelineToFileTime(long j10) {
        Clip clip = this.mClip;
        List<TXVideoEditConstants.TXSpeed> list = clip.speedList;
        if (list == null) {
            return j10 + clip.startInFileTime;
        }
        long j11 = 0;
        for (TXVideoEditConstants.TXSpeed tXSpeed : list) {
            float timeMultipleInSpeed = 1.0f / getTimeMultipleInSpeed(tXSpeed.speedLevel);
            long j12 = tXSpeed.endTime;
            long j13 = tXSpeed.startTime;
            long j14 = ((float) (j12 - j13)) * timeMultipleInSpeed;
            long j15 = (((float) j10) / timeMultipleInSpeed) + j13;
            if (j10 < j14) {
                return j15;
            }
            j10 -= j14;
            j11 = j15;
        }
        return j11;
    }

    private void unInitializeGLComponents() {
        com.tencent.liteav.videobase.frame.e eVar = this.mGLTexturePool;
        if (eVar != null) {
            eVar.a();
            this.mGLTexturePool.b();
            this.mGLTexturePool = null;
        }
        com.tencent.liteav.videobase.frame.j jVar = this.mPixelFrameRenderer;
        if (jVar != null) {
            jVar.a();
            this.mPixelFrameRenderer = null;
        }
        com.tencent.liteav.videobase.b.e.a(this.mEGLCore);
        this.mEGLCore = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uninitializeInternal() {
        unInitializeGLComponents();
        VideoDecodeController videoDecodeController = this.mVideoDecodeController;
        if (videoDecodeController != null) {
            videoDecodeController.g();
            this.mVideoDecodeController.i();
            this.mVideoDecodeController = null;
        }
        clearPixelFrameQueue();
        PixelFrame.releasePixelFrames(this.mPixFrameCacheForReverse);
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public UGCFrameQueue<List<PixelFrame>> getFrameQueue() {
        return this.mPixFrameQueue;
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void initialize() {
        LiteavLog.i(TAG, "initialize");
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public void onAbandonDecodingFramesCompleted() {
        LiteavLog.i(TAG, "onAbandonDecodingFramesCompleted");
        this.mWorkHandler.a(fj.a(this), 0);
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public void onDecodeCompleted() {
        this.mWorkHandler.a(ey.a(this), 0);
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public void onDecodeFailed() {
        LiteavLog.i(TAG, "on decode fail");
        this.mWorkHandler.a(fb.a(this), 0);
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public void onDecodeFrame(PixelFrame pixelFrame, long j10) {
        if (pixelFrame == null) {
            return;
        }
        pixelFrame.retain();
        this.mWorkHandler.a(fg.a(this, pixelFrame), 0);
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public void onDecodeLatencyChanged(boolean z10) {
    }

    public void onDecodeSEI(ByteBuffer byteBuffer) {
    }

    @Override // com.tencent.ugc.UGCFrameQueue.UGCFrameQueueListener
    public void onFrameDequeued() {
        this.mWorkHandler.a(fi.a(this), 0);
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public void onFrameEnqueuedToDecoder() {
        this.mWorkHandler.a(fh.a(this), 0);
    }

    @Override // com.tencent.liteav.videoconsumer.decoder.ba
    public void onRequestKeyFrame() {
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void seekTo(long j10, boolean z10) {
        LiteavLog.i(TAG, "seekTo lineTime = " + j10 + " isPreciseSeek = " + z10);
        this.mWorkHandler.a(fe.a(this, j10, z10), 1000L);
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void setPlayEndPts(long j10) {
        this.mPlayEndPts = j10;
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void setReverse(boolean z10) {
        LiteavLog.i(TAG, "isReverse = ".concat(String.valueOf(z10)));
        this.mWorkHandler.a(ff.a(this, z10), 0);
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void start() {
        this.mWorkHandler.a(fc.a(this), 0);
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void stop() {
        this.mWorkHandler.a(fd.a(this), 0);
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void uninitialize() {
        LiteavLog.i(TAG, "unInitialize");
        this.mWorkHandler.a(ex.a(this), 0);
    }
}
