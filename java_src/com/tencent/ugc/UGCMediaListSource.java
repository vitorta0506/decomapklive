package com.tencent.ugc;

import android.graphics.Bitmap;
import android.os.HandlerThread;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.frame.e;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.retriver.FFmpegMediaRetriever;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class UGCMediaListSource {
    private static final int MAX_FRAME_SIZE = 5;
    private static final int READ_FRAME_TIME_OUT_MS = 5;
    public static final int SEEK_TIME_OUT = 1000;
    private CustomHandler mAudioHandler;
    private List<Bitmap> mBitmapList;
    private FutureTask<Long> mCalculateDurationTask;
    private UGCAudioFrameProvider mCurrentAudioFrameProvider;
    private UGCPixelFrameProvider mCurrentPixelFrameProvider;
    private FutureTask<Boolean> mHasAudioDataTask;
    private UGCPixelFrameProvider mNextPixelFrameProvider;
    private List<TXVideoEditConstants.TXRepeat> mRepeatList;
    private List<String> mSources;
    private List<TXVideoEditConstants.TXSpeed> mSpeedList;
    private CustomHandler mVideoHandler;
    private CustomHandler mWorkHandler;
    private int mCurrentVideoClipIndex = 0;
    private int mCurrentAudioClipIndex = 0;
    private int mNextVideoClipIndex = 0;
    private long mVideoSeekTimeInClip = -1;
    private long mAudioSeekTimeInClip = -1;
    private long mLastVideoFrameTimestamp = -1;
    private long mLastAudioFrameTimestamp = -1;
    private boolean mIsMediaSourceOverlapped = false;
    private int mFps = 20;
    private int mTransitionType = 1;
    private long mSourceRangeStart = 0;
    private long mSourceRangeEnd = 2147483647L;
    private long mTotalDuration = 0;
    private long mTailWaterMarkDurationMs = 0;
    private boolean mIsPreciseSeek = true;
    private boolean mIsReverse = false;
    private long mPlayEndTime = Long.MAX_VALUE;
    private final List<Clip> mClipList = new ArrayList();
    private final List<a> mMediaInfoList = new ArrayList();
    private final UGCFrameQueue<List<PixelFrame>> mPixelFrameListQueue = new UGCFrameQueue<>();
    private final UGCFrameQueue<List<AudioFrame>> mAudioFrameListQueue = new UGCFrameQueue<>();
    private final List<PixelFrame> mTailPixelFrameList = new ArrayList();
    private final String mTAG = "UGCMediaListSource_" + hashCode();

    private void addClipToList(long j10, long j11, a aVar) {
        if (j10 >= j11) {
            return;
        }
        Clip clip = new Clip();
        clip.startInFileTime = j10;
        clip.endInFileTime = j11;
        clip.path = aVar.f34662e;
        clip.fps = aVar.f34661d;
        clip.videoMimeType = aVar.f34663f;
        this.mClipList.add(clip);
    }

    private void addVideoTailFrameListToQueue() {
        PixelFrame pixelFrame;
        if (this.mTailWaterMarkDurationMs <= 0 || this.mTailPixelFrameList.isEmpty()) {
            return;
        }
        long j10 = 40;
        List<Clip> list = this.mClipList;
        if (list != null && !list.isEmpty()) {
            float f10 = this.mClipList.get(0).fps;
            if (f10 > 0.0f) {
                j10 = 1000.0f / f10;
            }
        }
        int i9 = (int) (this.mTailWaterMarkDurationMs / j10);
        for (int i10 = 0; i10 < i9; i10++) {
            LinkedList linkedList = new LinkedList();
            for (PixelFrame pixelFrame2 : this.mTailPixelFrameList) {
                if (pixelFrame2 instanceof e.b) {
                    e.b bVar = (e.b) pixelFrame2;
                    pixelFrame = bVar.f31838a.a(bVar.getGLContext());
                } else {
                    LiteavLog.w(this.mTAG, "addVideoTailFrameListToQueue: pixelFrame is not TextureFrame");
                    pixelFrame = new PixelFrame(pixelFrame2);
                }
                pixelFrame.setTimestamp((i10 * j10) + pixelFrame2.getTimestamp());
                linkedList.add(pixelFrame);
            }
            this.mPixelFrameListQueue.queue(linkedList);
        }
    }

    private void adjustAudioFrameTimestamp(List<AudioFrame> list) {
        if (com.tencent.liteav.videobase.utils.c.a(list)) {
            return;
        }
        AudioFrame audioFrame = list.get(0);
        long calculateAudioFrameDuration = calculateAudioFrameDuration(audioFrame);
        if (this.mLastAudioFrameTimestamp != -1) {
            long timestamp = audioFrame.getTimestamp();
            long j10 = this.mLastAudioFrameTimestamp;
            if (timestamp < j10 + calculateAudioFrameDuration) {
                if (calculateAudioFrameDuration <= 0) {
                    calculateAudioFrameDuration = 1;
                }
                long j11 = j10 + calculateAudioFrameDuration;
                this.mLastAudioFrameTimestamp = j11;
                audioFrame.setTimestamp(j11);
                return;
            }
        }
        this.mLastAudioFrameTimestamp = audioFrame.getTimestamp();
    }

    private void adjustPixelFrameTimestamp(List<PixelFrame> list) {
        if (com.tencent.liteav.videobase.utils.c.a(list)) {
            return;
        }
        PixelFrame pixelFrame = list.get(0);
        if (this.mLastVideoFrameTimestamp != -1) {
            long timestamp = pixelFrame.getTimestamp();
            long j10 = this.mLastVideoFrameTimestamp;
            if (timestamp <= j10) {
                long j11 = j10 + 1;
                this.mLastVideoFrameTimestamp = j11;
                pixelFrame.setTimestamp(j11);
                return;
            }
        }
        this.mLastVideoFrameTimestamp = pixelFrame.getTimestamp();
    }

    private long calculateAudioFrameDuration(AudioFrame audioFrame) {
        if (audioFrame == null || audioFrame.getData() == null) {
            return 0L;
        }
        long sampleRate = audioFrame.getSampleRate() * 2 * audioFrame.getChannelCount();
        if (sampleRate == 0) {
            return 0L;
        }
        return (audioFrame.getData().limit() * 1000) / sampleRate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long calculateTotalDurationOfClips() {
        if (isImageSource()) {
            return getImageDuration();
        }
        long j10 = 0;
        if (this.mIsMediaSourceOverlapped) {
            for (Clip clip : this.mClipList) {
                if (j10 < getClipDuration(clip)) {
                    j10 = getClipDuration(clip);
                }
            }
            return j10;
        }
        for (Clip clip2 : this.mClipList) {
            j10 += getClipDuration(clip2);
        }
        long j11 = this.mSourceRangeEnd - this.mSourceRangeStart;
        return j11 < j10 ? j11 : j10;
    }

    private void clearFrameQueue() {
        for (List<PixelFrame> list : this.mPixelFrameListQueue.dequeueAll()) {
            PixelFrame.releasePixelFrames(list);
        }
        this.mAudioFrameListQueue.clear();
        this.mLastVideoFrameTimestamp = -1L;
        this.mLastAudioFrameTimestamp = -1L;
    }

    private void closeCurrentAudioFrameProvider() {
        UGCAudioFrameProvider uGCAudioFrameProvider = this.mCurrentAudioFrameProvider;
        if (uGCAudioFrameProvider == null) {
            return;
        }
        uGCAudioFrameProvider.stop();
        this.mCurrentAudioFrameProvider.uninitialize();
        this.mCurrentAudioFrameProvider = null;
    }

    private void closeCurrentPixelFrameProvider() {
        UGCPixelFrameProvider uGCPixelFrameProvider = this.mCurrentPixelFrameProvider;
        if (uGCPixelFrameProvider == null) {
            return;
        }
        uGCPixelFrameProvider.stop();
        this.mCurrentPixelFrameProvider.uninitialize();
        this.mCurrentPixelFrameProvider = null;
    }

    private void closeNextPixelFrameProvider() {
        UGCPixelFrameProvider uGCPixelFrameProvider = this.mNextPixelFrameProvider;
        if (uGCPixelFrameProvider == null) {
            return;
        }
        uGCPixelFrameProvider.stop();
        this.mNextPixelFrameProvider.uninitialize();
        this.mNextPixelFrameProvider = null;
    }

    private UGCPixelFrameProvider createImageProvider() {
        UGCImageProvider uGCImageProvider = new UGCImageProvider(this.mBitmapList, this.mFps);
        uGCImageProvider.initialize();
        uGCImageProvider.start();
        uGCImageProvider.setPictureTransition(this.mTransitionType);
        return uGCImageProvider;
    }

    private UGCAudioFrameProvider createMuteAudioProvider() {
        Clip clip = new Clip();
        clip.path = UGCSingleFileAudioFrameProvider.MUTE_VIRTUAL_FILE_PATH;
        clip.startInClipsTimeline = 0L;
        clip.startTimelineNoSpeed = 0L;
        clip.startInFileTime = 0L;
        clip.endInFileTime = getImageDuration();
        UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider = new UGCSingleFileAudioFrameProvider(clip, this.mAudioHandler);
        uGCSingleFileAudioFrameProvider.initialize();
        uGCSingleFileAudioFrameProvider.start();
        return uGCSingleFileAudioFrameProvider;
    }

    private TXVideoEditConstants.TXSpeed createTXSpeed(long j10, long j11, int i9) {
        TXVideoEditConstants.TXSpeed tXSpeed = new TXVideoEditConstants.TXSpeed();
        tXSpeed.startTime = j10;
        tXSpeed.endTime = j11;
        tXSpeed.speedLevel = i9;
        return tXSpeed;
    }

    private UGCPixelFrameProvider createVideoFileProvider(int i9, boolean z10) {
        UGCPixelFrameProvider uGCPixelFrameProvider;
        if (this.mVideoHandler == null) {
            HandlerThread handlerThread = new HandlerThread("Video-File-Provider");
            handlerThread.start();
            this.mVideoHandler = new CustomHandler(handlerThread.getLooper());
        }
        if (z10) {
            uGCPixelFrameProvider = new UGCMultiFilePixelFrameProvider(this.mClipList, this.mVideoHandler);
        } else {
            UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider = new UGCSingleFilePixelFrameProvider(this.mClipList.get(i9), this.mVideoHandler);
            uGCSingleFilePixelFrameProvider.setPlayEndPts(this.mPlayEndTime);
            uGCPixelFrameProvider = uGCSingleFilePixelFrameProvider;
        }
        uGCPixelFrameProvider.initialize();
        uGCPixelFrameProvider.setReverse(this.mIsReverse);
        uGCPixelFrameProvider.start();
        return uGCPixelFrameProvider;
    }

    private void cutMultipleFileToClips() {
        for (a aVar : this.mMediaInfoList) {
            addClipToList(0L, aVar.f34659b, aVar);
        }
    }

    private void cutSingleVideoFileToClips() {
        long j10;
        long j11 = this.mSourceRangeStart;
        List<TXVideoEditConstants.TXRepeat> list = this.mRepeatList;
        if (list == null || list.isEmpty()) {
            j10 = j11;
        } else {
            Collections.sort(this.mRepeatList, dv.a());
            j10 = j11;
            for (TXVideoEditConstants.TXRepeat tXRepeat : this.mRepeatList) {
                if (!isInvalidRepeat(tXRepeat)) {
                    long j12 = tXRepeat.endTime;
                    long j13 = this.mSourceRangeEnd;
                    if (j12 <= j13) {
                        j13 = j12;
                    }
                    addClipToList(j10, j13, this.mMediaInfoList.get(0));
                    for (int i9 = 0; i9 < tXRepeat.repeatTimes - 1; i9++) {
                        addClipToList(tXRepeat.startTime, j13, this.mMediaInfoList.get(0));
                    }
                    j10 = j13;
                }
            }
        }
        long j14 = this.mTotalDuration;
        long j15 = this.mSourceRangeEnd;
        if (j14 > j15) {
            j14 = j15;
        }
        if (j10 < j14) {
            addClipToList(j10, j14, this.mMediaInfoList.get(0));
        }
    }

    private long estimateSourceOpenTime() {
        List<String> list = this.mSources;
        if (list == null || list.size() <= 1) {
            return 1000L;
        }
        return 1000 * list.size();
    }

    private long getClipDuration(Clip clip) {
        List<TXVideoEditConstants.TXSpeed> list = clip.speedList;
        if (list == null) {
            return clip.endInFileTime - clip.startInFileTime;
        }
        long j10 = 0;
        for (TXVideoEditConstants.TXSpeed tXSpeed : list) {
            j10 = ((float) j10) + (((float) (tXSpeed.endTime - tXSpeed.startTime)) / getSpeed(tXSpeed.speedLevel));
        }
        return j10;
    }

    private long getImageDuration() {
        if (isImageSource() && updateCurrentPixelFrameProvider()) {
            UGCPixelFrameProvider uGCPixelFrameProvider = this.mCurrentPixelFrameProvider;
            if (uGCPixelFrameProvider instanceof UGCImageProvider) {
                return ((UGCImageProvider) uGCPixelFrameProvider).getDuration();
            }
            return 0L;
        }
        return 0L;
    }

    private static a getMediaInfo(String str) {
        a aVar = new a((byte) 0);
        FFmpegMediaRetriever fFmpegMediaRetriever = new FFmpegMediaRetriever();
        if (fFmpegMediaRetriever.setDataSource(str) == 0) {
            long audioDurationMs = fFmpegMediaRetriever.getAudioDurationMs();
            aVar.f34659b = Math.max(audioDurationMs, fFmpegMediaRetriever.getVideoDurationMs());
            aVar.f34660c = audioDurationMs != 0;
            aVar.f34661d = fFmpegMediaRetriever.getFPS();
            aVar.f34663f = fFmpegMediaRetriever.getVideoMimeType();
        }
        return aVar;
    }

    public static float getSpeed(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 3) {
                    return i9 != 4 ? 1.0f : 2.0f;
                }
                return 1.5f;
            }
            return 0.5f;
        }
        return 0.25f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasAudioDataInternal() {
        for (a aVar : this.mMediaInfoList) {
            if (aVar.f34660c) {
                return true;
            }
        }
        return false;
    }

    private boolean isImageSource() {
        List<Bitmap> list;
        return (this.mClipList.size() != 0 || (list = this.mBitmapList) == null || list.size() == 0) ? false : true;
    }

    private boolean isInvalidRepeat(TXVideoEditConstants.TXRepeat tXRepeat) {
        if (tXRepeat.repeatTimes > 0) {
            long j10 = tXRepeat.startTime;
            long j11 = tXRepeat.endTime;
            return j10 >= j11 || j10 > this.mSourceRangeEnd || j11 < this.mSourceRangeStart;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$cutSingleVideoFileToClips$1(TXVideoEditConstants.TXRepeat tXRepeat, TXVideoEditConstants.TXRepeat tXRepeat2) {
        return (int) (tXRepeat.startTime - tXRepeat2.startTime);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setIsMediaSourceOverlapped$3(UGCMediaListSource uGCMediaListSource, boolean z10) {
        uGCMediaListSource.mIsMediaSourceOverlapped = z10;
        uGCMediaListSource.mSourceRangeStart = 0L;
        uGCMediaListSource.mSourceRangeEnd = 2147483647L;
        uGCMediaListSource.updateTimelineToClips();
        uGCMediaListSource.mCalculateDurationTask.run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setPictureList$5(UGCMediaListSource uGCMediaListSource, List list, int i9) {
        uGCMediaListSource.resetReadPositionInternal();
        uGCMediaListSource.mClipList.clear();
        uGCMediaListSource.mBitmapList = list;
        uGCMediaListSource.mFps = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setPictureTransition$6(UGCMediaListSource uGCMediaListSource, int i9) {
        uGCMediaListSource.resetReadPositionInternal();
        uGCMediaListSource.mTransitionType = i9;
        uGCMediaListSource.updateCurrentPixelFrameProvider();
        FutureTask<Long> futureTask = new FutureTask<>(ds.a(uGCMediaListSource));
        uGCMediaListSource.mCalculateDurationTask = futureTask;
        futureTask.run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setPlayEndTime$9(UGCMediaListSource uGCMediaListSource, long j10) {
        uGCMediaListSource.mPlayEndTime = j10;
        UGCPixelFrameProvider uGCPixelFrameProvider = uGCMediaListSource.mCurrentPixelFrameProvider;
        if (uGCPixelFrameProvider != null) {
            uGCPixelFrameProvider.setPlayEndPts(j10);
        }
        UGCAudioFrameProvider uGCAudioFrameProvider = uGCMediaListSource.mCurrentAudioFrameProvider;
        if (uGCAudioFrameProvider != null) {
            uGCAudioFrameProvider.setPlayEndPts(j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setRepeatPlay$11(UGCMediaListSource uGCMediaListSource, List list) {
        uGCMediaListSource.mRepeatList = list;
        uGCMediaListSource.updateClipsInfo();
        uGCMediaListSource.resetReadPositionInternal();
        uGCMediaListSource.mCalculateDurationTask.run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setReverse$12(UGCMediaListSource uGCMediaListSource, boolean z10) {
        uGCMediaListSource.clearFrameQueue();
        PixelFrame.releasePixelFrames(uGCMediaListSource.mTailPixelFrameList);
        uGCMediaListSource.mLastAudioFrameTimestamp = -1L;
        uGCMediaListSource.mLastVideoFrameTimestamp = -1L;
        uGCMediaListSource.mIsReverse = z10;
        uGCMediaListSource.closeCurrentPixelFrameProvider();
        if (z10) {
            uGCMediaListSource.mCurrentVideoClipIndex = uGCMediaListSource.mClipList.size() - 1;
        } else {
            uGCMediaListSource.mCurrentVideoClipIndex = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setSpeedList$13(UGCMediaListSource uGCMediaListSource, List list) {
        uGCMediaListSource.mSpeedList = list;
        uGCMediaListSource.updateClipsInfo();
        uGCMediaListSource.resetReadPositionInternal();
        uGCMediaListSource.mCalculateDurationTask.run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setVideoSourceRange$4(UGCMediaListSource uGCMediaListSource, long j10, long j11) {
        if (uGCMediaListSource.mIsMediaSourceOverlapped) {
            uGCMediaListSource.mCalculateDurationTask.run();
            return;
        }
        uGCMediaListSource.mSourceRangeStart = j10;
        uGCMediaListSource.mSourceRangeEnd = j11;
        uGCMediaListSource.updateClipsInfo();
        uGCMediaListSource.resetReadPositionInternal();
        uGCMediaListSource.mCalculateDurationTask.run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setVideoSources$0(UGCMediaListSource uGCMediaListSource, List list) {
        uGCMediaListSource.setVideoSourcesInternal(list);
        uGCMediaListSource.mHasAudioDataTask.run();
        uGCMediaListSource.mCalculateDurationTask.run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$updateSpeedInfoToClips$2(TXVideoEditConstants.TXSpeed tXSpeed, TXVideoEditConstants.TXSpeed tXSpeed2) {
        return (int) (tXSpeed.startTime - tXSpeed2.startTime);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadNextAudioFrameInternal(long j10) {
        if (this.mAudioFrameListQueue.size() > 5) {
            return;
        }
        if (!updateCurrentAudioFrameProvider()) {
            LiteavLog.i(this.mTAG, "getAudioFrameProvider fail.AudioFrameListQueue put null");
            this.mAudioFrameListQueue.queue(null);
            return;
        }
        long j11 = this.mAudioSeekTimeInClip;
        if (j11 != -1) {
            this.mCurrentAudioFrameProvider.seekTo(j11);
            this.mCurrentAudioFrameProvider.setPlayEndPts(this.mPlayEndTime);
            this.mAudioSeekTimeInClip = -1L;
        }
        readAudioFrameListToQueue(j10);
        CustomHandler customHandler = this.mWorkHandler;
        if (customHandler != null) {
            customHandler.post(dn.a(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadNextVideoFrameInternal(long j10) {
        if (this.mPixelFrameListQueue.size() >= 5) {
            return;
        }
        if (!updateCurrentPixelFrameProvider()) {
            LiteavLog.i(this.mTAG, "getPixelFrameProvider fail.PixelFrameListQueue put null");
            addVideoTailFrameListToQueue();
            this.mPixelFrameListQueue.queue(null);
            return;
        }
        long j11 = this.mVideoSeekTimeInClip;
        if (j11 != -1) {
            this.mCurrentPixelFrameProvider.seekTo(j11, this.mIsPreciseSeek);
            this.mCurrentPixelFrameProvider.setPlayEndPts(this.mPlayEndTime);
            this.mVideoSeekTimeInClip = -1L;
        }
        readVideoFrameListToQueue(j10);
        CustomHandler customHandler = this.mWorkHandler;
        if (customHandler != null) {
            customHandler.post(Cdo.a(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prePareNextUGCPixelFrameProvider() {
        int i9;
        closeNextPixelFrameProvider();
        if (this.mIsReverse) {
            this.mNextVideoClipIndex = this.mCurrentVideoClipIndex - 1;
        } else {
            this.mNextVideoClipIndex = this.mCurrentVideoClipIndex + 1;
        }
        if (this.mNextVideoClipIndex >= this.mClipList.size() || (i9 = this.mNextVideoClipIndex) < 0) {
            return;
        }
        this.mNextPixelFrameProvider = createVideoFileProvider(i9, false);
    }

    private void readAudioFrameListToQueue(long j10) {
        List<AudioFrame> dequeue = this.mCurrentAudioFrameProvider.getFrameQueue().dequeue(j10);
        if (dequeue == null) {
            return;
        }
        if (dequeue == UGCAudioFrameProvider.END_OF_STREAM) {
            LiteavLog.i(this.mTAG, "audio frame provider read END_OF_STREAM");
            closeCurrentAudioFrameProvider();
            if (this.mIsReverse) {
                this.mCurrentAudioClipIndex--;
                return;
            } else {
                this.mCurrentAudioClipIndex++;
                return;
            }
        }
        if (!this.mIsMediaSourceOverlapped) {
            adjustAudioFrameTimestamp(dequeue);
        }
        this.mAudioFrameListQueue.queue(dequeue);
    }

    private void readVideoFrameListToQueue(long j10) {
        List<PixelFrame> dequeue = this.mCurrentPixelFrameProvider.getFrameQueue().dequeue(j10);
        if (dequeue == null) {
            return;
        }
        if (dequeue == UGCPixelFrameProvider.END_OF_STREAM) {
            LiteavLog.i(this.mTAG, "video frame provider read END_OF_STREAM");
            closeCurrentPixelFrameProvider();
            if (this.mIsReverse) {
                this.mCurrentVideoClipIndex--;
                return;
            } else {
                this.mCurrentVideoClipIndex++;
                return;
            }
        }
        if (!this.mIsMediaSourceOverlapped) {
            adjustPixelFrameTimestamp(dequeue);
        }
        this.mPixelFrameListQueue.queue(dequeue);
        saveTailVideoFrameToList(dequeue);
    }

    private void removeRunnable(Runnable runnable) {
        CustomHandler customHandler = this.mWorkHandler;
        if (customHandler != null) {
            customHandler.removeCallbacks(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetReadPositionInternal() {
        clearFrameQueue();
        PixelFrame.releasePixelFrames(this.mTailPixelFrameList);
        closeCurrentPixelFrameProvider();
        closeCurrentAudioFrameProvider();
        this.mCurrentVideoClipIndex = 0;
        this.mCurrentAudioClipIndex = 0;
        this.mVideoSeekTimeInClip = -1L;
        this.mAudioSeekTimeInClip = -1L;
        this.mLastAudioFrameTimestamp = -1L;
        this.mLastVideoFrameTimestamp = -1L;
    }

    private void runOnWorkThread(Runnable runnable) {
        runOnWorkThread(runnable, 0);
    }

    private void saveTailVideoFrameToList(List<PixelFrame> list) {
        if (this.mTailWaterMarkDurationMs == 0) {
            return;
        }
        for (PixelFrame pixelFrame : this.mTailPixelFrameList) {
            pixelFrame.release();
        }
        this.mTailPixelFrameList.clear();
        for (PixelFrame pixelFrame2 : list) {
            pixelFrame2.retain();
            this.mTailPixelFrameList.add(pixelFrame2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seekToInternal(long j10, boolean z10) {
        if (isImageSource()) {
            seekToInternalWithImageSource(j10);
        } else if (this.mClipList.isEmpty()) {
        } else {
            this.mLastAudioFrameTimestamp = -1L;
            this.mLastVideoFrameTimestamp = -1L;
            if (this.mIsMediaSourceOverlapped) {
                this.mVideoSeekTimeInClip = j10;
                this.mAudioSeekTimeInClip = j10;
                clearFrameQueue();
                PixelFrame.releasePixelFrames(this.mTailPixelFrameList);
                return;
            }
            int i9 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= this.mClipList.size()) {
                    break;
                }
                Clip clip = this.mClipList.get(i10);
                if (clip.startInClipsTimeline + (clip.endInFileTime - clip.startInFileTime) >= j10) {
                    i9 = i10;
                    break;
                }
                i10++;
            }
            if (i9 >= 0) {
                this.mVideoSeekTimeInClip = j10 - this.mClipList.get(i9).startInClipsTimeline;
            } else {
                this.mVideoSeekTimeInClip = j10;
            }
            long j11 = this.mVideoSeekTimeInClip;
            this.mAudioSeekTimeInClip = j11;
            if (this.mIsReverse) {
                this.mAudioSeekTimeInClip = this.mTotalDuration - j11;
            }
            this.mIsPreciseSeek = z10;
            if (this.mCurrentVideoClipIndex != i9) {
                closeCurrentPixelFrameProvider();
            }
            if (this.mCurrentAudioClipIndex != i9) {
                closeCurrentAudioFrameProvider();
            }
            this.mCurrentVideoClipIndex = i9;
            this.mCurrentAudioClipIndex = i9;
            clearFrameQueue();
            PixelFrame.releasePixelFrames(this.mTailPixelFrameList);
            loadNextVideoFrameInternal(0L);
            loadNextAudioFrameInternal(0L);
        }
    }

    private void seekToInternalWithImageSource(long j10) {
        this.mCurrentVideoClipIndex = 0;
        this.mVideoSeekTimeInClip = j10;
        clearFrameQueue();
        PixelFrame.releasePixelFrames(this.mTailPixelFrameList);
        loadNextVideoFrameInternal(0L);
    }

    private void setVideoSourcesInternal(List<String> list) {
        resetReadPositionInternal();
        this.mSources = list;
        this.mMediaInfoList.clear();
        this.mTotalDuration = 0L;
        for (String str : list) {
            a mediaInfo = getMediaInfo(str);
            String str2 = this.mTAG;
            LiteavLog.i(str2, str + "getMediaInfo duration = " + mediaInfo.f34659b);
            long j10 = this.mTotalDuration;
            mediaInfo.f34658a = j10;
            mediaInfo.f34662e = str;
            this.mTotalDuration = j10 + mediaInfo.f34659b;
            this.mMediaInfoList.add(mediaInfo);
        }
        this.mSourceRangeStart = 0L;
        this.mSourceRangeEnd = this.mTotalDuration;
        updateClipsInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uninitializeInternal() {
        closeCurrentPixelFrameProvider();
        closeNextPixelFrameProvider();
        closeCurrentAudioFrameProvider();
        CustomHandler customHandler = this.mVideoHandler;
        if (customHandler != null) {
            customHandler.a();
            this.mVideoHandler = null;
        }
        CustomHandler customHandler2 = this.mAudioHandler;
        if (customHandler2 != null) {
            customHandler2.a();
            this.mAudioHandler = null;
        }
        clearFrameQueue();
        PixelFrame.releasePixelFrames(this.mTailPixelFrameList);
        this.mClipList.clear();
        this.mMediaInfoList.clear();
        this.mSources = null;
        this.mRepeatList = null;
        this.mSpeedList = null;
        this.mSourceRangeStart = 0L;
        this.mSourceRangeEnd = 2147483647L;
        this.mCurrentVideoClipIndex = 0;
        this.mCurrentAudioClipIndex = 0;
        this.mVideoSeekTimeInClip = -1L;
        this.mAudioSeekTimeInClip = -1L;
        this.mLastAudioFrameTimestamp = -1L;
        this.mLastVideoFrameTimestamp = -1L;
        this.mIsReverse = false;
        this.mNextVideoClipIndex = 0;
        CustomHandler customHandler3 = this.mWorkHandler;
        if (customHandler3 != null) {
            customHandler3.a();
            this.mWorkHandler = null;
        }
    }

    private void updateClipsInfo() {
        LiteavLog.i(this.mTAG, "updateClipsInfo");
        List<String> list = this.mSources;
        if (list == null || list.isEmpty()) {
            return;
        }
        this.mClipList.clear();
        if (this.mSources.size() > 1) {
            cutMultipleFileToClips();
        } else {
            cutSingleVideoFileToClips();
        }
        for (Clip clip : this.mClipList) {
            updateSpeedInfoToClips(clip);
        }
        updateTimelineToClips();
    }

    private boolean updateCurrentAudioFrameProvider() {
        int i9;
        if (this.mCurrentAudioFrameProvider != null) {
            return true;
        }
        if (this.mAudioHandler == null) {
            HandlerThread handlerThread = new HandlerThread("Audio-File-Provider");
            handlerThread.start();
            this.mAudioHandler = new CustomHandler(handlerThread.getLooper());
        }
        if (isImageSource() && this.mCurrentAudioClipIndex == 0) {
            this.mCurrentAudioFrameProvider = createMuteAudioProvider();
            return true;
        } else if (this.mCurrentAudioClipIndex >= this.mClipList.size() || (i9 = this.mCurrentAudioClipIndex) < 0) {
            return false;
        } else {
            if (this.mIsMediaSourceOverlapped) {
                this.mCurrentAudioFrameProvider = new UGCMultiFileAudioFrameProvider(this.mClipList, this.mAudioHandler);
                this.mCurrentAudioClipIndex = this.mClipList.size();
            } else {
                this.mCurrentAudioFrameProvider = new UGCSingleFileAudioFrameProvider(this.mClipList.get(i9), this.mAudioHandler);
            }
            this.mCurrentAudioFrameProvider.initialize();
            this.mCurrentAudioFrameProvider.start();
            return true;
        }
    }

    private boolean updateCurrentPixelFrameProvider() {
        int i9;
        if (this.mCurrentPixelFrameProvider != null) {
            return true;
        }
        if (isImageSource() && this.mCurrentVideoClipIndex == 0) {
            this.mCurrentPixelFrameProvider = createImageProvider();
            return true;
        } else if (this.mCurrentVideoClipIndex >= this.mClipList.size() || (i9 = this.mCurrentVideoClipIndex) < 0) {
            return false;
        } else {
            if (!this.mIsMediaSourceOverlapped) {
                if (i9 == this.mNextVideoClipIndex) {
                    this.mCurrentPixelFrameProvider = this.mNextPixelFrameProvider;
                    this.mNextPixelFrameProvider = null;
                }
                if (this.mCurrentPixelFrameProvider == null) {
                    this.mCurrentPixelFrameProvider = createVideoFileProvider(i9, false);
                }
                removeRunnable(dp.a(this));
                runOnWorkThread(dq.a(this), 500);
            } else {
                this.mCurrentPixelFrameProvider = createVideoFileProvider(0, true);
                this.mCurrentVideoClipIndex = this.mClipList.size();
            }
            return true;
        }
    }

    private void updateSpeedInfoToClips(Clip clip) {
        List<TXVideoEditConstants.TXSpeed> list = this.mSpeedList;
        if (list == null || list.isEmpty()) {
            return;
        }
        Collections.sort(this.mSpeedList, dw.a());
        ArrayList arrayList = new ArrayList();
        long j10 = clip.startInFileTime;
        long j11 = j10;
        for (TXVideoEditConstants.TXSpeed tXSpeed : this.mSpeedList) {
            long j12 = tXSpeed.startTime;
            long j13 = clip.startInSourceListTimeline;
            long j14 = j12 - j13;
            long j15 = tXSpeed.endTime - j13;
            if (j15 >= clip.startInFileTime) {
                long j16 = clip.endInFileTime;
                if (j14 > j16 || j11 >= j16) {
                    break;
                }
                if (j14 > j11) {
                    arrayList.add(createTXSpeed(j11, j14, 2));
                    j11 = j14;
                }
                TXVideoEditConstants.TXSpeed createTXSpeed = createTXSpeed(j11, j15, tXSpeed.speedLevel);
                long j17 = createTXSpeed.endTime;
                long j18 = clip.endInFileTime;
                if (j17 > j18) {
                    createTXSpeed.endTime = j18;
                }
                arrayList.add(createTXSpeed);
                j11 = createTXSpeed.endTime;
            }
        }
        long j19 = clip.endInFileTime;
        if (j11 != j19) {
            arrayList.add(createTXSpeed(j11, j19, 2));
        }
        clip.speedList = arrayList;
    }

    private void updateTimelineToClips() {
        long j10 = 0;
        long j11 = 0;
        for (Clip clip : this.mClipList) {
            clip.startInClipsTimeline = j10;
            clip.startTimelineNoSpeed = j11;
            if (!this.mIsMediaSourceOverlapped) {
                j10 += getClipDuration(clip);
                j11 += clip.endInFileTime - clip.startInFileTime;
            }
        }
    }

    public long getDuration() {
        FutureTask<Long> futureTask = this.mCalculateDurationTask;
        if (futureTask == null) {
            return 0L;
        }
        Long l10 = 0L;
        try {
            l10 = futureTask.get(estimateSourceOpenTime(), TimeUnit.MILLISECONDS);
        } catch (Exception e10) {
            LiteavLog.w(this.mTAG, "getDuration future task exception: ".concat(String.valueOf(e10)));
        }
        return l10.longValue();
    }

    public boolean hasAudioData() {
        FutureTask<Boolean> futureTask = this.mHasAudioDataTask;
        if (futureTask == null) {
            return false;
        }
        Boolean bool = Boolean.FALSE;
        try {
            bool = futureTask.get(estimateSourceOpenTime(), TimeUnit.MILLISECONDS);
        } catch (Exception e10) {
            LiteavLog.w(this.mTAG, "hasAudioData future exception ".concat(String.valueOf(e10)));
        }
        return bool.booleanValue();
    }

    public void impreciseSeekTo(long j10) {
        LiteavLog.i(this.mTAG, "impreciseSeekTo lineTime = ".concat(String.valueOf(j10)));
        seekTo(j10, false);
    }

    public void initialize() {
        LiteavLog.i(this.mTAG, "initialize");
        synchronized (this) {
            if (this.mWorkHandler != null) {
                LiteavLog.w(this.mTAG, "UGCMediaStreamSpliter is initialized");
                return;
            }
            HandlerThread handlerThread = new HandlerThread("ugc-media-list-source");
            handlerThread.start();
            this.mWorkHandler = new CustomHandler(handlerThread.getLooper());
        }
    }

    public List<AudioFrame> readNextAudioFrame() {
        runOnWorkThread(dc.a(this));
        return this.mAudioFrameListQueue.dequeue();
    }

    public List<PixelFrame> readNextVideoFrame() {
        runOnWorkThread(dd.a(this));
        return this.mPixelFrameListQueue.dequeue();
    }

    public void resetReadPosition() {
        LiteavLog.i(this.mTAG, "resetReadPosition");
        runOnWorkThread(dg.a(this));
    }

    public void seekTo(long j10) {
        LiteavLog.i(this.mTAG, "seekTo lineTime = ".concat(String.valueOf(j10)));
        seekTo(com.tencent.liteav.base.util.g.a(j10, 0L, this.mTotalDuration), true);
    }

    public void setIsMediaSourceOverlapped(boolean z10) {
        LiteavLog.i(this.mTAG, "setIsMediaSourceOverlapped isMediaSourceOverlapped = ".concat(String.valueOf(z10)));
        this.mCalculateDurationTask = new FutureTask<>(dx.a(this));
        runOnWorkThread(dy.a(this, z10));
    }

    public void setPictureList(List<Bitmap> list, int i9) {
        String str = this.mTAG;
        LiteavLog.i(str, "setPictureList bitmapList size = " + list.size() + " fps = " + i9);
        runOnWorkThread(da.a(this, list, i9));
    }

    public void setPictureTransition(int i9) {
        LiteavLog.i(this.mTAG, "setPictureTransition type = ".concat(String.valueOf(i9)));
        runOnWorkThread(db.a(this, i9));
    }

    public void setPlayEndTime(long j10) {
        runOnWorkThread(de.a(this, j10));
    }

    public void setRepeatPlay(List<TXVideoEditConstants.TXRepeat> list) {
        LiteavLog.i(this.mTAG, "setRepeatPlay");
        this.mCalculateDurationTask = new FutureTask<>(dh.a(this));
        runOnWorkThread(di.a(this, list));
    }

    public void setReverse(boolean z10) {
        LiteavLog.i(this.mTAG, "setReverse isReverse = ".concat(String.valueOf(z10)));
        if (z10 == this.mIsReverse) {
            return;
        }
        runOnWorkThread(dk.a(this, z10));
    }

    public void setSpeedList(List<TXVideoEditConstants.TXSpeed> list) {
        LiteavLog.i(this.mTAG, "setSpeedList");
        this.mCalculateDurationTask = new FutureTask<>(dl.a(this));
        runOnWorkThread(dm.a(this, list));
    }

    public void setTailWaterMarkDurationSecond(int i9) {
        runOnWorkThread(dr.a(this, i9));
    }

    public void setVideoSourceRange(long j10, long j11) {
        String str = this.mTAG;
        LiteavLog.i(str, "setVideoSourceRange startTime = " + j10 + " endTime = " + j11);
        this.mCalculateDurationTask = new FutureTask<>(dz.a(this));
        runOnWorkThread(cz.a(this, j10, j11));
    }

    public void setVideoSources(List<String> list) {
        LiteavLog.i(this.mTAG, "setVideoSources");
        this.mHasAudioDataTask = new FutureTask<>(dj.a(this));
        this.mCalculateDurationTask = new FutureTask<>(dt.a(this));
        runOnWorkThread(du.a(this, list));
    }

    public long transitionOffsetTimeWithPts(long j10) {
        return 0L;
    }

    public void uninitialize() {
        LiteavLog.i(this.mTAG, "unInitialize");
        runOnWorkThread(cy.a(this));
    }

    private void runOnWorkThread(Runnable runnable, int i9) {
        CustomHandler customHandler = this.mWorkHandler;
        if (customHandler != null) {
            customHandler.a(runnable, i9);
        }
    }

    private void seekTo(long j10, boolean z10) {
        CustomHandler customHandler;
        if (j10 >= 0 && (customHandler = this.mWorkHandler) != null) {
            customHandler.a(df.a(this, j10, z10), 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public long f34658a;

        /* renamed from: b  reason: collision with root package name */
        public long f34659b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f34660c;

        /* renamed from: d  reason: collision with root package name */
        public float f34661d;

        /* renamed from: e  reason: collision with root package name */
        public String f34662e;

        /* renamed from: f  reason: collision with root package name */
        public String f34663f;

        private a() {
            this.f34658a = 0L;
            this.f34659b = 0L;
            this.f34660c = false;
            this.f34661d = 25.0f;
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }
}
