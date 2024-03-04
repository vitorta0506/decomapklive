.class public Lcom/tencent/ugc/TXVideoEditer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;,
        Lcom/tencent/ugc/TXVideoEditer$TXPCMCallbackListener;,
        Lcom/tencent/ugc/TXVideoEditer$TXVideoCustomProcessListener;,
        Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;,
        Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListenerEx;,
        Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;,
        Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TXVideoEditer"


# instance fields
.field private final MIN_SEEK_DIR:J

.field private final mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mAudioEncodeBitrate:I

.field private final mAudioEncodedFrameListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;

.field private mAudioFormatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mBGMFormat:Landroid/media/MediaFormat;

.field private mCombineFilterInfo:Lcom/tencent/ugc/CombineFilterInfo;

.field private final mContext:Landroid/content/Context;

.field private mCutEndTimeMs:J

.field private mCutStartTimeMs:J

.field private mEncodeProfile:I

.field private mEncodeResolution:Lcom/tencent/liteav/base/util/q;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mHasBGM:Z

.field private final mInnerThumbnailListener:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

.field private mIsAudioEncoderStarted:Z

.field private mIsAudioEnd:Z

.field private mIsFullIFrame:Z

.field private mIsGenerating:Z

.field private mIsPlaying:Z

.field private mIsProcessToFullKeyFrame:Z

.field private mIsReverse:Z

.field private mIsVideoEncoderStarted:Z

.field private mIsVideoEnd:Z

.field private final mMainHandler:Lcom/tencent/liteav/base/util/CustomHandler;

.field private final mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mMp4Writer:Lcom/tencent/ugc/MP4Writer;

.field private final mMp4WriterListener:Lcom/tencent/ugc/MP4Writer$MP4WriterListener;

.field private mNeedWaitProcessFullI:Z

.field private mNeedWaitThumbnailProcess:Z

.field private final mPendingPreviewAtTime:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewSyncMode:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

.field private mProcessOutputPath:Ljava/lang/String;

.field private mProcessThumbnailInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

.field private mProcessThumbnailListener:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

.field private mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

.field protected final mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

.field private mSourcePath:Ljava/lang/String;

.field private mSourceRangeEndTimeMs:J

.field private mSourceRangeStartTimeMs:J

.field private mTargetSeekPts:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailGenerator:Lcom/tencent/ugc/UGCThumbnailGenerator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mVideoEncodeBitrate:I

.field private final mVideoEncodedFrameListener:Lcom/tencent/ugc/UGCVideoProcessor$VideoEncodedFrameListener;

.field private mVideoFormatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoGenerateListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;

.field private mVideoPreviewListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;

.field private mVideoProcessListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;

.field private final mVideoProcessProgressListener:Lcom/tencent/ugc/UGCVideoProcessor$VideoProcessListener;

.field private final mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/base/util/j;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/j;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/ugc/TXVideoEditer;-><init>(Landroid/content/Context;Lcom/tencent/liteav/base/util/j;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/tencent/liteav/base/util/j;)V
    .locals 8
    .param p2    # Lcom/tencent/liteav/base/util/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mPendingPreviewAtTime:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    sget-object v0, Lcom/tencent/ugc/UGCAVSyncer$SyncMode;->VIDEO_MASTER:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mPreviewSyncMode:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    .line 6
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsPlaying:Z

    .line 7
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsProcessToFullKeyFrame:Z

    .line 8
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mHasBGM:Z

    .line 9
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mNeedWaitProcessFullI:Z

    .line 10
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mNeedWaitThumbnailProcess:Z

    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mTargetSeekPts:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide/16 v1, 0x64

    .line 12
    iput-wide v1, p0, Lcom/tencent/ugc/TXVideoEditer;->MIN_SEEK_DIR:J

    .line 13
    new-instance v1, Lcom/tencent/ugc/TXVideoEditer$1;

    invoke-direct {v1, p0}, Lcom/tencent/ugc/TXVideoEditer$1;-><init>(Lcom/tencent/ugc/TXVideoEditer;)V

    iput-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMp4WriterListener:Lcom/tencent/ugc/MP4Writer$MP4WriterListener;

    .line 14
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMainHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 15
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEnd:Z

    .line 16
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEnd:Z

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoEncodeBitrate:I

    .line 18
    iput v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioEncodeBitrate:I

    .line 19
    iput v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mEncodeProfile:I

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourceRangeStartTimeMs:J

    const-wide/32 v3, 0x7fffffff

    .line 21
    iput-wide v3, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourceRangeEndTimeMs:J

    .line 22
    iput-wide v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mCutStartTimeMs:J

    .line 23
    iput-wide v3, p0, Lcom/tencent/ugc/TXVideoEditer;->mCutEndTimeMs:J

    .line 24
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsReverse:Z

    .line 25
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsFullIFrame:Z

    .line 26
    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 27
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEncoderStarted:Z

    .line 28
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEncoderStarted:Z

    .line 29
    new-instance v0, Lcom/tencent/ugc/TXVideoEditer$2;

    invoke-direct {v0, p0}, Lcom/tencent/ugc/TXVideoEditer$2;-><init>(Lcom/tencent/ugc/TXVideoEditer;)V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoEncodedFrameListener:Lcom/tencent/ugc/UGCVideoProcessor$VideoEncodedFrameListener;

    .line 30
    new-instance v0, Lcom/tencent/ugc/TXVideoEditer$3;

    invoke-direct {v0, p0}, Lcom/tencent/ugc/TXVideoEditer$3;-><init>(Lcom/tencent/ugc/TXVideoEditer;)V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioEncodedFrameListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;

    .line 31
    new-instance v0, Lcom/tencent/ugc/TXVideoEditer$4;

    invoke-direct {v0, p0}, Lcom/tencent/ugc/TXVideoEditer$4;-><init>(Lcom/tencent/ugc/TXVideoEditer;)V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessProgressListener:Lcom/tencent/ugc/UGCVideoProcessor$VideoProcessListener;

    .line 32
    invoke-static {p0}, Lcom/tencent/ugc/b;->a(Lcom/tencent/ugc/TXVideoEditer;)Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mInnerThumbnailListener:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

    .line 33
    invoke-static {}, Lcom/tencent/ugc/UGCInitializer;->initialize()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mContext:Landroid/content/Context;

    .line 35
    new-instance p1, Lcom/tencent/ugc/UGCAVSyncer;

    invoke-direct {p1}, Lcom/tencent/ugc/UGCAVSyncer;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    .line 36
    new-instance v0, Lcom/tencent/ugc/UGCMediaListSource;

    invoke-direct {v0}, Lcom/tencent/ugc/UGCMediaListSource;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    .line 37
    new-instance v7, Lcom/tencent/ugc/UGCVideoProcessor;

    new-instance v5, Lcom/tencent/liteav/videobase/videobase/e;

    invoke-direct {v5}, Lcom/tencent/liteav/videobase/videobase/e;-><init>()V

    const/4 v6, 0x1

    move-object v1, v7

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/ugc/UGCVideoProcessor;-><init>(Landroid/content/Context;Lcom/tencent/ugc/UGCMediaListSource;Lcom/tencent/ugc/UGCAVSyncer;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Z)V

    iput-object v7, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    .line 38
    new-instance v1, Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-direct {v1, p1, v0}, Lcom/tencent/ugc/UGCAudioProcessor;-><init>(Lcom/tencent/ugc/UGCAVSyncer;Lcom/tencent/ugc/UGCMediaListSource;)V

    iput-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    .line 39
    new-instance p1, Lcom/tencent/ugc/UGCThumbnailGenerator;

    invoke-direct {p1}, Lcom/tencent/ugc/UGCThumbnailGenerator;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mThumbnailGenerator:Lcom/tencent/ugc/UGCThumbnailGenerator;

    .line 40
    invoke-virtual {p1}, Lcom/tencent/ugc/UGCThumbnailGenerator;->initialize()V

    .line 41
    invoke-virtual {v7}, Lcom/tencent/ugc/UGCVideoProcessor;->initialize()V

    .line 42
    invoke-virtual {v1}, Lcom/tencent/ugc/UGCAudioProcessor;->initialize()V

    .line 43
    invoke-virtual {v0}, Lcom/tencent/ugc/UGCMediaListSource;->initialize()V

    .line 44
    iput-object p2, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    const/16 p1, 0x3ec

    .line 45
    invoke-static {p1}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/ugc/TXVideoEditer;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/ugc/TXVideoEditer;->handleWriteMP4Completed(IJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->onPlayProgressEnd()V

    return-void
.end method

.method static synthetic access$102(Lcom/tencent/ugc/TXVideoEditer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEncoderStarted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/tencent/ugc/TXVideoEditer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsReverse:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/tencent/ugc/TXVideoEditer;)Lcom/tencent/ugc/UGCMediaListSource;
    .locals 0

    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tencent/ugc/TXVideoEditer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->notifyPreviewProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->onVideoEncodedFrame(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->onVideoEncodedFrameComplete()V

    return-void
.end method

.method static synthetic access$402(Lcom/tencent/ugc/TXVideoEditer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEncoderStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/AudioFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->onAudioEncodedFrame(Lcom/tencent/ugc/AudioFrame;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->onAudioEncodedFrameComplete()V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/ugc/TXVideoEditer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEnd:Z

    return p0
.end method

.method static synthetic access$702(Lcom/tencent/ugc/TXVideoEditer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEnd:Z

    return p1
.end method

.method static synthetic access$802(Lcom/tencent/ugc/TXVideoEditer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEnd:Z

    return p1
.end method

.method static synthetic access$900(Lcom/tencent/ugc/TXVideoEditer;)Lcom/tencent/ugc/UGCAVSyncer;
    .locals 0

    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    return-object p0
.end method

.method static synthetic access$lambda$0(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->processVideoInternal()V

    return-void
.end method

.method private calculateProgress(J)F
    .locals 5

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    long-to-float p2, v0

    div-float/2addr p1, p2

    return p1
.end method

.method private doGetThumbnail(Ljava/util/List;IIZLcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;IIZ",
            "Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getThumbnail: width= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fast= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",list.size= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    .line 3
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    invoke-direct {v0}, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;-><init>()V

    .line 5
    iput-object p1, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->thumbnailPtsList:Ljava/util/List;

    .line 6
    iput p2, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->width:I

    .line 7
    iput p3, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->height:I

    .line 8
    iput-boolean p4, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->fast:Z

    .line 9
    new-instance p2, Lcom/tencent/ugc/UGCThumbnailGenerator;

    invoke-direct {p2}, Lcom/tencent/ugc/UGCThumbnailGenerator;-><init>()V

    .line 10
    invoke-virtual {p2}, Lcom/tencent/ugc/UGCThumbnailGenerator;->initialize()V

    .line 11
    iget-object p3, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourcePath:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/tencent/ugc/UGCThumbnailGenerator;->setVideoSourceList(Ljava/util/List;)V

    .line 12
    invoke-static {p5, p1, p2}, Lcom/tencent/ugc/ay;->a(Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;Ljava/util/List;Lcom/tencent/ugc/UGCThumbnailGenerator;)Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/tencent/ugc/UGCThumbnailGenerator;->start(Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V

    return-void
.end method

.method private doStopPlayInner()V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string v1, "doStopPlayInner"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCVideoProcessor;->setProgressListener(Lcom/tencent/ugc/UGCVideoProcessor$VideoProcessListener;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCAudioProcessor;->setProgressListener(Lcom/tencent/ugc/UGCAudioProcessor$AudioProgressListener;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAVSyncer;->stop()V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->stop()V

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAudioProcessor;->stop()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsPlaying:Z

    return-void
.end method

.method private filtInvalidatedFrame(J)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mTargetSeekPts:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mTargetSeekPts:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v0, 0x64

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private generateVideoPath()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "TXVideoEditer"

    const-string v2, "generateVideoPath getExternalFilesDir return null."

    .line 2
    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "liteav"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    new-instance v3, Ljava/util/Date;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "000"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-string v0, "TXVideo_%s_process.mp4"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAllMediaFormatFromSource(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Lcom/tencent/ugc/common/MediaExtractorBuilder;

    invoke-direct {v1}, Lcom/tencent/ugc/common/MediaExtractorBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->setPath(Ljava/lang/String;)Lcom/tencent/ugc/common/MediaExtractorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->build()Landroid/media/MediaExtractor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "mime"

    .line 5
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string/jumbo v5, "video/"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    iget-object v5, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoFormatList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v5, "audio/"

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    iget-object v4, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioFormatList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "TXVideoEditer"

    const-string v1, "build extractor fail."

    .line 10
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handleEncodedCompletedInner()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEnd:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEnd:Z

    if-eqz v0, :cond_0

    const-string v0, "TXVideoEditer"

    const-string v1, "handleEncodedCompleted"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAVSyncer;->stop()V

    .line 4
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->stopMp4Writer()V

    :cond_0
    return-void
.end method

.method private handleProcessThumbnail(IILcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessThumbnailInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->width:I

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->height:I

    if-nez v1, :cond_2

    .line 3
    :cond_1
    iput p1, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->width:I

    .line 4
    iput p2, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->height:I

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mThumbnailGenerator:Lcom/tencent/ugc/UGCThumbnailGenerator;

    iget-wide v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mCutStartTimeMs:J

    iget-wide v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mCutEndTimeMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/ugc/UGCThumbnailGenerator;->setVideoSourceRange(JJ)V

    .line 6
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessThumbnailInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    iget v0, p1, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->thumbnailCount:I

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lcom/tencent/ugc/TXVideoEditer;->mCutEndTimeMs:J

    iget-wide v5, p0, Lcom/tencent/ugc/TXVideoEditer;->mCutStartTimeMs:J

    sub-long/2addr v3, v5

    iget-object p2, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    .line 7
    invoke-virtual {p2}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide v5

    .line 8
    invoke-static/range {v0 .. v6}, Lcom/tencent/ugc/UGCThumbnailGenerator;->calculateThumbnailList(IJJJ)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->thumbnailPtsList:Ljava/util/List;

    .line 9
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mThumbnailGenerator:Lcom/tencent/ugc/UGCThumbnailGenerator;

    iget-object p2, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessThumbnailInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    invoke-virtual {p1, p2, p3}, Lcom/tencent/ugc/UGCThumbnailGenerator;->start(Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V

    return-void
.end method

.method private handleWriteMP4Completed(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/ugc/az;->a(Lcom/tencent/ugc/TXVideoEditer;IJ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static isAudioFormatValid(Landroid/media/MediaExtractor;Z)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    if-gtz v0, :cond_0

    const-string p0, "ContentValues"

    const-string p1, "isSourceValid: trackCount < 1!"

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a3

    return p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v5, "mime"

    .line 4
    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "audio"

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v3, :cond_3

    return v1

    :cond_3
    const/16 p0, -0x7d2

    return p0

    :cond_4
    return v1
.end method

.method private isBGMValid(Ljava/lang/String;)I
    .locals 6

    .line 1
    new-instance v0, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;-><init>(Z)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;->setDataSource(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;->getAudioDurationMs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/16 p1, -0x3e9

    return p1
.end method

.method private isFullIFrame(Ljava/lang/String;)Z
    .locals 5

    .line 1
    new-instance v0, Lcom/tencent/ugc/common/MediaExtractorBuilder;

    invoke-direct {v0}, Lcom/tencent/ugc/common/MediaExtractorBuilder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->setPath(Ljava/lang/String;)Lcom/tencent/ugc/common/MediaExtractorBuilder;

    move-result-object p1

    const-string/jumbo v0, "video/"

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->setMimeType(Ljava/lang/String;)Lcom/tencent/ugc/common/MediaExtractorBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->build()Landroid/media/MediaExtractor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "ContentValues"

    const-string v1, "judgeFullIFrame: extractor is null."

    .line 3
    invoke-static {p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    .line 4
    invoke-virtual {p1, v1, v2, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->advance()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    if-le v2, p1, :cond_3

    return v4

    :cond_3
    return v0
.end method

.method private isGopEqualOne(Ljava/lang/String;)Z
    .locals 6

    .line 1
    new-instance v0, Lcom/tencent/ugc/common/MediaExtractorBuilder;

    invoke-direct {v0}, Lcom/tencent/ugc/common/MediaExtractorBuilder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->setPath(Ljava/lang/String;)Lcom/tencent/ugc/common/MediaExtractorBuilder;

    move-result-object p1

    const-string/jumbo v0, "video/"

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->setMimeType(Ljava/lang/String;)Lcom/tencent/ugc/common/MediaExtractorBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->build()Landroid/media/MediaExtractor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v1, "extractor is null."

    .line 3
    invoke-static {p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-wide/16 v1, 0x1

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p1, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 5
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v1

    .line 6
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->release()V

    const-wide/32 v4, 0x186a0

    cmp-long p1, v1, v4

    if-lez p1, :cond_1

    const-wide/32 v4, 0x10c8e0

    cmp-long p1, v1, v4

    if-gez p1, :cond_1

    return v3

    :cond_1
    return v0
.end method

.method protected static isMediaSourceValid(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, -0x186a1

    const-string v2, "TXVideoEditer"

    if-eqz v0, :cond_0

    const-string p0, "checkLegality: path is null."

    .line 2
    invoke-static {v2, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lcom/tencent/ugc/common/MediaExtractorBuilder;

    invoke-direct {v0}, Lcom/tencent/ugc/common/MediaExtractorBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->setPath(Ljava/lang/String;)Lcom/tencent/ugc/common/MediaExtractorBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->build()Landroid/media/MediaExtractor;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "checkLegality:source no found!"

    .line 4
    invoke-static {v2, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    const-string p0, "checkLegality: some error happen."

    .line 6
    invoke-static {v2, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a2

    return p0
.end method

.method static synthetic lambda$cancel$50(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 7

    const-string v0, "TXVideoEditer"

    const-string v1, "cancel"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    .line 3
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEncoderStarted:Z

    .line 4
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEncoderStarted:Z

    .line 5
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsProcessToFullKeyFrame:Z

    .line 6
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mThumbnailGenerator:Lcom/tencent/ugc/UGCThumbnailGenerator;

    invoke-virtual {v1}, Lcom/tencent/ugc/UGCThumbnailGenerator;->stop()V

    .line 7
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/ugc/UGCVideoProcessor;->setVideoEncodedFrameListener(Lcom/tencent/ugc/UGCVideoProcessor$VideoEncodedFrameListener;)V

    .line 8
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {v1, v2}, Lcom/tencent/ugc/UGCAudioProcessor;->setAudioEncodedFrameListener(Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;)V

    .line 9
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x7fffffff

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/tencent/ugc/UGCMediaListSource;->setVideoSourceRange(JJ)V

    .line 10
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/UGCMediaListSource;->setTailWaterMarkDurationSecond(I)V

    .line 11
    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAudioProcessor;->stop()V

    .line 13
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->stop()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMp4Writer:Lcom/tencent/ugc/MP4Writer;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0, v2}, Lcom/tencent/ugc/MP4Writer;->setListener(Lcom/tencent/ugc/MP4Writer$MP4WriterListener;)V

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->stopMp4Writer()V

    return-void
.end method

.method static synthetic lambda$deleteAllEffect$31(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string v1, "deleteAllEffect"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCVideoProcessor;->getEffectProcessor()Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->deleteAllEffect()V

    return-void
.end method

.method static synthetic lambda$deleteLastEffect$30(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string v1, "deleteLastEffect"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCVideoProcessor;->getEffectProcessor()Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->deleteLastEffect()V

    return-void
.end method

.method static synthetic lambda$deleteLastTransitionEffect$27(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string v1, "deleteLastTransitionEffect"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCVideoProcessor;->getTransitionProcessor()Lcom/tencent/ugc/videoprocessor/VideoTransitionProcessor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/ugc/videoprocessor/VideoTransitionProcessor;->deleteLastTransitionEffect()V

    return-void
.end method

.method static synthetic lambda$doGetThumbnail$53(Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;Ljava/util/List;Lcom/tencent/ugc/UGCThumbnailGenerator;IJLandroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0, p3, p4, p5, p6}, Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;->onThumbnail(IJLandroid/graphics/Bitmap;)V

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p3, p0, :cond_1

    const-string p0, "TXVideoEditer"

    const-string p1, "getThumbnail finished!"

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/tencent/ugc/UGCThumbnailGenerator;->stop()V

    .line 5
    invoke-virtual {p2}, Lcom/tencent/ugc/UGCThumbnailGenerator;->uninitialize()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$generateVideo$49(Lcom/tencent/ugc/TXVideoEditer;ILjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generateVideo: videoCompressed= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoOutputPath= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isSimpleFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance p1, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

    invoke-direct {p1}, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;-><init>()V

    const/4 p2, -0x5

    .line 4
    iput p2, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->retCode:I

    const-string p2, "licence verify failed"

    .line 5
    iput-object p2, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->descMsg:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoGenerateListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0, p1}, Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;->onGenerateComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance v0, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;

    invoke-direct {v0}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;-><init>()V

    .line 9
    sget-object v1, Lcom/tencent/ugc/common/UGCConstants$SourceType;->VIDEO:Lcom/tencent/ugc/common/UGCConstants$SourceType;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setSourceType(Lcom/tencent/ugc/common/UGCConstants$SourceType;)V

    .line 10
    iget-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsFullIFrame:Z

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setFullIFrame(Z)V

    .line 11
    invoke-virtual {v0, p1}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setOutputResolution(I)V

    .line 12
    iget p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mEncodeProfile:I

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setEncodeProfile(I)V

    .line 13
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoFormatList:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setInputVideoMediaFormat(Ljava/util/List;)V

    .line 14
    new-instance p1, Lcom/tencent/ugc/common/UGCTranscodeAudioEncodeParamsDecider;

    invoke-direct {p1}, Lcom/tencent/ugc/common/UGCTranscodeAudioEncodeParamsDecider;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioFormatList:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/tencent/ugc/common/UGCTranscodeAudioEncodeParamsDecider;->setInputAudioMediaFormat(Ljava/util/List;)V

    .line 16
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mBGMFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1, v1}, Lcom/tencent/ugc/common/UGCTranscodeAudioEncodeParamsDecider;->setBGMMediaFormat(Landroid/media/MediaFormat;)V

    .line 17
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourcePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    sget-object v1, Lcom/tencent/ugc/common/UGCConstants$SourceType;->PICTURE:Lcom/tencent/ugc/common/UGCConstants$SourceType;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setSourceType(Lcom/tencent/ugc/common/UGCConstants$SourceType;)V

    .line 19
    :cond_2
    iget v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoEncodeBitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 20
    invoke-virtual {v0, v1}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setEncodeBitrate(I)V

    .line 21
    :cond_3
    iget v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioEncodeBitrate:I

    if-eq v1, v2, :cond_4

    .line 22
    invoke-virtual {p1, v1}, Lcom/tencent/ugc/common/UGCTranscodeAudioEncodeParamsDecider;->setEncodeBitrate(I)V

    .line 23
    :cond_4
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mEncodeResolution:Lcom/tencent/liteav/base/util/q;

    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {v0, v1}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setEncodeOutputSize(Lcom/tencent/liteav/base/util/q;)V

    .line 25
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->getDecidedEncodeParams()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/tencent/ugc/common/UGCTranscodeAudioEncodeParamsDecider;->getDecidedEncodeParams()Lcom/tencent/ugc/AudioEncodeParams;

    move-result-object p1

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsProcessToFullKeyFrame:Z

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    .line 29
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/ugc/TXVideoEditer;->startRecord(Ljava/lang/String;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/ugc/AudioEncodeParams;)V

    return-void
.end method

.method static synthetic lambda$getThumbnail$33(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;IIZLcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/tencent/ugc/TXVideoEditer;->doGetThumbnail(Ljava/util/List;IIZLcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V

    return-void
.end method

.method static synthetic lambda$getThumbnail$34(Lcom/tencent/ugc/TXVideoEditer;IIZILcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getThumbnail: width= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",fast= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",count= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TXVideoEditer"

    invoke-static {v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;

    invoke-direct {v0}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;-><init>()V

    move-object v3, p0

    .line 3
    iget-object v4, v3, Lcom/tencent/ugc/TXVideoEditer;->mSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;->setDataSource(Ljava/lang/String;)I

    .line 4
    invoke-virtual {v0}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;->getVideoDurationMs()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;->getVideoDurationMs()J

    move-result-wide v12

    const-wide/16 v8, 0x0

    move/from16 v7, p4

    .line 5
    invoke-static/range {v7 .. v13}, Lcom/tencent/ugc/UGCThumbnailGenerator;->calculateThumbnailList(IJJJ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p5

    .line 6
    invoke-direct/range {v2 .. v7}, Lcom/tencent/ugc/TXVideoEditer;->doGetThumbnail(Ljava/util/List;IIZLcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$handleWriteMP4Completed$54(Lcom/tencent/ugc/TXVideoEditer;IJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleWriteMP4Completed: mIsProcessToFullKeyFrame="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsProcessToFullKeyFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mIsGenerating= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAVSyncer;->stop()V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->stop()V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAudioProcessor;->stop()V

    .line 6
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->stopMp4Writer()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    .line 8
    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsProcessToFullKeyFrame:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object p2, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessOutputPath:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/liteav/base/util/f;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 10
    iget-object p2, p0, Lcom/tencent/ugc/TXVideoEditer;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    sget-object p3, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq p2, p3, :cond_1

    .line 11
    iput-object p3, p0, Lcom/tencent/ugc/TXVideoEditer;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 12
    iget-object p2, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p2, p3}, Lcom/tencent/ugc/UGCVideoProcessor;->setRenderRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessOutputPath:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tencent/ugc/TXVideoEditer;->setMediaSourcePaths(Ljava/util/List;)I

    .line 14
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->notifyProcessComplete(I)V

    return-void

    .line 15
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/ugc/TXVideoEditer;->notifyGenerateComplete(IJ)V

    return-void
.end method

.method static synthetic lambda$initWithPreview$39(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    :cond_0
    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;->videoView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    :cond_1
    new-instance v1, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;-><init>(Landroid/view/TextureView;)V

    .line 7
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 8
    iget p1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;->renderMode:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 9
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/ugc/UGCVideoProcessor;->setDisplayView(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/tencent/ugc/TXVideoEditer;IJLandroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessThumbnailListener:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;->onThumbnail(IJLandroid/graphics/Bitmap;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/ugc/TXVideoEditer;->getThumbnailCount()I

    move-result p4

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMainHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p4, p2, p3, p1}, Lcom/tencent/ugc/bk;->a(Lcom/tencent/ugc/TXVideoEditer;IJI)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-ne p4, p1, :cond_1

    const-string p1, "TXVideoEditer"

    const-string p2, "mInnerThumbnailListener: notifyProcessComplete"

    .line 5
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourcePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessOutputPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->notifyProcessComplete(I)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$notifyGenerateComplete$62(ILcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

    invoke-direct {v0}, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;-><init>()V

    .line 2
    iput p0, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->retCode:I

    const-string p0, ""

    .line 3
    iput-object p0, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->descMsg:Ljava/lang/String;

    .line 4
    invoke-interface {p1, v0}, Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;->onGenerateComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V

    return-void
.end method

.method static synthetic lambda$notifyGenerateProgress$61(Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;F)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;->onGenerateProgress(F)V

    return-void
.end method

.method static synthetic lambda$notifyPreviewProgress$59(Lcom/tencent/ugc/TXVideoEditer;ILcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;)V
    .locals 2

    .line 1
    div-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->filtInvalidatedFrame(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;->onPreviewProgress(I)V

    .line 3
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mTargetSeekPts:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$notifyProcessComplete$60(ILcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

    invoke-direct {v0}, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;-><init>()V

    .line 2
    iput p0, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->retCode:I

    const-string p0, ""

    .line 3
    iput-object p0, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->descMsg:Ljava/lang/String;

    .line 4
    invoke-interface {p1, v0}, Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;->onProcessComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V

    return-void
.end method

.method static synthetic lambda$null$0(Lcom/tencent/ugc/TXVideoEditer;IJI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/tencent/ugc/TXVideoEditer;->calculateProgress(J)F

    move-result p1

    goto :goto_0

    :cond_0
    int-to-float p2, p4

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    int-to-float p1, p1

    div-float p1, p2, p1

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;

    invoke-interface {p0, p1}, Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;->onProcessProgress(F)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$onAudioEncodedFrame$57(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/AudioFrame;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMp4Writer:Lcom/tencent/ugc/MP4Writer;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEncoderStarted:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/ugc/MP4Writer;->writeAudioFrame(Lcom/tencent/ugc/AudioFrame;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onAudioEncodedFrameComplete$58(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAudioEncodedFrameComplete end flag = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEnd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEnd:Z

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAVSyncer;->setAudioEos()V

    .line 5
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->handleEncodedCompletedInner()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onVideoEncodedFrame$55(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEncoderStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMp4Writer:Lcom/tencent/ugc/MP4Writer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/tencent/ugc/MP4Writer;->writeVideoFrame(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsProcessToFullKeyFrame:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;

    if-eqz v0, :cond_3

    .line 6
    iget-wide v1, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    invoke-direct {p0, v1, v2}, Lcom/tencent/ugc/TXVideoEditer;->calculateProgress(J)F

    move-result p0

    invoke-interface {v0, p0}, Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;->onProcessProgress(F)V

    return-void

    .line 7
    :cond_2
    iget-wide v0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->calculateProgress(J)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->notifyGenerateProgress(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic lambda$onVideoEncodedFrameComplete$56(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVideoEncodedFrameComplete end flag = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEnd:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAVSyncer;->setVideoEos()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEnd:Z

    .line 5
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->handleEncodedCompletedInner()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$pausePlay$41(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pausePlay "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAVSyncer;->stop()V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->stop()V

    .line 5
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCAudioProcessor;->stop()V

    return-void
.end method

.method static synthetic lambda$previewAtTime$44(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mPendingPreviewAtTime:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "previewAtTime time = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXVideoEditer"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/ugc/UGCMediaListSource;->seekTo(J)V

    .line 4
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/ugc/UGCVideoProcessor;->seekTo(J)V

    .line 5
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCAVSyncer;->resetClock()V

    return-void
.end method

.method static synthetic lambda$refreshOneFrame$51(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCVideoProcessor;->refreshOneFrame()V

    return-void
.end method

.method static synthetic lambda$release$37(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string v1, "release"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->unInitialize()V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAudioProcessor;->unInitialize()V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAudioProcessor;->destroy()V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCMediaListSource;->uninitialize()V

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mThumbnailGenerator:Lcom/tencent/ugc/UGCThumbnailGenerator;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCThumbnailGenerator;->uninitialize()V

    .line 7
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->stopMp4Writer()V

    .line 8
    invoke-static {}, Lcom/tencent/ugc/UGCInitializer;->uninitialize()V

    return-void
.end method

.method static synthetic lambda$resumePlay$42(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resumePlay "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAVSyncer;->start()V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCVideoProcessor;->start(Z)V

    .line 5
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {p0, v1}, Lcom/tencent/ugc/UGCAudioProcessor;->start(Z)V

    return-void
.end method

.method static synthetic lambda$setAnimatedPasterList$20(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string v1, "setAnimatedPasterList"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCVideoProcessor;->getWatermarkProcessor()Lcom/tencent/ugc/videoprocessor/WatermarkProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/videoprocessor/WatermarkProcessor;->setAnimatedPasterList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setAudioBitrate$48(Lcom/tencent/ugc/TXVideoEditer;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setAudioBitrate: bitrate= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioEncodeBitrate:I

    return-void
.end method

.method static synthetic lambda$setBGM$11(Lcom/tencent/ugc/TXVideoEditer;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->setBGM(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->doStopPlayInner()V

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mBGMFormat:Landroid/media/MediaFormat;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mHasBGM:Z

    .line 5
    iget-object p2, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioFormatList:Ljava/util/List;

    invoke-static {p2}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {p2, p1}, Lcom/tencent/ugc/UGCAVSyncer;->setAudioExist(Z)V

    .line 7
    sget-object p1, Lcom/tencent/ugc/UGCAVSyncer$SyncMode;->VIDEO_MASTER:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mPreviewSyncMode:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    .line 8
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCAVSyncer;->setSyncMode(Lcom/tencent/ugc/UGCAVSyncer$SyncMode;)V

    :cond_0
    return-void

    :cond_1
    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/tencent/ugc/TXVideoEditer;->mHasBGM:Z

    .line 10
    new-instance v0, Lcom/tencent/ugc/common/MediaExtractorBuilder;

    invoke-direct {v0}, Lcom/tencent/ugc/common/MediaExtractorBuilder;-><init>()V

    .line 11
    invoke-virtual {v0, p1}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->setPath(Ljava/lang/String;)Lcom/tencent/ugc/common/MediaExtractorBuilder;

    move-result-object p1

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->setMimeType(Ljava/lang/String;)Lcom/tencent/ugc/common/MediaExtractorBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/ugc/common/MediaExtractorBuilder;->build()Landroid/media/MediaExtractor;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "TXVideoEditer"

    const-string p1, "setBGM: build extractor fail."

    .line 12
    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mBGMFormat:Landroid/media/MediaFormat;

    .line 15
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {p1, p2}, Lcom/tencent/ugc/UGCAVSyncer;->setAudioExist(Z)V

    .line 16
    sget-object p1, Lcom/tencent/ugc/UGCAVSyncer$SyncMode;->AUDIO_MASTER:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mPreviewSyncMode:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    .line 17
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCAVSyncer;->setSyncMode(Lcom/tencent/ugc/UGCAVSyncer$SyncMode;)V

    return-void
.end method

.method static synthetic lambda$setBGMAtVideoTime$13(Lcom/tencent/ugc/TXVideoEditer;J)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setBGMAtVideoTime: videoStartTime= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/ugc/UGCAudioProcessor;->setBGMAtVideoTime(J)V

    return-void
.end method

.method static synthetic lambda$setBGMFadeInOutDuration$16(Lcom/tencent/ugc/TXVideoEditer;JJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setBGMFadeInOutDuration: fadeInDuration= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",fadeOutDuration= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/ugc/UGCAudioProcessor;->setFadeInOutDuration(JJ)V

    return-void
.end method

.method static synthetic lambda$setBGMLoop$12(Lcom/tencent/ugc/TXVideoEditer;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setBGMLoop: looping= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->setBGMLoop(Z)V

    return-void
.end method

.method static synthetic lambda$setBGMStartTime$14(Lcom/tencent/ugc/TXVideoEditer;JJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setBGMStartTime: startTime= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/ugc/UGCAudioProcessor;->setBGMStartTime(JJ)V

    return-void
.end method

.method static synthetic lambda$setBGMVolume$15(Lcom/tencent/ugc/TXVideoEditer;F)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setBGMVolume: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->setBGMVolume(F)V

    return-void
.end method

.method static synthetic lambda$setBeautyFilter$8(Lcom/tencent/ugc/TXVideoEditer;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setBeautyFilter: beautyLevel= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",whiteningLevel= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/ugc/UGCVideoProcessor;->setBeautyFilter(II)V

    return-void
.end method

.method static synthetic lambda$setCustomVideoProcessListener$3(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditer$TXVideoCustomProcessListener;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setCustomVideoProcessListener: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCVideoProcessor;->setCustomVideoProcessListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoCustomProcessListener;)V

    return-void
.end method

.method static synthetic lambda$setCutFromTime$46(Lcom/tencent/ugc/TXVideoEditer;JJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCutFromTime: startTime= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",endTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-wide p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mCutStartTimeMs:J

    .line 3
    iput-wide p3, p0, Lcom/tencent/ugc/TXVideoEditer;->mCutEndTimeMs:J

    return-void
.end method

.method static synthetic lambda$setFilter$6(Lcom/tencent/ugc/TXVideoEditer;Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setFilter: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mCombineFilterInfo:Lcom/tencent/ugc/CombineFilterInfo;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/ugc/CombineFilterInfo;->getLeftSpecialRatio()F

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mCombineFilterInfo:Lcom/tencent/ugc/CombineFilterInfo;

    invoke-virtual {v1}, Lcom/tencent/ugc/CombineFilterInfo;->getRightSpecialRatio()F

    move-result v1

    move v4, v0

    move v6, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    :goto_0
    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p0

    move-object v3, p1

    .line 5
    invoke-virtual/range {v2 .. v7}, Lcom/tencent/ugc/TXVideoEditer;->setFilter(Landroid/graphics/Bitmap;FLandroid/graphics/Bitmap;FF)V

    return-void
.end method

.method static synthetic lambda$setFilter$7(Lcom/tencent/ugc/TXVideoEditer;FFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setFilter: leftIntensity= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",rightIntensity= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",leftRatio= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    move-object v3, p4

    move v4, p1

    move-object v5, p5

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/ugc/UGCVideoProcessor;->setFilter(Landroid/graphics/Bitmap;FLandroid/graphics/Bitmap;FF)V

    return-void
.end method

.method static synthetic lambda$setPasterList$21(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string v1, "setPasterList"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCVideoProcessor;->getWatermarkProcessor()Lcom/tencent/ugc/videoprocessor/WatermarkProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/videoprocessor/WatermarkProcessor;->setPasterList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setPictureList$9(Lcom/tencent/ugc/TXVideoEditer;ILjava/util/List;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPictureList: fps= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bitmapList.size= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    .line 3
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v0, p2, p1}, Lcom/tencent/ugc/UGCMediaListSource;->setPictureList(Ljava/util/List;I)V

    .line 5
    new-instance p1, Lcom/tencent/liteav/base/util/q;

    const/16 p2, 0x2d0

    const/16 v0, 0x500

    invoke-direct {p1, p2, v0}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->setOutputSize(Lcom/tencent/liteav/base/util/q;)V

    return-void
.end method

.method static synthetic lambda$setPictureTransition$10(Lcom/tencent/ugc/TXVideoEditer;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setPictureTransition: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->setPictureTransition(I)V

    .line 3
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCVideoProcessor;->setPictureTransition(I)V

    return-void
.end method

.method static synthetic lambda$setProfile$4(Lcom/tencent/ugc/TXVideoEditer;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setProfile: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mEncodeProfile:I

    return-void
.end method

.method static synthetic lambda$setRenderRotation$22(Lcom/tencent/ugc/TXVideoEditer;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setRenderRotation: rotation= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 3
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCVideoProcessor;->setRenderRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    return-void
.end method

.method static synthetic lambda$setRepeatPlay$24(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string v1, "setRepeatPlay"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->setRepeatPlay(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setReverse$25(Lcom/tencent/ugc/TXVideoEditer;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setReverse: isReverse= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsReverse:Z

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->setReverse(Z)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->getEffectProcessor()Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v1}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->setReverse(ZJ)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->getTransitionProcessor()Lcom/tencent/ugc/videoprocessor/VideoTransitionProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v1}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/ugc/videoprocessor/VideoTransitionProcessor;->setReverse(ZJ)V

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->getWatermarkProcessor()Lcom/tencent/ugc/videoprocessor/WatermarkProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v1}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/ugc/videoprocessor/WatermarkProcessor;->setReverse(ZJ)V

    .line 7
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->doStopPlayInner()V

    return-void
.end method

.method static synthetic lambda$setSpecialRatio$5(Lcom/tencent/ugc/TXVideoEditer;F)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSpecialRatio: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mCombineFilterInfo:Lcom/tencent/ugc/CombineFilterInfo;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/tencent/ugc/CombineFilterInfo;

    invoke-direct {v0}, Lcom/tencent/ugc/CombineFilterInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mCombineFilterInfo:Lcom/tencent/ugc/CombineFilterInfo;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mCombineFilterInfo:Lcom/tencent/ugc/CombineFilterInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/CombineFilterInfo;->setLeftSpecialRatio(F)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mCombineFilterInfo:Lcom/tencent/ugc/CombineFilterInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/CombineFilterInfo;->setRightSpecialRatio(F)V

    .line 6
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCVideoProcessor;->setSpecialRatio(F)V

    return-void
.end method

.method static synthetic lambda$setSpeedList$23(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSpeedList "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXVideoEditer"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/UGCVideoProcessor;->setSpeedList(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->setSpeedList(Ljava/util/List;)V

    .line 5
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->setSpeedList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setSubtitleList$19(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string v1, "setSubtitleList"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCVideoProcessor;->getWatermarkProcessor()Lcom/tencent/ugc/videoprocessor/WatermarkProcessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/videoprocessor/WatermarkProcessor;->setSubtitleList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setTXVideoPreviewListener$38(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setTXVideoPreviewListener: listener= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoPreviewListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;

    return-void
.end method

.method static synthetic lambda$setTailWaterMark$18(Lcom/tencent/ugc/TXVideoEditer;ILandroid/graphics/Bitmap;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;)V
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setTailWaterMark: duration= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->getWatermarkProcessor()Lcom/tencent/ugc/videoprocessor/WatermarkProcessor;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide v4

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/ugc/videoprocessor/WatermarkProcessor;->setTailWaterMark(Landroid/graphics/Bitmap;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;JI)V

    .line 5
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->setTailWaterMarkDurationSecond(I)V

    return-void
.end method

.method static synthetic lambda$setThumbnail$35(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setThumbnail: thumbnail.count= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,thumbnail.width= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,thumbnail.height= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    invoke-direct {v0}, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessThumbnailInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    .line 3
    iget p0, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;->count:I

    iput p0, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->thumbnailCount:I

    .line 4
    iget p0, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;->width:I

    iput p0, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->width:I

    .line 5
    iget p0, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;->height:I

    iput p0, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->height:I

    const/4 p0, 0x0

    .line 6
    iput-boolean p0, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->fast:Z

    return-void
.end method

.method static synthetic lambda$setThumbnailListener$36(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setThumbnailListener: listener= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessThumbnailListener:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

    return-void
.end method

.method static synthetic lambda$setTransitionEffect$26(Lcom/tencent/ugc/TXVideoEditer;IJJLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTransitionEffect: type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,startTimeMs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ,transitionDurationMs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCVideoProcessor;->getTransitionProcessor()Lcom/tencent/ugc/videoprocessor/VideoTransitionProcessor;

    move-result-object v1

    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    .line 3
    invoke-virtual {p0}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide v3

    move v2, p1

    move-wide v5, p2

    move-wide v7, p4

    .line 4
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/ugc/videoprocessor/VideoTransitionProcessor;->setTransitionEffect(IJJJ)Z

    move-result p0

    .line 5
    invoke-virtual {p6, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic lambda$setVideoBitrate$47(Lcom/tencent/ugc/TXVideoEditer;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVideoBitrate: bitrate= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoEncodeBitrate:I

    return-void
.end method

.method static synthetic lambda$setVideoGenerateListener$45(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVideoGenerateListener: listener= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoGenerateListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;

    return-void
.end method

.method static synthetic lambda$setVideoPath$2(Lcom/tencent/ugc/TXVideoEditer;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->setMediaSourcePaths(Ljava/util/List;)I

    return-void
.end method

.method static synthetic lambda$setVideoProcessListener$32(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVideoProcessListener: listener= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;

    return-void
.end method

.method static synthetic lambda$setVideoVolume$52(Lcom/tencent/ugc/TXVideoEditer;F)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVideoVolume: volume= "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->setVideoVolume(F)V

    return-void
.end method

.method static synthetic lambda$setWaterMark$17(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setWaterMark: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCVideoProcessor;->getWatermarkProcessor()Lcom/tencent/ugc/videoprocessor/WatermarkProcessor;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/tencent/ugc/videoprocessor/WatermarkProcessor;->setWaterMark(Landroid/graphics/Bitmap;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;)V

    return-void
.end method

.method static synthetic lambda$startEffect$28(Lcom/tencent/ugc/TXVideoEditer;IJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startEffect: type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",startTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCVideoProcessor;->getEffectProcessor()Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->startEffect(IJ)V

    return-void
.end method

.method static synthetic lambda$startPlayFromTime$40(Lcom/tencent/ugc/TXVideoEditer;JJ)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startPlayFromTime: startTime= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->doStopPlayInner()V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mEncodeResolution:Lcom/tencent/liteav/base/util/q;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/tencent/ugc/UGCVideoProcessor;->setOutputSize(IILcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    iget v2, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/ugc/UGCVideoProcessor;->setOutputSize(IILcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEnd:Z

    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEnd:Z

    .line 7
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    iget-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mPreviewSyncMode:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    invoke-virtual {v1, v2}, Lcom/tencent/ugc/UGCAVSyncer;->setSyncMode(Lcom/tencent/ugc/UGCAVSyncer$SyncMode;)V

    .line 8
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {v1}, Lcom/tencent/ugc/UGCAVSyncer;->start()V

    .line 9
    iget-wide v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourceRangeStartTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourceRangeEndTimeMs:J

    cmp-long v5, p3, v1

    if-eqz v5, :cond_1

    cmp-long v1, p3, v3

    if-gez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsReverse:Z

    if-eqz v1, :cond_3

    .line 10
    :cond_2
    iput-wide v3, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourceRangeStartTimeMs:J

    .line 11
    iput-wide p3, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourceRangeEndTimeMs:J

    .line 12
    iget-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsReverse:Z

    if-eqz v1, :cond_3

    .line 13
    iput-wide p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourceRangeStartTimeMs:J

    .line 14
    :cond_3
    iget-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsReverse:Z

    if-nez v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/ugc/UGCMediaListSource;->seekTo(J)V

    .line 16
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {p1, p3, p4}, Lcom/tencent/ugc/UGCMediaListSource;->setPlayEndTime(J)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {p1, p3, p4}, Lcom/tencent/ugc/UGCMediaListSource;->seekTo(J)V

    .line 18
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    const-wide p2, 0x7fffffffffffffffL

    invoke-virtual {p1, p2, p3}, Lcom/tencent/ugc/UGCMediaListSource;->setPlayEndTime(J)V

    .line 19
    :goto_1
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    iget-object p2, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessProgressListener:Lcom/tencent/ugc/UGCVideoProcessor$VideoProcessListener;

    invoke-virtual {p1, p2}, Lcom/tencent/ugc/UGCVideoProcessor;->setProgressListener(Lcom/tencent/ugc/UGCVideoProcessor$VideoProcessListener;)V

    .line 20
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/UGCVideoProcessor;->start(Z)V

    .line 21
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/UGCAudioProcessor;->start(Z)V

    .line 22
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsProcessToFullKeyFrame:Z

    .line 23
    iput-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsPlaying:Z

    .line 25
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mTargetSeekPts:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$stopEffect$29(Lcom/tencent/ugc/TXVideoEditer;IJ)V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string/jumbo v1, "stopEffect"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCVideoProcessor;->getEffectProcessor()Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/ugc/videoprocessor/VideoEffectProcessor;->stopEffect(IJ)V

    return-void
.end method

.method static synthetic lambda$stopPlay$43(Lcom/tencent/ugc/TXVideoEditer;)V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string/jumbo v1, "stopPlay"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->doStopPlayInner()V

    return-void
.end method

.method private notifyGenerateComplete(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoGenerateListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;

    .line 2
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessOutputPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessOutputPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessOutputPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    const/16 v1, 0x408

    const-string v3, ""

    .line 4
    invoke-static {v1, v2, v3}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(IILjava/lang/String;)V

    const/16 v1, 0x409

    long-to-int p3, p2

    .line 5
    invoke-static {v1, p3, v3}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(IILjava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    iget-object p2, p0, Lcom/tencent/ugc/TXVideoEditer;->mMainHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p1, v0}, Lcom/tencent/ugc/bj;->a(ILcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private notifyGenerateProgress(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoGenerateListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMainHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {v0, p1}, Lcom/tencent/ugc/bi;->a(Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyPreviewFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoPreviewListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMainHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {v0}, Lcom/tencent/ugc/bg;->a(Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyPreviewProgress(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoPreviewListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMainHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1, v0}, Lcom/tencent/ugc/bf;->a(Lcom/tencent/ugc/TXVideoEditer;ILcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private notifyProcessComplete(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMainHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p1, v0}, Lcom/tencent/ugc/bh;->a(ILcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private onAudioEncodedFrame(Lcom/tencent/ugc/AudioFrame;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "onAudioEncodedFrame frame is null."

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/bc;->a(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/AudioFrame;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onAudioEncodedFrameComplete()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/bd;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onPlayProgressEnd()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProgressEnd mIsPreviewAudioEnd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsPreviewVideoEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEnd:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEnd:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAVSyncer;->stop()V

    .line 4
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->notifyPreviewFinished()V

    :cond_0
    return-void
.end method

.method private onVideoEncodedFrame(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "onVideoEncodedFrame frame is null."

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/ba;->a(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onVideoEncodedFrameComplete()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/bb;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private processVideoInternal()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isSimpleFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

    invoke-direct {v0}, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;-><init>()V

    const/4 v1, -0x5

    .line 3
    iput v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->retCode:I

    const-string v1, "licence verify failed"

    .line 4
    iput-object v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->descMsg:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessListener:Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1, v0}, Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;->onProcessComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x40a

    .line 7
    invoke-static {v0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    const-string v0, "TXVideoEditer"

    const-string v1, "processVideoInternal"

    .line 8
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->generateVideoPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessOutputPath:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourcePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/ugc/TXVideoEditer;->isFullIFrame(Ljava/lang/String;)Z

    move-result v1

    .line 11
    new-instance v2, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;

    invoke-direct {v2}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;-><init>()V

    .line 12
    sget-object v3, Lcom/tencent/ugc/common/UGCConstants$SourceType;->VIDEO:Lcom/tencent/ugc/common/UGCConstants$SourceType;

    invoke-virtual {v2, v3}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setSourceType(Lcom/tencent/ugc/common/UGCConstants$SourceType;)V

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v2, v3}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setFullIFrame(Z)V

    .line 14
    iget-object v4, p0, Lcom/tencent/ugc/TXVideoEditer;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {v2, v4}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setEncodeRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    const/4 v4, 0x4

    .line 15
    invoke-virtual {v2, v4}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setOutputResolution(I)V

    .line 16
    iget-object v4, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoFormatList:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->setInputVideoMediaFormat(Ljava/util/List;)V

    .line 17
    invoke-virtual {v2}, Lcom/tencent/ugc/common/UGCTranscodeVideoEncodeParamsDecider;->getDecidedEncodeParams()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v2

    .line 18
    new-instance v4, Lcom/tencent/ugc/common/UGCTranscodeAudioEncodeParamsDecider;

    invoke-direct {v4}, Lcom/tencent/ugc/common/UGCTranscodeAudioEncodeParamsDecider;-><init>()V

    .line 19
    iget-object v5, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioFormatList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/tencent/ugc/common/UGCTranscodeAudioEncodeParamsDecider;->setInputAudioMediaFormat(Ljava/util/List;)V

    .line 20
    invoke-virtual {v4}, Lcom/tencent/ugc/common/UGCTranscodeAudioEncodeParamsDecider;->getDecidedEncodeParams()Lcom/tencent/ugc/AudioEncodeParams;

    move-result-object v4

    .line 21
    iget-object v5, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourcePath:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tencent/ugc/TXVideoEditer;->isGopEqualOne(Ljava/lang/String;)Z

    move-result v5

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "processVideoInternal: hasIFramePerMinute= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", inputFullIFrame= "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mProcessOutputPath= "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessOutputPath:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessThumbnailListener:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

    .line 24
    iput-boolean v3, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsProcessToFullKeyFrame:Z

    .line 25
    iput-boolean v3, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsGenerating:Z

    if-nez v1, :cond_2

    .line 26
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessOutputPath:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Lcom/tencent/ugc/TXVideoEditer;->startRecord(Ljava/lang/String;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/ugc/AudioEncodeParams;)V

    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mInnerThumbnailListener:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

    .line 28
    :goto_0
    iget v1, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget v2, v2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    invoke-direct {p0, v1, v2, v0}, Lcom/tencent/ugc/TXVideoEditer;->handleProcessThumbnail(IILcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V

    return-void
.end method

.method private startMP4Writer(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startMP4Writer "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/tencent/ugc/MP4Writer;

    invoke-direct {v0}, Lcom/tencent/ugc/MP4Writer;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMp4Writer:Lcom/tencent/ugc/MP4Writer;

    .line 3
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMp4WriterListener:Lcom/tencent/ugc/MP4Writer$MP4WriterListener;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/MP4Writer;->setListener(Lcom/tencent/ugc/MP4Writer$MP4WriterListener;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioFormatList:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mHasBGM:Z

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMp4Writer:Lcom/tencent/ugc/MP4Writer;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/MP4Writer;->setHasAudio(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMp4Writer:Lcom/tencent/ugc/MP4Writer;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/MP4Writer;->setHasVideo(Z)V

    .line 7
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMp4Writer:Lcom/tencent/ugc/MP4Writer;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/MP4Writer;->setPath(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMp4Writer:Lcom/tencent/ugc/MP4Writer;

    invoke-virtual {p1}, Lcom/tencent/ugc/MP4Writer;->start()V

    return-void
.end method

.method private startRecord(Ljava/lang/String;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/ugc/AudioEncodeParams;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->doStopPlayInner()V

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/TXVideoEditer;->stopMp4Writer()V

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->startMP4Writer(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEncoderStarted:Z

    .line 5
    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEncoderStarted:Z

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoEncodedFrameListener:Lcom/tencent/ugc/UGCVideoProcessor$VideoEncodedFrameListener;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCVideoProcessor;->setVideoEncodedFrameListener(Lcom/tencent/ugc/UGCVideoProcessor$VideoEncodedFrameListener;)V

    .line 7
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioEncodedFrameListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCAudioProcessor;->setAudioEncodedFrameListener(Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;)V

    .line 8
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    sget-object v1, Lcom/tencent/ugc/UGCAVSyncer$SyncMode;->INTERLEAVE_OUTPUT_WITHOUT_SKIP:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCAVSyncer;->setSyncMode(Lcom/tencent/ugc/UGCAVSyncer$SyncMode;)V

    .line 9
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAVSyncer;->start()V

    .line 10
    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsAudioEnd:Z

    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsVideoEnd:Z

    .line 11
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    iget-wide v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mCutStartTimeMs:J

    iget-wide v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mCutEndTimeMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/ugc/UGCMediaListSource;->setVideoSourceRange(JJ)V

    .line 12
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    iget v0, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget v1, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/ugc/UGCVideoProcessor;->setOutputSize(IILcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    .line 13
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {p1, p2}, Lcom/tencent/ugc/UGCVideoProcessor;->setEncodeParams(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    .line 14
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tencent/ugc/UGCVideoProcessor;->start(Z)V

    .line 15
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {p1, p3}, Lcom/tencent/ugc/UGCAudioProcessor;->setEncodeParams(Lcom/tencent/ugc/AudioEncodeParams;)V

    .line 16
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {p1, p2}, Lcom/tencent/ugc/UGCAudioProcessor;->start(Z)V

    return-void
.end method

.method private stopMp4Writer()V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string/jumbo v1, "stopMp4Writer"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMp4Writer:Lcom/tencent/ugc/MP4Writer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/ugc/MP4Writer;->stop()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMp4Writer:Lcom/tencent/ugc/MP4Writer;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/av;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteAllEffect()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TXVideoEditer"

    const-string v1, "deleteAllEffect is not supported in UGC_Smart license"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/z;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteLastEffect()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TXVideoEditer"

    const-string v1, "deleteLastEffect is not supported in UGC_Smart license"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/y;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteLastTransitionEffect()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TXVideoEditer"

    const-string v1, "deleteLastTransitionEffect is not supported in UGC_Smart license"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/u;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public generateVideo(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2}, Lcom/tencent/ugc/au;->a(Lcom/tencent/ugc/TXVideoEditer;ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumbnail(IIIZLcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p1

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/tencent/ugc/ac;->a(Lcom/tencent/ugc/TXVideoEditer;IIZILcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getThumbnail(Ljava/util/List;IIZLcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;IIZ",
            "Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static/range {p0 .. p5}, Lcom/tencent/ugc/ab;->a(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;IIZLcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getThumbnailCount()I
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string v1, "getThumbnailCount"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessThumbnailInfo:Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;

    iget-object v0, v0, Lcom/tencent/ugc/UGCThumbnailGenerator$UGCThumbnailGenerateParams;->thumbnailPtsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoProcessPath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getVideoProcessPath: process output path= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessOutputPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mProcessOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSourcePath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getVideoSourcePath: sourcePath= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVideoEditer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public initWithPreview(Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;)V
    .locals 3

    const-string v0, "TXVideoEditer"

    if-nez p1, :cond_0

    const-string p1, "initWithPreview param is null."

    .line 1
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initWithPreview: view= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;->videoView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " renderMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;->renderMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMainHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/ugc/aj;->a(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method protected isHasAudio()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCMediaListSource;->hasAudioData()Z

    move-result v0

    return v0
.end method

.method public pausePlay()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/al;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public previewAtTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mPendingPreviewAtTime:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mTargetSeekPts:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/ao;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public processVideo()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/af;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refreshOneFrame()V
    .locals 2

    const-string v0, "TXVideoEditer"

    const-string v1, "refreshOneFrame"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/aw;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/ag;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resumePlay()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/am;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAnimatedPasterList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXAnimatedPaster;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setAnimatedPasterList is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x402

    .line 3
    invoke-static {v0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/n;->a(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/as;->a(Lcom/tencent/ugc/TXVideoEditer;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBGM(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TXVideoEditer"

    if-nez v0, :cond_0

    const-string p1, "setBGM is not supported in UGC_Smart license"

    .line 2
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "setBGM: path= "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->isBGMValid(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const-string v3, " setBGM: bgm path is empty."

    .line 6
    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, " setBGM: check return: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, v3}, Lcom/tencent/ugc/d;->a(Lcom/tencent/ugc/TXVideoEditer;Ljava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    const/16 p1, 0x400

    .line 9
    invoke-static {p1}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    return v1
.end method

.method public setBGMAtVideoTime(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string p2, "setBGMAtVideoTime is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2}, Lcom/tencent/ugc/f;->a(Lcom/tencent/ugc/TXVideoEditer;J)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBGMFadeInOutDuration(JJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string p2, "setBGMFadeInOutDuration is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/ugc/i;->a(Lcom/tencent/ugc/TXVideoEditer;JJ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBGMLoop(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setBGMLoop is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/e;->a(Lcom/tencent/ugc/TXVideoEditer;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBGMStartTime(JJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string p2, "setBGMStartTime is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/ugc/g;->a(Lcom/tencent/ugc/TXVideoEditer;JJ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBGMVolume(F)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setBGMVolume is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/h;->a(Lcom/tencent/ugc/TXVideoEditer;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBeautyFilter(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string p2, "setBeautyFilter is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2}, Lcom/tencent/ugc/bm;->a(Lcom/tencent/ugc/TXVideoEditer;II)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCustomVideoProcessListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoCustomProcessListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setCustomVideoProcessListener is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/x;->a(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditer$TXVideoCustomProcessListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCutFromTime(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/ugc/aq;->a(Lcom/tencent/ugc/TXVideoEditer;JJ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    const/16 p1, 0x3fa

    .line 2
    invoke-static {p1}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    return-void
.end method

.method public setFilter(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setFilter is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x3ff

    .line 3
    invoke-static {v0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/be;->a(Lcom/tencent/ugc/TXVideoEditer;Landroid/graphics/Bitmap;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFilter(Landroid/graphics/Bitmap;FLandroid/graphics/Bitmap;FF)V
    .locals 7

    .line 5
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string p2, "setFilter is not supported in UGC_Smart license"

    .line 6
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    move-object v1, p0

    move v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/tencent/ugc/bl;->a(Lcom/tencent/ugc/TXVideoEditer;FFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setIsFullIFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mIsFullIFrame:Z

    return-void
.end method

.method protected setIsSplitScreen(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->setIsMediaSourceOverlapped(Z)V

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, v1}, Lcom/tencent/ugc/UGCVideoProcessor;->setSplitScreenList(Ljava/util/List;II)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/tencent/ugc/TXVideoEditer;->setOutputSize(Lcom/tencent/liteav/base/util/q;)V

    return-void
.end method

.method protected setMediaSourcePaths(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mEncodeResolution:Lcom/tencent/liteav/base/util/q;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/tencent/ugc/UGCVideoProcessor;->setOutputSize(IILcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    iget v2, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/ugc/UGCVideoProcessor;->setOutputSize(IILcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mThumbnailGenerator:Lcom/tencent/ugc/UGCThumbnailGenerator;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/UGCThumbnailGenerator;->setVideoSourceList(Ljava/util/List;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->setVideoSources(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mSourcePath:Ljava/lang/String;

    .line 8
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoFormatList:Ljava/util/List;

    .line 9
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioFormatList:Ljava/util/List;

    .line 10
    invoke-direct {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->getAllMediaFormatFromSource(Ljava/util/List;)V

    .line 11
    iget-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoFormatList:Ljava/util/List;

    invoke-static {v2}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    iget-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {v2, v1}, Lcom/tencent/ugc/UGCAVSyncer;->setVideoExist(Z)V

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioFormatList:Ljava/util/List;

    invoke-static {v2}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    iget-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    invoke-virtual {v2, v1}, Lcom/tencent/ugc/UGCAVSyncer;->setAudioExist(Z)V

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioFormatList:Ljava/util/List;

    invoke-static {v2}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_4

    .line 17
    sget-object p1, Lcom/tencent/ugc/UGCAVSyncer$SyncMode;->CLOCK_MASTER:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mPreviewSyncMode:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    goto :goto_1

    .line 18
    :cond_4
    sget-object p1, Lcom/tencent/ugc/UGCAVSyncer$SyncMode;->AUDIO_MASTER:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mPreviewSyncMode:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    goto :goto_1

    .line 19
    :cond_5
    sget-object p1, Lcom/tencent/ugc/UGCAVSyncer$SyncMode;->VIDEO_MASTER:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mPreviewSyncMode:Lcom/tencent/ugc/UGCAVSyncer$SyncMode;

    :goto_1
    return v0
.end method

.method protected setOutputSize(Lcom/tencent/liteav/base/util/q;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mEncodeResolution:Lcom/tencent/liteav/base/util/q;

    return-void
.end method

.method public setPasterList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXPaster;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setPasterList is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x401

    .line 3
    invoke-static {v0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/o;->a(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPictureList(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string p2, "setPictureList is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/16 v0, 0x406

    .line 3
    invoke-static {v0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p2, p1}, Lcom/tencent/ugc/bn;->a(Lcom/tencent/ugc/TXVideoEditer;ILjava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setPictureTransition(I)J
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setPictureTransition is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/c;->a(Lcom/tencent/ugc/TXVideoEditer;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->b(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/tencent/ugc/TXVideoEditer;->mMediaListSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {p1}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public setProfile(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/ai;->a(Lcom/tencent/ugc/TXVideoEditer;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRenderRotation(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setRenderRotation is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/p;->a(Lcom/tencent/ugc/TXVideoEditer;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRepeatPlay(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setRepeatPlay is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x3fc

    .line 3
    invoke-static {v0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/r;->a(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setReverse(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setReverse is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x3fd

    .line 3
    invoke-static {v0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/s;->a(Lcom/tencent/ugc/TXVideoEditer;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSpecialRatio(F)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setSpecialRatio is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/at;->a(Lcom/tencent/ugc/TXVideoEditer;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSpeedList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setSpeedList is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x3fb

    .line 3
    invoke-static {v0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/q;->a(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setSplitScreenList(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mVideoProcessor:Lcom/tencent/ugc/UGCVideoProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/ugc/UGCVideoProcessor;->setSplitScreenList(Ljava/util/List;II)V

    .line 2
    new-instance p1, Lcom/tencent/liteav/base/util/q;

    invoke-direct {p1, p2, p3}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/TXVideoEditer;->setOutputSize(Lcom/tencent/liteav/base/util/q;)V

    return-void
.end method

.method public setSubtitleList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXSubtitle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string v0, "setSubtitleList is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x403

    .line 3
    invoke-static {v0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/l;->a(Lcom/tencent/ugc/TXVideoEditer;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTXVideoPreviewListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/ah;->a(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditer$TXVideoPreviewListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTailWaterMark(Landroid/graphics/Bitmap;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string p2, "setTailWaterMark is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x405

    .line 3
    invoke-static {v0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p3, p1, p2}, Lcom/tencent/ugc/k;->a(Lcom/tencent/ugc/TXVideoEditer;ILandroid/graphics/Bitmap;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setThumbnail(Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/ad;->a(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setThumbnailListener(Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/ae;->a(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTransitionEffect(IJJ)Z
    .locals 8

    const-wide/16 v6, 0x3e8

    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move-wide v4, p2

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/ugc/TXVideoEditer;->setTransitionEffect(IJJJ)Z

    move-result p1

    return p1
.end method

.method public setTransitionEffect(IJJJ)Z
    .locals 7

    .line 2
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p1, "TXVideoEditer"

    const-string p2, "setTransitionEffect is not supported in UGC_Smart license"

    .line 3
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p3

    .line 4
    :cond_0
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    iget-object p3, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/tencent/ugc/t;->a(Lcom/tencent/ugc/TXVideoEditer;IJJLjava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/tencent/liteav/base/util/j;->b(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1
.end method

.method public setVideoBitrate(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/ar;->a(Lcom/tencent/ugc/TXVideoEditer;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVideoGenerateListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/ap;->a(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVideoPath "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TXVideoEditer"

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/tencent/ugc/TXVideoEditer;->isMediaSourceValid(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is illegal."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/m;->a(Lcom/tencent/ugc/TXVideoEditer;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setVideoProcessListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/aa;->a(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVideoVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/ugc/ax;->a(Lcom/tencent/ugc/TXVideoEditer;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setVideoVolumes([F)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mAudioProcessor:Lcom/tencent/ugc/UGCAudioProcessor;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->setVideoVolumes([F)V

    return-void
.end method

.method public setWaterMark(Landroid/graphics/Bitmap;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string p2, "setWaterMark is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x404

    .line 3
    invoke-static {v0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p2, p1}, Lcom/tencent/ugc/j;->a(Lcom/tencent/ugc/TXVideoEditer;Lcom/tencent/ugc/TXVideoEditConstants$TXRect;Landroid/graphics/Bitmap;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startEffect(IJ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string/jumbo p2, "startEffect is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x3fe

    const-string v1, ""

    .line 3
    invoke-static {v0, p1, v1}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(IILjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/ugc/v;->a(Lcom/tencent/ugc/TXVideoEditer;IJ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPlayFromTime(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/ugc/ak;->a(Lcom/tencent/ugc/TXVideoEditer;JJ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopEffect(IJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/ugc/UGCLicenseChecker;->isStandardFunctionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "TXVideoEditer"

    const-string/jumbo p2, "stopEffect is not supported in UGC_Smart license"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/ugc/w;->a(Lcom/tencent/ugc/TXVideoEditer;IJ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopPlay()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/TXVideoEditer;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0}, Lcom/tencent/ugc/an;->a(Lcom/tencent/ugc/TXVideoEditer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method
