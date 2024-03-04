package com.tencent.ugc;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Looper;
import android.text.TextUtils;
import android.view.TextureView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.liteav.videoproducer.encoder.VideoEncodeParams;
import com.tencent.ugc.MP4Writer;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.UGCAVSyncer;
import com.tencent.ugc.UGCAudioProcessor;
import com.tencent.ugc.UGCThumbnailGenerator;
import com.tencent.ugc.UGCVideoProcessor;
import com.tencent.ugc.common.MediaExtractorBuilder;
import com.tencent.ugc.common.UGCConstants;
import com.tencent.ugc.common.UGCTranscodeAudioEncodeParamsDecider;
import com.tencent.ugc.common.UGCTranscodeVideoEncodeParamsDecider;
import com.tencent.ugc.datereport.UGCDataReport;
import com.tencent.ugc.datereport.UGCDataReportDef;
import com.tencent.ugc.retriver.FFmpegMediaRetriever;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class TXVideoEditer {
    private static final String TAG = "TXVideoEditer";
    private final long MIN_SEEK_DIR;
    @NonNull
    private final UGCAVSyncer mAVSyncer;
    private int mAudioEncodeBitrate;
    private final UGCAudioProcessor.AudioEncodedFrameListener mAudioEncodedFrameListener;
    private List<MediaFormat> mAudioFormatList;
    @NonNull
    private final UGCAudioProcessor mAudioProcessor;
    private MediaFormat mBGMFormat;
    private CombineFilterInfo mCombineFilterInfo;
    private final Context mContext;
    private long mCutEndTimeMs;
    private long mCutStartTimeMs;
    private int mEncodeProfile;
    private com.tencent.liteav.base.util.q mEncodeResolution;
    private FrameLayout mFrameLayout;
    private boolean mHasBGM;
    private final TXThumbnailListener mInnerThumbnailListener;
    private boolean mIsAudioEncoderStarted;
    private boolean mIsAudioEnd;
    private boolean mIsFullIFrame;
    private boolean mIsGenerating;
    private boolean mIsPlaying;
    private boolean mIsProcessToFullKeyFrame;
    private boolean mIsReverse;
    private boolean mIsVideoEncoderStarted;
    private boolean mIsVideoEnd;
    private final CustomHandler mMainHandler;
    @NonNull
    private final UGCMediaListSource mMediaListSource;
    private MP4Writer mMp4Writer;
    private final MP4Writer.MP4WriterListener mMp4WriterListener;
    private boolean mNeedWaitProcessFullI;
    private boolean mNeedWaitThumbnailProcess;
    private final AtomicReference<Long> mPendingPreviewAtTime;
    private UGCAVSyncer.SyncMode mPreviewSyncMode;
    private String mProcessOutputPath;
    private UGCThumbnailGenerator.UGCThumbnailGenerateParams mProcessThumbnailInfo;
    private TXThumbnailListener mProcessThumbnailListener;
    private Rotation mRotation;
    protected final com.tencent.liteav.base.util.j mSequenceTaskRunner;
    private String mSourcePath;
    private long mSourceRangeEndTimeMs;
    private long mSourceRangeStartTimeMs;
    private AtomicReference<Long> mTargetSeekPts;
    @NonNull
    private final UGCThumbnailGenerator mThumbnailGenerator;
    private int mVideoEncodeBitrate;
    private final UGCVideoProcessor.VideoEncodedFrameListener mVideoEncodedFrameListener;
    private List<MediaFormat> mVideoFormatList;
    private TXVideoGenerateListener mVideoGenerateListener;
    private TXVideoPreviewListener mVideoPreviewListener;
    private TXVideoProcessListener mVideoProcessListener;
    private final UGCVideoProcessor.VideoProcessListener mVideoProcessProgressListener;
    @NonNull
    private final UGCVideoProcessor mVideoProcessor;

    /* loaded from: classes4.dex */
    public interface TXPCMCallbackListener {
        TXAudioFrame onPCMCallback(TXAudioFrame tXAudioFrame);
    }

    /* loaded from: classes4.dex */
    public interface TXThumbnailListener {
        void onThumbnail(int i9, long j10, Bitmap bitmap);
    }

    /* loaded from: classes4.dex */
    public interface TXVideoCustomProcessListener {
        int onTextureCustomProcess(int i9, int i10, int i11, long j10);

        void onTextureDestroyed();
    }

    /* loaded from: classes4.dex */
    public interface TXVideoGenerateListener {
        void onGenerateComplete(TXVideoEditConstants.TXGenerateResult tXGenerateResult);

        void onGenerateProgress(float f10);
    }

    /* loaded from: classes4.dex */
    public interface TXVideoPreviewListener {
        void onPreviewFinished();

        void onPreviewProgress(int i9);
    }

    /* loaded from: classes4.dex */
    public interface TXVideoPreviewListenerEx extends TXVideoPreviewListener {
        void onPreviewError(TXVideoEditConstants.TXPreviewError tXPreviewError);
    }

    /* loaded from: classes4.dex */
    public interface TXVideoProcessListener {
        void onProcessComplete(TXVideoEditConstants.TXGenerateResult tXGenerateResult);

        void onProcessProgress(float f10);
    }

    public TXVideoEditer(Context context) {
        this(context, new com.tencent.liteav.base.util.j());
    }

    private float calculateProgress(long j10) {
        long duration = this.mMediaListSource.getDuration();
        if (duration == 0) {
            duration = 1;
        }
        return (((float) j10) * 1.0f) / ((float) duration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doGetThumbnail(List<Long> list, int i9, int i10, boolean z10, TXThumbnailListener tXThumbnailListener) {
        LiteavLog.i(TAG, "getThumbnail: width= " + i9 + " height= " + i10 + ",fast= " + z10 + ",list.size= " + list.size());
        UGCThumbnailGenerator.UGCThumbnailGenerateParams uGCThumbnailGenerateParams = new UGCThumbnailGenerator.UGCThumbnailGenerateParams();
        uGCThumbnailGenerateParams.thumbnailPtsList = list;
        uGCThumbnailGenerateParams.width = i9;
        uGCThumbnailGenerateParams.height = i10;
        uGCThumbnailGenerateParams.fast = z10;
        UGCThumbnailGenerator uGCThumbnailGenerator = new UGCThumbnailGenerator();
        uGCThumbnailGenerator.initialize();
        uGCThumbnailGenerator.setVideoSourceList(Collections.singletonList(this.mSourcePath));
        uGCThumbnailGenerator.start(uGCThumbnailGenerateParams, ay.a(tXThumbnailListener, list, uGCThumbnailGenerator));
    }

    private void doStopPlayInner() {
        LiteavLog.i(TAG, "doStopPlayInner");
        this.mVideoProcessor.setProgressListener(null);
        this.mAudioProcessor.setProgressListener(null);
        this.mAVSyncer.stop();
        this.mVideoProcessor.stop();
        this.mAudioProcessor.stop();
        this.mIsPlaying = false;
    }

    private boolean filtInvalidatedFrame(long j10) {
        return this.mTargetSeekPts.get() != null && Math.abs(j10 - this.mTargetSeekPts.get().longValue()) > 100;
    }

    private String generateVideoPath() {
        File externalFilesDir = this.mContext.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            LiteavLog.e(TAG, "generateVideoPath getExternalFilesDir return null.");
            return null;
        }
        File file = new File(externalFilesDir + File.separator + "liteav");
        if (!file.exists()) {
            file.mkdirs();
        }
        String valueOf = String.valueOf(System.currentTimeMillis() / 1000);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US);
        String format = simpleDateFormat.format(new Date(Long.parseLong(valueOf + "000")));
        return file + FileUtils.RES_PREFIX_STORAGE + String.format("TXVideo_%s_process.mp4", format);
    }

    private void getAllMediaFormatFromSource(List<String> list) {
        for (String str : list) {
            MediaExtractor build = new MediaExtractorBuilder().setPath(str).build();
            if (build != null) {
                int trackCount = build.getTrackCount();
                for (int i9 = 0; i9 < trackCount; i9++) {
                    MediaFormat trackFormat = build.getTrackFormat(i9);
                    String string = trackFormat.getString("mime");
                    if (string != null) {
                        if (string.startsWith("video/")) {
                            this.mVideoFormatList.add(trackFormat);
                        }
                        if (string.startsWith("audio/")) {
                            this.mAudioFormatList.add(trackFormat);
                        }
                    }
                }
            } else {
                LiteavLog.e(TAG, "build extractor fail.");
            }
        }
    }

    private void handleEncodedCompletedInner() {
        if (this.mIsAudioEnd && this.mIsVideoEnd) {
            LiteavLog.i(TAG, "handleEncodedCompleted");
            this.mAVSyncer.stop();
            stopMp4Writer();
        }
    }

    private void handleProcessThumbnail(int i9, int i10, TXThumbnailListener tXThumbnailListener) {
        UGCThumbnailGenerator.UGCThumbnailGenerateParams uGCThumbnailGenerateParams = this.mProcessThumbnailInfo;
        if (uGCThumbnailGenerateParams == null) {
            return;
        }
        if (uGCThumbnailGenerateParams.width == 0 || uGCThumbnailGenerateParams.height == 0) {
            uGCThumbnailGenerateParams.width = i9;
            uGCThumbnailGenerateParams.height = i10;
        }
        this.mThumbnailGenerator.setVideoSourceRange(this.mCutStartTimeMs, this.mCutEndTimeMs);
        UGCThumbnailGenerator.UGCThumbnailGenerateParams uGCThumbnailGenerateParams2 = this.mProcessThumbnailInfo;
        uGCThumbnailGenerateParams2.thumbnailPtsList = UGCThumbnailGenerator.calculateThumbnailList(uGCThumbnailGenerateParams2.thumbnailCount, 0L, this.mCutEndTimeMs - this.mCutStartTimeMs, this.mMediaListSource.getDuration());
        this.mThumbnailGenerator.start(this.mProcessThumbnailInfo, tXThumbnailListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWriteMP4Completed(int i9, long j10) {
        this.mSequenceTaskRunner.a(az.a(this, i9, j10));
    }

    private static int isAudioFormatValid(MediaExtractor mediaExtractor, boolean z10) {
        int trackCount = mediaExtractor.getTrackCount();
        if (trackCount <= 0) {
            LiteavLog.e("ContentValues", "isSourceValid: trackCount < 1!");
            return TXVideoEditConstants.ERR_SOURCE_NO_TRACK;
        }
        boolean z11 = false;
        for (int i9 = 0; i9 < trackCount; i9++) {
            String string = mediaExtractor.getTrackFormat(i9).getString("mime");
            if (string != null && string.startsWith("audio")) {
                z11 = true;
            }
        }
        if (!z10 || z11) {
            return 0;
        }
        return UGCConstants.ERR_BGM_NO_AUDIO_TRACK;
    }

    private int isBGMValid(String str) {
        FFmpegMediaRetriever fFmpegMediaRetriever = new FFmpegMediaRetriever(false);
        if (fFmpegMediaRetriever.setDataSource(str) != 0 || fFmpegMediaRetriever.getAudioDurationMs() <= 0) {
            return TXVideoEditConstants.ERR_UNSUPPORT_VIDEO_FORMAT;
        }
        return 0;
    }

    private boolean isFullIFrame(String str) {
        MediaExtractor build = new MediaExtractorBuilder().setPath(str).setMimeType("video/").build();
        if (build == null) {
            LiteavLog.w("ContentValues", "judgeFullIFrame: extractor is null.");
            return false;
        }
        build.seekTo(0L, 0);
        int i9 = 0;
        for (int i10 = 0; i10 < 7; i10++) {
            if ((build.getSampleFlags() & 1) == 1) {
                i9++;
            }
            build.advance();
        }
        return i9 > 5;
    }

    private boolean isGopEqualOne(String str) {
        MediaExtractor build = new MediaExtractorBuilder().setPath(str).setMimeType("video/").build();
        if (build == null) {
            LiteavLog.w(TAG, "extractor is null.");
            return false;
        }
        build.seekTo(1L, 1);
        long sampleTime = build.getSampleTime();
        build.release();
        return sampleTime > 100000 && sampleTime < 1100000;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int isMediaSourceValid(String str) {
        if (TextUtils.isEmpty(str)) {
            LiteavLog.e(TAG, "checkLegality: path is null.");
            return TXVideoEditConstants.ERR_SOURCE_NO_FOUND;
        }
        try {
            MediaExtractor build = new MediaExtractorBuilder().setPath(str).build();
            if (build == null) {
                LiteavLog.e(TAG, "checkLegality:source no found!");
                return TXVideoEditConstants.ERR_SOURCE_NO_FOUND;
            }
            build.release();
            return 0;
        } catch (Exception unused) {
            LiteavLog.e(TAG, "checkLegality: some error happen.");
            return TXVideoEditConstants.ERR_SOURCE_DAMAGED;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$cancel$50(TXVideoEditer tXVideoEditer) {
        LiteavLog.i(TAG, "cancel");
        tXVideoEditer.mIsGenerating = false;
        tXVideoEditer.mIsVideoEncoderStarted = false;
        tXVideoEditer.mIsAudioEncoderStarted = false;
        tXVideoEditer.mIsProcessToFullKeyFrame = false;
        tXVideoEditer.mThumbnailGenerator.stop();
        tXVideoEditer.mVideoProcessor.setVideoEncodedFrameListener(null);
        tXVideoEditer.mAudioProcessor.setAudioEncodedFrameListener(null);
        tXVideoEditer.mMediaListSource.setVideoSourceRange(0L, 2147483647L);
        tXVideoEditer.mMediaListSource.setTailWaterMarkDurationSecond(0);
        if (!tXVideoEditer.mIsPlaying) {
            tXVideoEditer.mAudioProcessor.stop();
            tXVideoEditer.mVideoProcessor.stop();
        }
        MP4Writer mP4Writer = tXVideoEditer.mMp4Writer;
        if (mP4Writer != null) {
            mP4Writer.setListener(null);
        }
        tXVideoEditer.stopMp4Writer();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$deleteAllEffect$31(TXVideoEditer tXVideoEditer) {
        LiteavLog.i(TAG, "deleteAllEffect");
        tXVideoEditer.mVideoProcessor.getEffectProcessor().deleteAllEffect();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$deleteLastEffect$30(TXVideoEditer tXVideoEditer) {
        LiteavLog.i(TAG, "deleteLastEffect");
        tXVideoEditer.mVideoProcessor.getEffectProcessor().deleteLastEffect();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$deleteLastTransitionEffect$27(TXVideoEditer tXVideoEditer) {
        LiteavLog.i(TAG, "deleteLastTransitionEffect");
        tXVideoEditer.mVideoProcessor.getTransitionProcessor().deleteLastTransitionEffect();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$doGetThumbnail$53(TXThumbnailListener tXThumbnailListener, List list, UGCThumbnailGenerator uGCThumbnailGenerator, int i9, long j10, Bitmap bitmap) {
        if (tXThumbnailListener != null) {
            tXThumbnailListener.onThumbnail(i9, j10, bitmap);
        }
        if (i9 == list.size()) {
            LiteavLog.i(TAG, "getThumbnail finished!");
            uGCThumbnailGenerator.stop();
            uGCThumbnailGenerator.uninitialize();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$generateVideo$49(TXVideoEditer tXVideoEditer, int i9, String str) {
        LiteavLog.i(TAG, "generateVideo: videoCompressed= " + i9 + ", videoOutputPath= " + str);
        if (!UGCLicenseChecker.isSimpleFunctionSupport()) {
            TXVideoEditConstants.TXGenerateResult tXGenerateResult = new TXVideoEditConstants.TXGenerateResult();
            tXGenerateResult.retCode = -5;
            tXGenerateResult.descMsg = "licence verify failed";
            TXVideoGenerateListener tXVideoGenerateListener = tXVideoEditer.mVideoGenerateListener;
            if (tXVideoGenerateListener != null) {
                tXVideoGenerateListener.onGenerateComplete(tXGenerateResult);
                return;
            }
            return;
        }
        UGCTranscodeVideoEncodeParamsDecider uGCTranscodeVideoEncodeParamsDecider = new UGCTranscodeVideoEncodeParamsDecider();
        uGCTranscodeVideoEncodeParamsDecider.setSourceType(UGCConstants.SourceType.VIDEO);
        uGCTranscodeVideoEncodeParamsDecider.setFullIFrame(tXVideoEditer.mIsFullIFrame);
        uGCTranscodeVideoEncodeParamsDecider.setOutputResolution(i9);
        uGCTranscodeVideoEncodeParamsDecider.setEncodeProfile(tXVideoEditer.mEncodeProfile);
        uGCTranscodeVideoEncodeParamsDecider.setInputVideoMediaFormat(tXVideoEditer.mVideoFormatList);
        UGCTranscodeAudioEncodeParamsDecider uGCTranscodeAudioEncodeParamsDecider = new UGCTranscodeAudioEncodeParamsDecider();
        uGCTranscodeAudioEncodeParamsDecider.setInputAudioMediaFormat(tXVideoEditer.mAudioFormatList);
        uGCTranscodeAudioEncodeParamsDecider.setBGMMediaFormat(tXVideoEditer.mBGMFormat);
        if (TextUtils.isEmpty(tXVideoEditer.mSourcePath)) {
            uGCTranscodeVideoEncodeParamsDecider.setSourceType(UGCConstants.SourceType.PICTURE);
        }
        int i10 = tXVideoEditer.mVideoEncodeBitrate;
        if (i10 != -1) {
            uGCTranscodeVideoEncodeParamsDecider.setEncodeBitrate(i10);
        }
        int i11 = tXVideoEditer.mAudioEncodeBitrate;
        if (i11 != -1) {
            uGCTranscodeAudioEncodeParamsDecider.setEncodeBitrate(i11);
        }
        com.tencent.liteav.base.util.q qVar = tXVideoEditer.mEncodeResolution;
        if (qVar != null) {
            uGCTranscodeVideoEncodeParamsDecider.setEncodeOutputSize(qVar);
        }
        VideoEncodeParams decidedEncodeParams = uGCTranscodeVideoEncodeParamsDecider.getDecidedEncodeParams();
        AudioEncodeParams decidedEncodeParams2 = uGCTranscodeAudioEncodeParamsDecider.getDecidedEncodeParams();
        tXVideoEditer.mIsProcessToFullKeyFrame = false;
        tXVideoEditer.mIsGenerating = true;
        tXVideoEditer.startRecord(str, decidedEncodeParams, decidedEncodeParams2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$getThumbnail$34(TXVideoEditer tXVideoEditer, int i9, int i10, boolean z10, int i11, TXThumbnailListener tXThumbnailListener) {
        LiteavLog.i(TAG, "getThumbnail: width= " + i9 + " height= " + i10 + ",fast= " + z10 + ",count= " + i11);
        FFmpegMediaRetriever fFmpegMediaRetriever = new FFmpegMediaRetriever();
        fFmpegMediaRetriever.setDataSource(tXVideoEditer.mSourcePath);
        List<Long> calculateThumbnailList = UGCThumbnailGenerator.calculateThumbnailList(i11, 0L, fFmpegMediaRetriever.getVideoDurationMs(), fFmpegMediaRetriever.getVideoDurationMs());
        if (calculateThumbnailList != null) {
            tXVideoEditer.doGetThumbnail(calculateThumbnailList, i9, i10, z10, tXThumbnailListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$handleWriteMP4Completed$54(TXVideoEditer tXVideoEditer, int i9, long j10) {
        LiteavLog.i(TAG, "handleWriteMP4Completed: mIsProcessToFullKeyFrame=" + tXVideoEditer.mIsProcessToFullKeyFrame + ",resultCode=" + i9 + ",mIsGenerating= " + tXVideoEditer.mIsGenerating);
        if (tXVideoEditer.mIsGenerating) {
            tXVideoEditer.mAVSyncer.stop();
            tXVideoEditer.mVideoProcessor.stop();
            tXVideoEditer.mAudioProcessor.stop();
            tXVideoEditer.stopMp4Writer();
            tXVideoEditer.mIsGenerating = false;
            if (tXVideoEditer.mIsProcessToFullKeyFrame) {
                if (com.tencent.liteav.base.util.f.a(tXVideoEditer.mProcessOutputPath) && i9 == 0) {
                    Rotation rotation = tXVideoEditer.mRotation;
                    Rotation rotation2 = Rotation.NORMAL;
                    if (rotation != rotation2) {
                        tXVideoEditer.mRotation = rotation2;
                        tXVideoEditer.mVideoProcessor.setRenderRotation(rotation2);
                    }
                    tXVideoEditer.setMediaSourcePaths(Collections.singletonList(tXVideoEditer.mProcessOutputPath));
                }
                tXVideoEditer.notifyProcessComplete(i9);
                return;
            }
            tXVideoEditer.notifyGenerateComplete(i9, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$initWithPreview$39(TXVideoEditer tXVideoEditer, TXVideoEditConstants.TXPreviewParam tXPreviewParam) {
        FrameLayout frameLayout = tXVideoEditer.mFrameLayout;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        TextureView textureView = new TextureView(tXVideoEditer.mContext);
        FrameLayout frameLayout2 = tXPreviewParam.videoView;
        tXVideoEditer.mFrameLayout = frameLayout2;
        if (frameLayout2 != null) {
            frameLayout2.addView(textureView);
        }
        DisplayTarget displayTarget = new DisplayTarget(textureView);
        GLConstants.GLScaleType gLScaleType = GLConstants.GLScaleType.CENTER_CROP;
        if (tXPreviewParam.renderMode == 2) {
            gLScaleType = GLConstants.GLScaleType.FIT_CENTER;
        }
        tXVideoEditer.mVideoProcessor.setDisplayView(displayTarget, gLScaleType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$new$1(TXVideoEditer tXVideoEditer, int i9, long j10, Bitmap bitmap) {
        TXThumbnailListener tXThumbnailListener = tXVideoEditer.mProcessThumbnailListener;
        if (tXThumbnailListener != null) {
            tXThumbnailListener.onThumbnail(i9, j10, bitmap);
        }
        int thumbnailCount = tXVideoEditer.getThumbnailCount();
        tXVideoEditer.mMainHandler.post(bk.a(tXVideoEditer, thumbnailCount, j10, i9));
        if (thumbnailCount == i9) {
            LiteavLog.i(TAG, "mInnerThumbnailListener: notifyProcessComplete");
            tXVideoEditer.mProcessOutputPath = tXVideoEditer.mSourcePath;
            tXVideoEditer.notifyProcessComplete(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$notifyGenerateComplete$62(int i9, TXVideoGenerateListener tXVideoGenerateListener) {
        TXVideoEditConstants.TXGenerateResult tXGenerateResult = new TXVideoEditConstants.TXGenerateResult();
        tXGenerateResult.retCode = i9;
        tXGenerateResult.descMsg = "";
        tXVideoGenerateListener.onGenerateComplete(tXGenerateResult);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$notifyPreviewProgress$59(TXVideoEditer tXVideoEditer, int i9, TXVideoPreviewListener tXVideoPreviewListener) {
        if (tXVideoEditer.filtInvalidatedFrame(i9 / 1000)) {
            return;
        }
        tXVideoPreviewListener.onPreviewProgress(i9);
        tXVideoEditer.mTargetSeekPts.set(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$notifyProcessComplete$60(int i9, TXVideoProcessListener tXVideoProcessListener) {
        TXVideoEditConstants.TXGenerateResult tXGenerateResult = new TXVideoEditConstants.TXGenerateResult();
        tXGenerateResult.retCode = i9;
        tXGenerateResult.descMsg = "";
        tXVideoProcessListener.onProcessComplete(tXGenerateResult);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$null$0(TXVideoEditer tXVideoEditer, int i9, long j10, int i10) {
        if (tXVideoEditer.mVideoProcessListener != null) {
            tXVideoEditer.mVideoProcessListener.onProcessProgress(i9 == 0 ? tXVideoEditer.calculateProgress(j10) : (i10 * 1.0f) / i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onAudioEncodedFrame$57(TXVideoEditer tXVideoEditer, AudioFrame audioFrame) {
        MP4Writer mP4Writer = tXVideoEditer.mMp4Writer;
        if (mP4Writer == null || !tXVideoEditer.mIsAudioEncoderStarted) {
            return;
        }
        mP4Writer.writeAudioFrame(audioFrame);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onAudioEncodedFrameComplete$58(TXVideoEditer tXVideoEditer) {
        LiteavLog.i(TAG, "onAudioEncodedFrameComplete end flag = " + tXVideoEditer.mIsAudioEnd);
        if (tXVideoEditer.mIsAudioEnd) {
            return;
        }
        tXVideoEditer.mIsAudioEnd = true;
        tXVideoEditer.mAVSyncer.setAudioEos();
        tXVideoEditer.handleEncodedCompletedInner();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onVideoEncodedFrame$55(TXVideoEditer tXVideoEditer, EncodedVideoFrame encodedVideoFrame) {
        if (tXVideoEditer.mIsGenerating && tXVideoEditer.mIsVideoEncoderStarted) {
            MP4Writer mP4Writer = tXVideoEditer.mMp4Writer;
            if (mP4Writer != null) {
                mP4Writer.writeVideoFrame(encodedVideoFrame);
            }
            if (tXVideoEditer.mIsProcessToFullKeyFrame) {
                TXVideoProcessListener tXVideoProcessListener = tXVideoEditer.mVideoProcessListener;
                if (tXVideoProcessListener != null) {
                    tXVideoProcessListener.onProcessProgress(tXVideoEditer.calculateProgress(encodedVideoFrame.pts));
                    return;
                }
                return;
            }
            tXVideoEditer.notifyGenerateProgress(tXVideoEditer.calculateProgress(encodedVideoFrame.pts));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onVideoEncodedFrameComplete$56(TXVideoEditer tXVideoEditer) {
        LiteavLog.i(TAG, "onVideoEncodedFrameComplete end flag = " + tXVideoEditer.mIsVideoEnd);
        if (tXVideoEditer.mIsVideoEnd) {
            return;
        }
        tXVideoEditer.mAVSyncer.setVideoEos();
        tXVideoEditer.mIsVideoEnd = true;
        tXVideoEditer.handleEncodedCompletedInner();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$pausePlay$41(TXVideoEditer tXVideoEditer) {
        LiteavLog.i(TAG, "pausePlay " + tXVideoEditer.mIsGenerating);
        if (tXVideoEditer.mIsGenerating) {
            return;
        }
        tXVideoEditer.mAVSyncer.stop();
        tXVideoEditer.mVideoProcessor.stop();
        tXVideoEditer.mAudioProcessor.stop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$previewAtTime$44(TXVideoEditer tXVideoEditer) {
        Long andSet = tXVideoEditer.mPendingPreviewAtTime.getAndSet(null);
        if (andSet == null) {
            return;
        }
        LiteavLog.i(TAG, "previewAtTime time = ".concat(String.valueOf(andSet)));
        tXVideoEditer.mMediaListSource.seekTo(andSet.longValue());
        tXVideoEditer.mVideoProcessor.seekTo(andSet.longValue());
        tXVideoEditer.mAVSyncer.resetClock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$release$37(TXVideoEditer tXVideoEditer) {
        LiteavLog.i(TAG, "release");
        tXVideoEditer.mVideoProcessor.unInitialize();
        tXVideoEditer.mAudioProcessor.unInitialize();
        tXVideoEditer.mAudioProcessor.destroy();
        tXVideoEditer.mMediaListSource.uninitialize();
        tXVideoEditer.mThumbnailGenerator.uninitialize();
        tXVideoEditer.stopMp4Writer();
        UGCInitializer.uninitialize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$resumePlay$42(TXVideoEditer tXVideoEditer) {
        LiteavLog.i(TAG, "resumePlay " + tXVideoEditer.mIsGenerating);
        if (tXVideoEditer.mIsGenerating) {
            return;
        }
        tXVideoEditer.mAVSyncer.start();
        tXVideoEditer.mVideoProcessor.start(false);
        tXVideoEditer.mAudioProcessor.start(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setAnimatedPasterList$20(TXVideoEditer tXVideoEditer, List list) {
        LiteavLog.i(TAG, "setAnimatedPasterList");
        tXVideoEditer.mVideoProcessor.getWatermarkProcessor().setAnimatedPasterList(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setAudioBitrate$48(TXVideoEditer tXVideoEditer, int i9) {
        LiteavLog.i(TAG, "setAudioBitrate: bitrate= ".concat(String.valueOf(i9)));
        tXVideoEditer.mAudioEncodeBitrate = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setBGM$11(TXVideoEditer tXVideoEditer, String str, boolean z10) {
        tXVideoEditer.mAudioProcessor.setBGM(str);
        tXVideoEditer.doStopPlayInner();
        if (z10) {
            tXVideoEditer.mBGMFormat = null;
            tXVideoEditer.mHasBGM = false;
            if (com.tencent.liteav.videobase.utils.c.a(tXVideoEditer.mAudioFormatList)) {
                tXVideoEditer.mAVSyncer.setAudioExist(false);
                UGCAVSyncer.SyncMode syncMode = UGCAVSyncer.SyncMode.VIDEO_MASTER;
                tXVideoEditer.mPreviewSyncMode = syncMode;
                tXVideoEditer.mAVSyncer.setSyncMode(syncMode);
                return;
            }
            return;
        }
        tXVideoEditer.mHasBGM = true;
        MediaExtractor build = new MediaExtractorBuilder().setPath(str).setMimeType("audio/").build();
        if (build == null) {
            LiteavLog.w(TAG, "setBGM: build extractor fail.");
            return;
        }
        tXVideoEditer.mBGMFormat = build.getTrackFormat(build.getSampleTrackIndex());
        tXVideoEditer.mAVSyncer.setAudioExist(true);
        UGCAVSyncer.SyncMode syncMode2 = UGCAVSyncer.SyncMode.AUDIO_MASTER;
        tXVideoEditer.mPreviewSyncMode = syncMode2;
        tXVideoEditer.mAVSyncer.setSyncMode(syncMode2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setBGMAtVideoTime$13(TXVideoEditer tXVideoEditer, long j10) {
        LiteavLog.i(TAG, "setBGMAtVideoTime: videoStartTime= ".concat(String.valueOf(j10)));
        tXVideoEditer.mAudioProcessor.setBGMAtVideoTime(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setBGMFadeInOutDuration$16(TXVideoEditer tXVideoEditer, long j10, long j11) {
        LiteavLog.i(TAG, "setBGMFadeInOutDuration: fadeInDuration= " + j10 + ",fadeOutDuration= " + j11);
        tXVideoEditer.mAudioProcessor.setFadeInOutDuration(j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setBGMLoop$12(TXVideoEditer tXVideoEditer, boolean z10) {
        LiteavLog.i(TAG, "setBGMLoop: looping= ".concat(String.valueOf(z10)));
        tXVideoEditer.mAudioProcessor.setBGMLoop(z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setBGMStartTime$14(TXVideoEditer tXVideoEditer, long j10, long j11) {
        LiteavLog.i(TAG, "setBGMStartTime: startTime= " + j10 + ", endTime= " + j11);
        tXVideoEditer.mAudioProcessor.setBGMStartTime(j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setBGMVolume$15(TXVideoEditer tXVideoEditer, float f10) {
        LiteavLog.i(TAG, "setBGMVolume: ".concat(String.valueOf(f10)));
        tXVideoEditer.mAudioProcessor.setBGMVolume(f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setBeautyFilter$8(TXVideoEditer tXVideoEditer, int i9, int i10) {
        LiteavLog.i(TAG, "setBeautyFilter: beautyLevel= " + i9 + ",whiteningLevel= " + i10);
        tXVideoEditer.mVideoProcessor.setBeautyFilter(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setCustomVideoProcessListener$3(TXVideoEditer tXVideoEditer, TXVideoCustomProcessListener tXVideoCustomProcessListener) {
        LiteavLog.i(TAG, "setCustomVideoProcessListener: ".concat(String.valueOf(tXVideoCustomProcessListener)));
        tXVideoEditer.mVideoProcessor.setCustomVideoProcessListener(tXVideoCustomProcessListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setCutFromTime$46(TXVideoEditer tXVideoEditer, long j10, long j11) {
        LiteavLog.i(TAG, "setCutFromTime: startTime= " + j10 + ",endTime= " + j11);
        tXVideoEditer.mCutStartTimeMs = j10;
        tXVideoEditer.mCutEndTimeMs = j11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setFilter$6(TXVideoEditer tXVideoEditer, Bitmap bitmap) {
        float f10;
        float f11;
        LiteavLog.i(TAG, "setFilter: ".concat(String.valueOf(bitmap)));
        CombineFilterInfo combineFilterInfo = tXVideoEditer.mCombineFilterInfo;
        if (combineFilterInfo != null) {
            f10 = combineFilterInfo.getLeftSpecialRatio();
            f11 = tXVideoEditer.mCombineFilterInfo.getRightSpecialRatio();
        } else {
            f10 = 0.5f;
            f11 = 0.0f;
        }
        tXVideoEditer.setFilter(bitmap, f10, null, f11, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setFilter$7(TXVideoEditer tXVideoEditer, float f10, float f11, float f12, Bitmap bitmap, Bitmap bitmap2) {
        LiteavLog.i(TAG, "setFilter: leftIntensity= " + f10 + ",rightIntensity= " + f11 + ",leftRatio= " + f12);
        tXVideoEditer.mVideoProcessor.setFilter(bitmap, f10, bitmap2, f11, f12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setPasterList$21(TXVideoEditer tXVideoEditer, List list) {
        LiteavLog.i(TAG, "setPasterList");
        tXVideoEditer.mVideoProcessor.getWatermarkProcessor().setPasterList(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setPictureList$9(TXVideoEditer tXVideoEditer, int i9, List list) {
        LiteavLog.i(TAG, "setPictureList: fps= " + i9 + ",bitmapList.size= " + list.size());
        tXVideoEditer.mMediaListSource.setPictureList(list, i9);
        tXVideoEditer.setOutputSize(new com.tencent.liteav.base.util.q(UGCTransitionRules.DEFAULT_IMAGE_WIDTH, UGCTransitionRules.DEFAULT_IMAGE_HEIGHT));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setPictureTransition$10(TXVideoEditer tXVideoEditer, int i9) {
        LiteavLog.i(TAG, "setPictureTransition: ".concat(String.valueOf(i9)));
        tXVideoEditer.mMediaListSource.setPictureTransition(i9);
        tXVideoEditer.mVideoProcessor.setPictureTransition(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setProfile$4(TXVideoEditer tXVideoEditer, int i9) {
        LiteavLog.i(TAG, "setProfile: ".concat(String.valueOf(i9)));
        tXVideoEditer.mEncodeProfile = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setRenderRotation$22(TXVideoEditer tXVideoEditer, int i9) {
        LiteavLog.i(TAG, "setRenderRotation: rotation= ".concat(String.valueOf(i9)));
        Rotation a10 = Rotation.a(i9);
        tXVideoEditer.mRotation = a10;
        tXVideoEditer.mVideoProcessor.setRenderRotation(a10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setRepeatPlay$24(TXVideoEditer tXVideoEditer, List list) {
        LiteavLog.i(TAG, "setRepeatPlay");
        tXVideoEditer.mMediaListSource.setRepeatPlay(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setReverse$25(TXVideoEditer tXVideoEditer, boolean z10) {
        LiteavLog.i(TAG, "setReverse: isReverse= ".concat(String.valueOf(z10)));
        tXVideoEditer.mIsReverse = z10;
        tXVideoEditer.mMediaListSource.setReverse(z10);
        tXVideoEditer.mVideoProcessor.getEffectProcessor().setReverse(z10, tXVideoEditer.mMediaListSource.getDuration());
        tXVideoEditer.mVideoProcessor.getTransitionProcessor().setReverse(z10, tXVideoEditer.mMediaListSource.getDuration());
        tXVideoEditer.mVideoProcessor.getWatermarkProcessor().setReverse(z10, tXVideoEditer.mMediaListSource.getDuration());
        tXVideoEditer.doStopPlayInner();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setSpecialRatio$5(TXVideoEditer tXVideoEditer, float f10) {
        LiteavLog.i(TAG, "setSpecialRatio: ".concat(String.valueOf(f10)));
        if (tXVideoEditer.mCombineFilterInfo == null) {
            tXVideoEditer.mCombineFilterInfo = new CombineFilterInfo();
        }
        tXVideoEditer.mCombineFilterInfo.setLeftSpecialRatio(f10);
        tXVideoEditer.mCombineFilterInfo.setRightSpecialRatio(0.0f);
        tXVideoEditer.mVideoProcessor.setSpecialRatio(f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setSpeedList$23(TXVideoEditer tXVideoEditer, List list) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                TXVideoEditConstants.TXSpeed tXSpeed = (TXVideoEditConstants.TXSpeed) it.next();
                LiteavLog.i(TAG, "setSpeedList " + tXSpeed.startTime + " " + tXSpeed.endTime + " speed: " + tXSpeed.speedLevel);
            }
        }
        tXVideoEditer.mVideoProcessor.setSpeedList(list);
        tXVideoEditer.mAudioProcessor.setSpeedList(list);
        tXVideoEditer.mMediaListSource.setSpeedList(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setSubtitleList$19(TXVideoEditer tXVideoEditer, List list) {
        LiteavLog.i(TAG, "setSubtitleList");
        tXVideoEditer.mVideoProcessor.getWatermarkProcessor().setSubtitleList(list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setTXVideoPreviewListener$38(TXVideoEditer tXVideoEditer, TXVideoPreviewListener tXVideoPreviewListener) {
        LiteavLog.i(TAG, "setTXVideoPreviewListener: listener= ".concat(String.valueOf(tXVideoPreviewListener)));
        tXVideoEditer.mVideoPreviewListener = tXVideoPreviewListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setTailWaterMark$18(TXVideoEditer tXVideoEditer, int i9, Bitmap bitmap, TXVideoEditConstants.TXRect tXRect) {
        LiteavLog.i(TAG, "setTailWaterMark: duration= ".concat(String.valueOf(i9)));
        tXVideoEditer.mVideoProcessor.getWatermarkProcessor().setTailWaterMark(bitmap, tXRect, tXVideoEditer.mMediaListSource.getDuration(), i9);
        tXVideoEditer.mMediaListSource.setTailWaterMarkDurationSecond(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setThumbnail$35(TXVideoEditer tXVideoEditer, TXVideoEditConstants.TXThumbnail tXThumbnail) {
        LiteavLog.i(TAG, "setThumbnail: thumbnail.count= " + tXThumbnail.count + " ,thumbnail.width= " + tXThumbnail.width + " ,thumbnail.height= " + tXThumbnail.height);
        UGCThumbnailGenerator.UGCThumbnailGenerateParams uGCThumbnailGenerateParams = new UGCThumbnailGenerator.UGCThumbnailGenerateParams();
        tXVideoEditer.mProcessThumbnailInfo = uGCThumbnailGenerateParams;
        uGCThumbnailGenerateParams.thumbnailCount = tXThumbnail.count;
        uGCThumbnailGenerateParams.width = tXThumbnail.width;
        uGCThumbnailGenerateParams.height = tXThumbnail.height;
        uGCThumbnailGenerateParams.fast = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setThumbnailListener$36(TXVideoEditer tXVideoEditer, TXThumbnailListener tXThumbnailListener) {
        LiteavLog.i(TAG, "setThumbnailListener: listener= ".concat(String.valueOf(tXThumbnailListener)));
        tXVideoEditer.mProcessThumbnailListener = tXThumbnailListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setTransitionEffect$26(TXVideoEditer tXVideoEditer, int i9, long j10, long j11, AtomicBoolean atomicBoolean) {
        LiteavLog.i(TAG, "setTransitionEffect: type=" + i9 + " ,startTimeMs= " + j10 + " ,transitionDurationMs= " + j11);
        atomicBoolean.set(tXVideoEditer.mVideoProcessor.getTransitionProcessor().setTransitionEffect(i9, tXVideoEditer.mMediaListSource.getDuration(), j10, j11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setVideoBitrate$47(TXVideoEditer tXVideoEditer, int i9) {
        LiteavLog.i(TAG, "setVideoBitrate: bitrate= ".concat(String.valueOf(i9)));
        tXVideoEditer.mVideoEncodeBitrate = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setVideoGenerateListener$45(TXVideoEditer tXVideoEditer, TXVideoGenerateListener tXVideoGenerateListener) {
        LiteavLog.i(TAG, "setVideoGenerateListener: listener= ".concat(String.valueOf(tXVideoGenerateListener)));
        tXVideoEditer.mVideoGenerateListener = tXVideoGenerateListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setVideoProcessListener$32(TXVideoEditer tXVideoEditer, TXVideoProcessListener tXVideoProcessListener) {
        LiteavLog.i(TAG, "setVideoProcessListener: listener= ".concat(String.valueOf(tXVideoProcessListener)));
        tXVideoEditer.mVideoProcessListener = tXVideoProcessListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setVideoVolume$52(TXVideoEditer tXVideoEditer, float f10) {
        LiteavLog.i(TAG, "setVideoVolume: volume= ".concat(String.valueOf(f10)));
        tXVideoEditer.mAudioProcessor.setVideoVolume(f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setWaterMark$17(TXVideoEditer tXVideoEditer, TXVideoEditConstants.TXRect tXRect, Bitmap bitmap) {
        LiteavLog.i(TAG, "setWaterMark: " + tXRect.toString());
        tXVideoEditer.mVideoProcessor.getWatermarkProcessor().setWaterMark(bitmap, tXRect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$startEffect$28(TXVideoEditer tXVideoEditer, int i9, long j10) {
        LiteavLog.i(TAG, "startEffect: type=" + i9 + ",startTime= " + j10);
        tXVideoEditer.mVideoProcessor.getEffectProcessor().startEffect(i9, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$startPlayFromTime$40(TXVideoEditer tXVideoEditer, long j10, long j11) {
        LiteavLog.i(TAG, "startPlayFromTime: startTime= " + j10 + ", endTime= " + j11);
        tXVideoEditer.doStopPlayInner();
        com.tencent.liteav.base.util.q qVar = tXVideoEditer.mEncodeResolution;
        if (qVar == null) {
            tXVideoEditer.mVideoProcessor.setOutputSize(-1, -1, GLConstants.GLScaleType.FIT_CENTER);
        } else {
            tXVideoEditer.mVideoProcessor.setOutputSize(qVar.f31029a, qVar.f31030b, GLConstants.GLScaleType.FIT_CENTER);
        }
        tXVideoEditer.mIsAudioEnd = false;
        tXVideoEditer.mIsVideoEnd = false;
        tXVideoEditer.mAVSyncer.setSyncMode(tXVideoEditer.mPreviewSyncMode);
        tXVideoEditer.mAVSyncer.start();
        if (tXVideoEditer.mSourceRangeStartTimeMs != 0 || ((j11 != tXVideoEditer.mSourceRangeEndTimeMs && j11 >= 0) || tXVideoEditer.mIsReverse)) {
            tXVideoEditer.mSourceRangeStartTimeMs = 0L;
            tXVideoEditer.mSourceRangeEndTimeMs = j11;
            if (tXVideoEditer.mIsReverse) {
                tXVideoEditer.mSourceRangeStartTimeMs = j10;
            }
        }
        if (!tXVideoEditer.mIsReverse) {
            tXVideoEditer.mMediaListSource.seekTo(j10);
            tXVideoEditer.mMediaListSource.setPlayEndTime(j11);
        } else {
            tXVideoEditer.mMediaListSource.seekTo(j11);
            tXVideoEditer.mMediaListSource.setPlayEndTime(Long.MAX_VALUE);
        }
        tXVideoEditer.mVideoProcessor.setProgressListener(tXVideoEditer.mVideoProcessProgressListener);
        tXVideoEditer.mVideoProcessor.start(false);
        tXVideoEditer.mAudioProcessor.start(false);
        tXVideoEditer.mIsProcessToFullKeyFrame = false;
        tXVideoEditer.mIsGenerating = false;
        tXVideoEditer.mIsPlaying = true;
        tXVideoEditer.mTargetSeekPts.set(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$stopEffect$29(TXVideoEditer tXVideoEditer, int i9, long j10) {
        LiteavLog.i(TAG, "stopEffect");
        tXVideoEditer.mVideoProcessor.getEffectProcessor().stopEffect(i9, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$stopPlay$43(TXVideoEditer tXVideoEditer) {
        LiteavLog.i(TAG, "stopPlay");
        tXVideoEditer.doStopPlayInner();
    }

    private void notifyGenerateComplete(int i9, long j10) {
        TXVideoGenerateListener tXVideoGenerateListener = this.mVideoGenerateListener;
        if (!TextUtils.isEmpty(this.mProcessOutputPath) && new File(this.mProcessOutputPath).exists()) {
            UGCDataReport.reportDAU(1032, (int) new File(this.mProcessOutputPath).length(), "");
            UGCDataReport.reportDAU(1033, (int) j10, "");
        }
        if (tXVideoGenerateListener != null) {
            this.mMainHandler.post(bj.a(i9, tXVideoGenerateListener));
        }
    }

    private void notifyGenerateProgress(float f10) {
        TXVideoGenerateListener tXVideoGenerateListener = this.mVideoGenerateListener;
        if (tXVideoGenerateListener != null) {
            this.mMainHandler.post(bi.a(tXVideoGenerateListener, f10));
        }
    }

    private void notifyPreviewFinished() {
        TXVideoPreviewListener tXVideoPreviewListener = this.mVideoPreviewListener;
        if (tXVideoPreviewListener != null) {
            this.mMainHandler.post(bg.a(tXVideoPreviewListener));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPreviewProgress(int i9) {
        TXVideoPreviewListener tXVideoPreviewListener = this.mVideoPreviewListener;
        if (tXVideoPreviewListener != null) {
            this.mMainHandler.post(bf.a(this, i9, tXVideoPreviewListener));
        }
    }

    private void notifyProcessComplete(int i9) {
        TXVideoProcessListener tXVideoProcessListener = this.mVideoProcessListener;
        if (tXVideoProcessListener != null) {
            this.mMainHandler.post(bh.a(i9, tXVideoProcessListener));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAudioEncodedFrame(AudioFrame audioFrame) {
        if (audioFrame == null) {
            LiteavLog.w(TAG, "onAudioEncodedFrame frame is null.");
        } else {
            this.mSequenceTaskRunner.a(bc.a(this, audioFrame));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAudioEncodedFrameComplete() {
        this.mSequenceTaskRunner.a(bd.a(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPlayProgressEnd() {
        LiteavLog.i(TAG, "onProgressEnd mIsPreviewAudioEnd=" + this.mIsAudioEnd + " mIsPreviewVideoEnd=" + this.mIsVideoEnd);
        if (this.mIsAudioEnd && this.mIsVideoEnd) {
            this.mAVSyncer.stop();
            notifyPreviewFinished();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onVideoEncodedFrame(EncodedVideoFrame encodedVideoFrame) {
        if (encodedVideoFrame == null) {
            LiteavLog.w(TAG, "onVideoEncodedFrame frame is null.");
        } else {
            this.mSequenceTaskRunner.a(ba.a(this, encodedVideoFrame));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onVideoEncodedFrameComplete() {
        this.mSequenceTaskRunner.a(bb.a(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processVideoInternal() {
        if (!UGCLicenseChecker.isSimpleFunctionSupport()) {
            TXVideoEditConstants.TXGenerateResult tXGenerateResult = new TXVideoEditConstants.TXGenerateResult();
            tXGenerateResult.retCode = -5;
            tXGenerateResult.descMsg = "licence verify failed";
            TXVideoProcessListener tXVideoProcessListener = this.mVideoProcessListener;
            if (tXVideoProcessListener != null) {
                tXVideoProcessListener.onProcessComplete(tXGenerateResult);
                return;
            }
            return;
        }
        UGCDataReport.reportDAU(1034);
        LiteavLog.i(TAG, "processVideoInternal");
        this.mProcessOutputPath = generateVideoPath();
        boolean isFullIFrame = isFullIFrame(this.mSourcePath);
        UGCTranscodeVideoEncodeParamsDecider uGCTranscodeVideoEncodeParamsDecider = new UGCTranscodeVideoEncodeParamsDecider();
        uGCTranscodeVideoEncodeParamsDecider.setSourceType(UGCConstants.SourceType.VIDEO);
        uGCTranscodeVideoEncodeParamsDecider.setFullIFrame(true);
        uGCTranscodeVideoEncodeParamsDecider.setEncodeRotation(this.mRotation);
        uGCTranscodeVideoEncodeParamsDecider.setOutputResolution(4);
        uGCTranscodeVideoEncodeParamsDecider.setInputVideoMediaFormat(this.mVideoFormatList);
        VideoEncodeParams decidedEncodeParams = uGCTranscodeVideoEncodeParamsDecider.getDecidedEncodeParams();
        UGCTranscodeAudioEncodeParamsDecider uGCTranscodeAudioEncodeParamsDecider = new UGCTranscodeAudioEncodeParamsDecider();
        uGCTranscodeAudioEncodeParamsDecider.setInputAudioMediaFormat(this.mAudioFormatList);
        AudioEncodeParams decidedEncodeParams2 = uGCTranscodeAudioEncodeParamsDecider.getDecidedEncodeParams();
        boolean isGopEqualOne = isGopEqualOne(this.mSourcePath);
        LiteavLog.i(TAG, "processVideoInternal: hasIFramePerMinute= " + isGopEqualOne + ", inputFullIFrame= " + isFullIFrame + ",mProcessOutputPath= " + this.mProcessOutputPath);
        TXThumbnailListener tXThumbnailListener = this.mProcessThumbnailListener;
        this.mIsProcessToFullKeyFrame = true;
        this.mIsGenerating = true;
        if (!isFullIFrame) {
            startRecord(this.mProcessOutputPath, decidedEncodeParams, decidedEncodeParams2);
        } else {
            tXThumbnailListener = this.mInnerThumbnailListener;
        }
        handleProcessThumbnail(decidedEncodeParams.width, decidedEncodeParams.height, tXThumbnailListener);
    }

    private void startMP4Writer(String str) {
        LiteavLog.i(TAG, "startMP4Writer ".concat(String.valueOf(str)));
        MP4Writer mP4Writer = new MP4Writer();
        this.mMp4Writer = mP4Writer;
        mP4Writer.setListener(this.mMp4WriterListener);
        if (!com.tencent.liteav.videobase.utils.c.a(this.mAudioFormatList) || this.mHasBGM) {
            this.mMp4Writer.setHasAudio(true);
        }
        this.mMp4Writer.setHasVideo(true);
        this.mMp4Writer.setPath(str);
        this.mMp4Writer.start();
    }

    private void startRecord(String str, VideoEncodeParams videoEncodeParams, AudioEncodeParams audioEncodeParams) {
        doStopPlayInner();
        stopMp4Writer();
        startMP4Writer(str);
        this.mIsVideoEncoderStarted = false;
        this.mIsAudioEncoderStarted = false;
        this.mVideoProcessor.setVideoEncodedFrameListener(this.mVideoEncodedFrameListener);
        this.mAudioProcessor.setAudioEncodedFrameListener(this.mAudioEncodedFrameListener);
        this.mAVSyncer.setSyncMode(UGCAVSyncer.SyncMode.INTERLEAVE_OUTPUT_WITHOUT_SKIP);
        this.mAVSyncer.start();
        this.mIsAudioEnd = false;
        this.mIsVideoEnd = false;
        this.mMediaListSource.setVideoSourceRange(this.mCutStartTimeMs, this.mCutEndTimeMs);
        this.mVideoProcessor.setOutputSize(videoEncodeParams.width, videoEncodeParams.height, GLConstants.GLScaleType.FIT_CENTER);
        this.mVideoProcessor.setEncodeParams(videoEncodeParams);
        this.mVideoProcessor.start(true);
        this.mAudioProcessor.setEncodeParams(audioEncodeParams);
        this.mAudioProcessor.start(true);
    }

    private void stopMp4Writer() {
        LiteavLog.i(TAG, "stopMp4Writer");
        MP4Writer mP4Writer = this.mMp4Writer;
        if (mP4Writer != null) {
            mP4Writer.stop();
            this.mMp4Writer = null;
        }
    }

    public void cancel() {
        this.mSequenceTaskRunner.a(av.a(this));
    }

    public void deleteAllEffect() {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "deleteAllEffect is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(z.a(this));
        }
    }

    public void deleteLastEffect() {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "deleteLastEffect is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(y.a(this));
        }
    }

    public void deleteLastTransitionEffect() {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "deleteLastTransitionEffect is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(u.a(this));
        }
    }

    public void generateVideo(int i9, String str) {
        this.mSequenceTaskRunner.a(au.a(this, i9, str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getDuration() {
        return this.mMediaListSource.getDuration();
    }

    public void getThumbnail(List<Long> list, int i9, int i10, boolean z10, TXThumbnailListener tXThumbnailListener) {
        this.mSequenceTaskRunner.a(ab.a(this, list, i9, i10, z10, tXThumbnailListener));
    }

    public int getThumbnailCount() {
        LiteavLog.i(TAG, "getThumbnailCount");
        List<Long> list = this.mProcessThumbnailInfo.thumbnailPtsList;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public String getVideoProcessPath() {
        LiteavLog.i(TAG, "getVideoProcessPath: process output path= " + this.mProcessOutputPath);
        return this.mProcessOutputPath;
    }

    public String getVideoSourcePath() {
        LiteavLog.i(TAG, "getVideoSourcePath: sourcePath= " + this.mSourcePath);
        return this.mSourcePath;
    }

    public void initWithPreview(TXVideoEditConstants.TXPreviewParam tXPreviewParam) {
        if (tXPreviewParam == null) {
            LiteavLog.i(TAG, "initWithPreview param is null.");
            return;
        }
        LiteavLog.i(TAG, "initWithPreview: view= " + tXPreviewParam.videoView + " renderMode= " + tXPreviewParam.renderMode);
        this.mMainHandler.a(aj.a(this, tXPreviewParam), 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isHasAudio() {
        return this.mMediaListSource.hasAudioData();
    }

    public void pausePlay() {
        this.mSequenceTaskRunner.a(al.a(this));
    }

    public void previewAtTime(long j10) {
        this.mPendingPreviewAtTime.set(Long.valueOf(j10));
        this.mTargetSeekPts.set(Long.valueOf(j10));
        this.mSequenceTaskRunner.a(ao.a(this));
    }

    public void processVideo() {
        this.mSequenceTaskRunner.a(af.a(this));
    }

    public void refreshOneFrame() {
        LiteavLog.i(TAG, "refreshOneFrame");
        this.mSequenceTaskRunner.a(aw.a(this));
    }

    public void release() {
        this.mSequenceTaskRunner.a(ag.a(this));
    }

    public void resumePlay() {
        this.mSequenceTaskRunner.a(am.a(this));
    }

    public void setAnimatedPasterList(List<TXVideoEditConstants.TXAnimatedPaster> list) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setAnimatedPasterList is not supported in UGC_Smart license");
            return;
        }
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_ANIMATEDPASTER);
        this.mSequenceTaskRunner.a(n.a(this, list));
    }

    @Deprecated
    public void setAudioBitrate(int i9) {
        this.mSequenceTaskRunner.a(as.a(this, i9));
    }

    public int setBGM(String str) {
        int i9;
        boolean z10;
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setBGM is not supported in UGC_Smart license");
            return 0;
        }
        LiteavLog.i(TAG, "setBGM: path= ".concat(String.valueOf(str)));
        if (!TextUtils.isEmpty(str)) {
            i9 = isBGMValid(str);
            z10 = false;
        } else {
            LiteavLog.e(TAG, " setBGM: bgm path is empty.");
            i9 = 0;
            z10 = true;
        }
        if (i9 != 0) {
            LiteavLog.i(TAG, " setBGM: check return: ".concat(String.valueOf(i9)));
            return i9;
        }
        this.mSequenceTaskRunner.a(d.a(this, str, z10));
        UGCDataReport.reportDAU(1024);
        return 0;
    }

    public void setBGMAtVideoTime(long j10) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setBGMAtVideoTime is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(f.a(this, j10));
        }
    }

    public void setBGMFadeInOutDuration(long j10, long j11) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setBGMFadeInOutDuration is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(i.a(this, j10, j11));
        }
    }

    public void setBGMLoop(boolean z10) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setBGMLoop is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(e.a(this, z10));
        }
    }

    public void setBGMStartTime(long j10, long j11) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setBGMStartTime is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(g.a(this, j10, j11));
        }
    }

    public void setBGMVolume(float f10) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setBGMVolume is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(h.a(this, f10));
        }
    }

    public void setBeautyFilter(int i9, int i10) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setBeautyFilter is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(bm.a(this, i9, i10));
        }
    }

    public void setCustomVideoProcessListener(TXVideoCustomProcessListener tXVideoCustomProcessListener) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setCustomVideoProcessListener is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(x.a(this, tXVideoCustomProcessListener));
        }
    }

    public void setCutFromTime(long j10, long j11) {
        this.mSequenceTaskRunner.a(aq.a(this, j10, j11));
        UGCDataReport.reportDAU(1018);
    }

    public void setFilter(Bitmap bitmap) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setFilter is not supported in UGC_Smart license");
            return;
        }
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER);
        this.mSequenceTaskRunner.a(be.a(this, bitmap));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setIsFullIFrame(boolean z10) {
        this.mIsFullIFrame = z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setIsSplitScreen(boolean z10) {
        this.mMediaListSource.setIsMediaSourceOverlapped(z10);
        if (z10) {
            return;
        }
        this.mVideoProcessor.setSplitScreenList(null, -1, -1);
        setOutputSize(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int setMediaSourcePaths(List<String> list) {
        com.tencent.liteav.base.util.q qVar = this.mEncodeResolution;
        if (qVar == null) {
            this.mVideoProcessor.setOutputSize(-1, -1, GLConstants.GLScaleType.FIT_CENTER);
        } else {
            this.mVideoProcessor.setOutputSize(qVar.f31029a, qVar.f31030b, GLConstants.GLScaleType.FIT_CENTER);
        }
        if (list.size() == 1) {
            this.mThumbnailGenerator.setVideoSourceList(list);
        }
        this.mMediaListSource.setVideoSources(list);
        this.mSourcePath = list.get(0);
        this.mVideoFormatList = new LinkedList();
        this.mAudioFormatList = new LinkedList();
        getAllMediaFormatFromSource(list);
        if (!com.tencent.liteav.videobase.utils.c.a(this.mVideoFormatList)) {
            this.mAVSyncer.setVideoExist(true);
        }
        if (!com.tencent.liteav.videobase.utils.c.a(this.mAudioFormatList)) {
            this.mAVSyncer.setAudioExist(true);
        }
        if (!com.tencent.liteav.videobase.utils.c.a(this.mAudioFormatList)) {
            if (list.size() > 1) {
                this.mPreviewSyncMode = UGCAVSyncer.SyncMode.CLOCK_MASTER;
            } else {
                this.mPreviewSyncMode = UGCAVSyncer.SyncMode.AUDIO_MASTER;
            }
        } else {
            this.mPreviewSyncMode = UGCAVSyncer.SyncMode.VIDEO_MASTER;
        }
        return 0;
    }

    protected void setOutputSize(com.tencent.liteav.base.util.q qVar) {
        this.mEncodeResolution = qVar;
    }

    public void setPasterList(List<TXVideoEditConstants.TXPaster> list) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setPasterList is not supported in UGC_Smart license");
            return;
        }
        UGCDataReport.reportDAU(1025);
        this.mSequenceTaskRunner.a(o.a(this, list));
    }

    public int setPictureList(List<Bitmap> list, int i9) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setPictureList is not supported in UGC_Smart license");
            return -1;
        }
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_PICTURE_JOIN);
        this.mSequenceTaskRunner.a(bn.a(this, i9, list));
        return 0;
    }

    public long setPictureTransition(int i9) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setPictureTransition is not supported in UGC_Smart license");
            return 0L;
        }
        this.mSequenceTaskRunner.b(c.a(this, i9));
        return this.mMediaListSource.getDuration();
    }

    public void setProfile(int i9) {
        this.mSequenceTaskRunner.a(ai.a(this, i9));
    }

    public void setRenderRotation(int i9) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setRenderRotation is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(p.a(this, i9));
        }
    }

    public void setRepeatPlay(List<TXVideoEditConstants.TXRepeat> list) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setRepeatPlay is not supported in UGC_Smart license");
            return;
        }
        UGCDataReport.reportDAU(1020);
        this.mSequenceTaskRunner.a(r.a(this, list));
    }

    public void setReverse(boolean z10) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setReverse is not supported in UGC_Smart license");
            return;
        }
        UGCDataReport.reportDAU(1021);
        this.mSequenceTaskRunner.a(s.a(this, z10));
    }

    public void setSpecialRatio(float f10) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setSpecialRatio is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(at.a(this, f10));
        }
    }

    public void setSpeedList(List<TXVideoEditConstants.TXSpeed> list) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setSpeedList is not supported in UGC_Smart license");
            return;
        }
        UGCDataReport.reportDAU(1019);
        this.mSequenceTaskRunner.a(q.a(this, list));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSplitScreenList(List<TXVideoEditConstants.TXAbsoluteRect> list, int i9, int i10) {
        this.mVideoProcessor.setSplitScreenList(list, i9, i10);
        setOutputSize(new com.tencent.liteav.base.util.q(i9, i10));
    }

    public void setSubtitleList(List<TXVideoEditConstants.TXSubtitle> list) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setSubtitleList is not supported in UGC_Smart license");
            return;
        }
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_SUBTITLE);
        this.mSequenceTaskRunner.a(l.a(this, list));
    }

    public void setTXVideoPreviewListener(TXVideoPreviewListener tXVideoPreviewListener) {
        this.mSequenceTaskRunner.a(ah.a(this, tXVideoPreviewListener));
    }

    public void setTailWaterMark(Bitmap bitmap, TXVideoEditConstants.TXRect tXRect, int i9) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setTailWaterMark is not supported in UGC_Smart license");
            return;
        }
        UGCDataReport.reportDAU(1029);
        this.mSequenceTaskRunner.a(k.a(this, i9, bitmap, tXRect));
    }

    public void setThumbnail(TXVideoEditConstants.TXThumbnail tXThumbnail) {
        this.mSequenceTaskRunner.a(ad.a(this, tXThumbnail));
    }

    public void setThumbnailListener(TXThumbnailListener tXThumbnailListener) {
        this.mSequenceTaskRunner.a(ae.a(this, tXThumbnailListener));
    }

    public boolean setTransitionEffect(int i9, long j10, long j11) {
        return setTransitionEffect(i9, j11, j10, 1000L);
    }

    public void setVideoBitrate(int i9) {
        this.mSequenceTaskRunner.a(ar.a(this, i9));
    }

    public void setVideoGenerateListener(TXVideoGenerateListener tXVideoGenerateListener) {
        this.mSequenceTaskRunner.a(ap.a(this, tXVideoGenerateListener));
    }

    public int setVideoPath(String str) {
        LiteavLog.i(TAG, "setVideoPath ".concat(String.valueOf(str)));
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        int isMediaSourceValid = isMediaSourceValid(str);
        if (isMediaSourceValid != 0) {
            LiteavLog.i(TAG, "setVideoPath " + str + " is illegal." + isMediaSourceValid);
            return isMediaSourceValid;
        }
        this.mSequenceTaskRunner.a(m.a(this, str));
        return 0;
    }

    public void setVideoProcessListener(TXVideoProcessListener tXVideoProcessListener) {
        this.mSequenceTaskRunner.a(aa.a(this, tXVideoProcessListener));
    }

    public void setVideoVolume(float f10) {
        this.mSequenceTaskRunner.a(ax.a(this, f10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setVideoVolumes(float[] fArr) {
        this.mAudioProcessor.setVideoVolumes(fArr);
    }

    public void setWaterMark(Bitmap bitmap, TXVideoEditConstants.TXRect tXRect) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setWaterMark is not supported in UGC_Smart license");
            return;
        }
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_WATERMARK);
        this.mSequenceTaskRunner.a(j.a(this, tXRect, bitmap));
    }

    public void startEffect(int i9, long j10) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "startEffect is not supported in UGC_Smart license");
            return;
        }
        UGCDataReport.reportDAU(1022, i9, "");
        this.mSequenceTaskRunner.a(v.a(this, i9, j10));
    }

    public void startPlayFromTime(long j10, long j11) {
        this.mSequenceTaskRunner.a(ak.a(this, j10, j11));
    }

    public void stopEffect(int i9, long j10) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "stopEffect is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(w.a(this, i9, j10));
        }
    }

    public void stopPlay() {
        this.mSequenceTaskRunner.a(an.a(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TXVideoEditer(Context context, @NonNull com.tencent.liteav.base.util.j jVar) {
        this.mPendingPreviewAtTime = new AtomicReference<>();
        this.mPreviewSyncMode = UGCAVSyncer.SyncMode.VIDEO_MASTER;
        this.mIsGenerating = false;
        this.mIsPlaying = false;
        this.mIsProcessToFullKeyFrame = false;
        this.mHasBGM = false;
        this.mNeedWaitProcessFullI = false;
        this.mNeedWaitThumbnailProcess = false;
        this.mTargetSeekPts = new AtomicReference<>();
        this.MIN_SEEK_DIR = 100L;
        this.mMp4WriterListener = new MP4Writer.MP4WriterListener() { // from class: com.tencent.ugc.TXVideoEditer.1
            @Override // com.tencent.ugc.MP4Writer.MP4WriterListener
            public final void onComplete(long j10) {
                LiteavLog.i(TXVideoEditer.TAG, "onComplete ".concat(String.valueOf(j10)));
                TXVideoEditer.this.handleWriteMP4Completed(0, j10);
            }

            @Override // com.tencent.ugc.MP4Writer.MP4WriterListener
            public final void onError(String str) {
                LiteavLog.i(TXVideoEditer.TAG, "onError ".concat(String.valueOf(str)));
                TXVideoEditer.this.handleWriteMP4Completed(-1, 0L);
            }
        };
        this.mMainHandler = new CustomHandler(Looper.getMainLooper());
        this.mIsVideoEnd = false;
        this.mIsAudioEnd = false;
        this.mVideoEncodeBitrate = -1;
        this.mAudioEncodeBitrate = -1;
        this.mEncodeProfile = -1;
        this.mSourceRangeStartTimeMs = 0L;
        this.mSourceRangeEndTimeMs = 2147483647L;
        this.mCutStartTimeMs = 0L;
        this.mCutEndTimeMs = 2147483647L;
        this.mIsReverse = false;
        this.mIsFullIFrame = false;
        this.mRotation = Rotation.NORMAL;
        this.mIsVideoEncoderStarted = false;
        this.mIsAudioEncoderStarted = false;
        this.mVideoEncodedFrameListener = new UGCVideoProcessor.VideoEncodedFrameListener() { // from class: com.tencent.ugc.TXVideoEditer.2
            @Override // com.tencent.ugc.UGCVideoProcessor.VideoEncodedFrameListener
            public final void onVideoEncodeStarted() {
                TXVideoEditer.this.mIsVideoEncoderStarted = true;
            }

            @Override // com.tencent.ugc.UGCVideoProcessor.VideoEncodedFrameListener
            public final void onVideoEncodingCompleted() {
                TXVideoEditer.this.onVideoEncodedFrameComplete();
            }

            @Override // com.tencent.ugc.UGCVideoProcessor.VideoEncodedFrameListener
            public final void onVideoFrameEncoded(EncodedVideoFrame encodedVideoFrame) {
                TXVideoEditer.this.onVideoEncodedFrame(encodedVideoFrame);
            }
        };
        this.mAudioEncodedFrameListener = new UGCAudioProcessor.AudioEncodedFrameListener() { // from class: com.tencent.ugc.TXVideoEditer.3
            @Override // com.tencent.ugc.UGCAudioProcessor.AudioEncodedFrameListener
            public final void onAudioEncodingCompleted() {
                TXVideoEditer.this.onAudioEncodedFrameComplete();
            }

            @Override // com.tencent.ugc.UGCAudioProcessor.AudioEncodedFrameListener
            public final void onAudioEncodingStarted() {
                TXVideoEditer.this.mIsAudioEncoderStarted = true;
            }

            @Override // com.tencent.ugc.UGCAudioProcessor.AudioEncodedFrameListener
            public final void onAudioFrameEncoded(AudioFrame audioFrame) {
                TXVideoEditer.this.onAudioEncodedFrame(audioFrame);
            }
        };
        this.mVideoProcessProgressListener = new AnonymousClass4();
        this.mInnerThumbnailListener = b.a(this);
        UGCInitializer.initialize();
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        UGCAVSyncer uGCAVSyncer = new UGCAVSyncer();
        this.mAVSyncer = uGCAVSyncer;
        UGCMediaListSource uGCMediaListSource = new UGCMediaListSource();
        this.mMediaListSource = uGCMediaListSource;
        UGCVideoProcessor uGCVideoProcessor = new UGCVideoProcessor(applicationContext, uGCMediaListSource, uGCAVSyncer, new com.tencent.liteav.videobase.videobase.e(), true);
        this.mVideoProcessor = uGCVideoProcessor;
        UGCAudioProcessor uGCAudioProcessor = new UGCAudioProcessor(uGCAVSyncer, uGCMediaListSource);
        this.mAudioProcessor = uGCAudioProcessor;
        UGCThumbnailGenerator uGCThumbnailGenerator = new UGCThumbnailGenerator();
        this.mThumbnailGenerator = uGCThumbnailGenerator;
        uGCThumbnailGenerator.initialize();
        uGCVideoProcessor.initialize();
        uGCAudioProcessor.initialize();
        uGCMediaListSource.initialize();
        this.mSequenceTaskRunner = jVar;
        UGCDataReport.reportDAU(1004);
    }

    public void getThumbnail(int i9, int i10, int i11, boolean z10, TXThumbnailListener tXThumbnailListener) {
        this.mSequenceTaskRunner.a(ac.a(this, i10, i11, z10, i9, tXThumbnailListener));
    }

    public boolean setTransitionEffect(int i9, long j10, long j11, long j12) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setTransitionEffect is not supported in UGC_Smart license");
            return false;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.mSequenceTaskRunner.b(t.a(this, i9, j11, j12, atomicBoolean));
        return atomicBoolean.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.ugc.TXVideoEditer$4  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass4 implements UGCVideoProcessor.VideoProcessListener {
        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(AnonymousClass4 anonymousClass4, long j10) {
            long j11 = j10 * 1000;
            if (TXVideoEditer.this.mIsReverse) {
                j11 = (TXVideoEditer.this.mMediaListSource.getDuration() * 1000) - j11;
            }
            TXVideoEditer.this.notifyPreviewProgress((int) com.tencent.liteav.base.util.g.a(j11, 0L, TXVideoEditer.this.mMediaListSource.getDuration() * 1000));
        }

        @Override // com.tencent.ugc.UGCVideoProcessor.VideoProcessListener
        public final void onComplete(TXVideoEditConstants.TXGenerateResult tXGenerateResult) {
            if (tXGenerateResult != null) {
                LiteavLog.i(TXVideoEditer.TAG, "on video progress complete: retCode= " + tXGenerateResult.retCode + ", descMsg= " + tXGenerateResult.descMsg);
            }
            TXVideoEditer.this.mSequenceTaskRunner.a(bp.a(this));
        }

        @Override // com.tencent.ugc.UGCVideoProcessor.VideoProcessListener
        public final void onProgress(long j10) {
            TXVideoEditer.this.mSequenceTaskRunner.a(bo.a(this, j10));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(AnonymousClass4 anonymousClass4) {
            if (TXVideoEditer.this.mIsVideoEnd) {
                return;
            }
            TXVideoEditer.this.mIsVideoEnd = true;
            TXVideoEditer.this.mIsAudioEnd = true;
            TXVideoEditer.this.mAVSyncer.setVideoEos();
            TXVideoEditer.this.mAVSyncer.setAudioEos();
            TXVideoEditer.this.onPlayProgressEnd();
        }
    }

    public void setFilter(Bitmap bitmap, float f10, Bitmap bitmap2, float f11, float f12) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setFilter is not supported in UGC_Smart license");
        } else {
            this.mSequenceTaskRunner.a(bl.a(this, f10, f11, f12, bitmap, bitmap2));
        }
    }
}
