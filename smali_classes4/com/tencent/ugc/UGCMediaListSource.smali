.class public Lcom/tencent/ugc/UGCMediaListSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/UGCMediaListSource$a;
    }
.end annotation


# static fields
.field private static final MAX_FRAME_SIZE:I = 0x5

.field private static final READ_FRAME_TIME_OUT_MS:I = 0x5

.field public static final SEEK_TIME_OUT:I = 0x3e8


# instance fields
.field private final mAudioFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/ugc/UGCFrameQueue<",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/AudioFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAudioHandler:Lcom/tencent/liteav/base/util/CustomHandler;

.field private mAudioSeekTimeInClip:J

.field private mBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCalculateDurationTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mClipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/ugc/Clip;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAudioClipIndex:I

.field private mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

.field private mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

.field private mCurrentVideoClipIndex:I

.field private mFps:I

.field private mHasAudioDataTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMediaSourceOverlapped:Z

.field private mIsPreciseSeek:Z

.field private mIsReverse:Z

.field private mLastAudioFrameTimestamp:J

.field private mLastVideoFrameTimestamp:J

.field private final mMediaInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/ugc/UGCMediaListSource$a;",
            ">;"
        }
    .end annotation
.end field

.field private mNextPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

.field private mNextVideoClipIndex:I

.field private final mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/ugc/UGCFrameQueue<",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPlayEndTime:J

.field private mRepeatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceRangeEnd:J

.field private mSourceRangeStart:J

.field private mSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;",
            ">;"
        }
    .end annotation
.end field

.field private final mTAG:Ljava/lang/String;

.field private final mTailPixelFrameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mTailWaterMarkDurationMs:J

.field private mTotalDuration:J

.field private mTransitionType:I

.field private mVideoHandler:Lcom/tencent/liteav/base/util/CustomHandler;

.field private mVideoSeekTimeInClip:J

.field private mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    .line 3
    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    .line 4
    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextVideoClipIndex:I

    const-wide/16 v1, -0x1

    .line 5
    iput-wide v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoSeekTimeInClip:J

    .line 6
    iput-wide v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioSeekTimeInClip:J

    .line 7
    iput-wide v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastVideoFrameTimestamp:J

    .line 8
    iput-wide v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastAudioFrameTimestamp:J

    .line 9
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsMediaSourceOverlapped:Z

    const/16 v1, 0x14

    .line 10
    iput v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mFps:I

    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTransitionType:I

    const-wide/16 v2, 0x0

    .line 12
    iput-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeStart:J

    const-wide/32 v4, 0x7fffffff

    .line 13
    iput-wide v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeEnd:J

    .line 14
    iput-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTotalDuration:J

    .line 15
    iput-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailWaterMarkDurationMs:J

    .line 16
    iput-boolean v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsPreciseSeek:Z

    .line 17
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsReverse:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 18
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mPlayEndTime:J

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mMediaInfoList:Ljava/util/List;

    .line 21
    new-instance v0, Lcom/tencent/ugc/UGCFrameQueue;

    invoke-direct {v0}, Lcom/tencent/ugc/UGCFrameQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    .line 22
    new-instance v0, Lcom/tencent/ugc/UGCFrameQueue;

    invoke-direct {v0}, Lcom/tencent/ugc/UGCFrameQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailPixelFrameList:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UGCMediaListSource_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/tencent/ugc/UGCMediaListSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->uninitializeInternal()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/tencent/ugc/UGCMediaListSource;)Z
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->hasAudioDataInternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$lambda$10(Lcom/tencent/ugc/UGCMediaListSource;)J
    .locals 2

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->calculateTotalDurationOfClips()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$lambda$2(Lcom/tencent/ugc/UGCMediaListSource;)J
    .locals 2

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->calculateTotalDurationOfClips()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$lambda$3(Lcom/tencent/ugc/UGCMediaListSource;)J
    .locals 2

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->calculateTotalDurationOfClips()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$lambda$4(Lcom/tencent/ugc/UGCMediaListSource;)J
    .locals 2

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->calculateTotalDurationOfClips()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$lambda$5(Lcom/tencent/ugc/UGCMediaListSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->resetReadPositionInternal()V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/tencent/ugc/UGCMediaListSource;)J
    .locals 2

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->calculateTotalDurationOfClips()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$lambda$7(Lcom/tencent/ugc/UGCMediaListSource;)J
    .locals 2

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->calculateTotalDurationOfClips()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$lambda$8(Lcom/tencent/ugc/UGCMediaListSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->prePareNextUGCPixelFrameProvider()V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/tencent/ugc/UGCMediaListSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->prePareNextUGCPixelFrameProvider()V

    return-void
.end method

.method private addClipToList(JJLcom/tencent/ugc/UGCMediaListSource$a;)V
    .locals 1

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/tencent/ugc/Clip;

    invoke-direct {v0}, Lcom/tencent/ugc/Clip;-><init>()V

    .line 2
    iput-wide p1, v0, Lcom/tencent/ugc/Clip;->startInFileTime:J

    .line 3
    iput-wide p3, v0, Lcom/tencent/ugc/Clip;->endInFileTime:J

    .line 4
    iget-object p1, p5, Lcom/tencent/ugc/UGCMediaListSource$a;->e:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/ugc/Clip;->path:Ljava/lang/String;

    .line 5
    iget p1, p5, Lcom/tencent/ugc/UGCMediaListSource$a;->d:F

    iput p1, v0, Lcom/tencent/ugc/Clip;->fps:F

    .line 6
    iget-object p1, p5, Lcom/tencent/ugc/UGCMediaListSource$a;->f:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/ugc/Clip;->videoMimeType:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addVideoTailFrameListToQueue()V
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailWaterMarkDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailPixelFrameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v0, 0x28

    .line 2
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/ugc/Clip;

    .line 4
    iget v2, v2, Lcom/tencent/ugc/Clip;->fps:F

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    float-to-long v0, v0

    .line 5
    :cond_1
    iget-wide v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailWaterMarkDurationMs:J

    div-long/2addr v4, v0

    long-to-int v2, v4

    :goto_0
    if-ge v3, v2, :cond_4

    .line 6
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 7
    iget-object v5, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailPixelFrameList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 8
    instance-of v7, v6, Lcom/tencent/liteav/videobase/frame/e$b;

    if-eqz v7, :cond_2

    .line 9
    move-object v7, v6

    check-cast v7, Lcom/tencent/liteav/videobase/frame/e$b;

    .line 10
    iget-object v8, v7, Lcom/tencent/liteav/videobase/frame/e$b;->a:Lcom/tencent/liteav/videobase/frame/d;

    .line 11
    invoke-virtual {v7}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v7

    goto :goto_2

    .line 12
    :cond_2
    iget-object v7, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string v8, "addVideoTailFrameListToQueue: pixelFrame is not TextureFrame"

    invoke-static {v7, v8}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v7, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v7, v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    :goto_2
    int-to-long v8, v3

    mul-long v8, v8, v0

    .line 14
    invoke-virtual {v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    .line 15
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_3
    iget-object v5, p0, Lcom/tencent/ugc/UGCMediaListSource;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v5, v4}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method private adjustAudioFrameTimestamp(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/AudioFrame;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/ugc/AudioFrame;

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->calculateAudioFrameDuration(Lcom/tencent/ugc/AudioFrame;)J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastAudioFrameTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastAudioFrameTimestamp:J

    add-long v6, v4, v0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v6, v0, v2

    if-gtz v6, :cond_2

    const-wide/16 v0, 0x1

    :cond_2
    add-long/2addr v4, v0

    .line 6
    iput-wide v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastAudioFrameTimestamp:J

    .line 7
    invoke-virtual {p1, v4, v5}, Lcom/tencent/ugc/AudioFrame;->setTimestamp(J)V

    return-void

    .line 8
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastAudioFrameTimestamp:J

    return-void
.end method

.method private adjustPixelFrameTimestamp(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/tencent/liteav/videobase/utils/c;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 3
    iget-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastVideoFrameTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastVideoFrameTimestamp:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 5
    iput-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastVideoFrameTimestamp:J

    .line 6
    invoke-virtual {p1, v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    return-void

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastVideoFrameTimestamp:J

    return-void
.end method

.method private calculateAudioFrameDuration(Lcom/tencent/ugc/AudioFrame;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2

    .line 2
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getSampleRate()I

    move-result v4

    int-to-long v4, v4

    mul-long v4, v4, v2

    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getChannelCount()I

    move-result v2

    int-to-long v2, v2

    mul-long v4, v4, v2

    cmp-long v2, v4, v0

    if-nez v2, :cond_1

    return-wide v0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    div-long/2addr v0, v4

    :cond_2
    :goto_0
    return-wide v0
.end method

.method private calculateTotalDurationOfClips()J
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->isImageSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->getImageDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    iget-boolean v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsMediaSourceOverlapped:Z

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/ugc/Clip;

    .line 5
    invoke-direct {p0, v3}, Lcom/tencent/ugc/UGCMediaListSource;->getClipDuration(Lcom/tencent/ugc/Clip;)J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 6
    invoke-direct {p0, v3}, Lcom/tencent/ugc/UGCMediaListSource;->getClipDuration(Lcom/tencent/ugc/Clip;)J

    move-result-wide v0

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/ugc/Clip;

    .line 8
    invoke-direct {p0, v3}, Lcom/tencent/ugc/UGCMediaListSource;->getClipDuration(Lcom/tencent/ugc/Clip;)J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_1

    .line 9
    :cond_3
    iget-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeEnd:J

    iget-wide v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeStart:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    move-wide v0, v2

    :cond_4
    return-wide v0
.end method

.method private clearFrameQueue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->dequeueAll()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3
    invoke-static {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->clear()V

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastVideoFrameTimestamp:J

    .line 6
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastAudioFrameTimestamp:J

    return-void
.end method

.method private closeCurrentAudioFrameProvider()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/tencent/ugc/UGCAudioFrameProvider;->stop()V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    invoke-interface {v0}, Lcom/tencent/ugc/UGCAudioFrameProvider;->uninitialize()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    return-void
.end method

.method private closeCurrentPixelFrameProvider()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/tencent/ugc/UGCPixelFrameProvider;->stop()V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    invoke-interface {v0}, Lcom/tencent/ugc/UGCPixelFrameProvider;->uninitialize()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    return-void
.end method

.method private closeNextPixelFrameProvider()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/tencent/ugc/UGCPixelFrameProvider;->stop()V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    invoke-interface {v0}, Lcom/tencent/ugc/UGCPixelFrameProvider;->uninitialize()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    return-void
.end method

.method private createImageProvider()Lcom/tencent/ugc/UGCPixelFrameProvider;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/ugc/UGCImageProvider;

    iget-object v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mBitmapList:Ljava/util/List;

    iget v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mFps:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/ugc/UGCImageProvider;-><init>(Ljava/util/List;I)V

    .line 2
    invoke-virtual {v0}, Lcom/tencent/ugc/UGCImageProvider;->initialize()V

    .line 3
    invoke-virtual {v0}, Lcom/tencent/ugc/UGCImageProvider;->start()V

    .line 4
    iget v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTransitionType:I

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCImageProvider;->setPictureTransition(I)V

    return-object v0
.end method

.method private createMuteAudioProvider()Lcom/tencent/ugc/UGCAudioFrameProvider;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/ugc/Clip;

    invoke-direct {v0}, Lcom/tencent/ugc/Clip;-><init>()V

    const-string v1, "mute_virtual_file_path"

    .line 2
    iput-object v1, v0, Lcom/tencent/ugc/Clip;->path:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, v0, Lcom/tencent/ugc/Clip;->startInClipsTimeline:J

    .line 4
    iput-wide v1, v0, Lcom/tencent/ugc/Clip;->startTimelineNoSpeed:J

    .line 5
    iput-wide v1, v0, Lcom/tencent/ugc/Clip;->startInFileTime:J

    .line 6
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->getImageDuration()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/ugc/Clip;->endInFileTime:J

    .line 7
    new-instance v1, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;

    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {v1, v0, v2}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;-><init>(Lcom/tencent/ugc/Clip;Lcom/tencent/liteav/base/util/CustomHandler;)V

    .line 8
    invoke-interface {v1}, Lcom/tencent/ugc/UGCAudioFrameProvider;->initialize()V

    .line 9
    invoke-interface {v1}, Lcom/tencent/ugc/UGCAudioFrameProvider;->start()V

    return-object v1
.end method

.method private createTXSpeed(JJI)Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    invoke-direct {v0}, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;-><init>()V

    .line 2
    iput-wide p1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    .line 3
    iput-wide p3, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    .line 4
    iput p5, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    return-object v0
.end method

.method private createVideoFileProvider(IZ)Lcom/tencent/ugc/UGCPixelFrameProvider;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Video-File-Provider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    new-instance p1, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;

    iget-object p2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {p1, p2, v0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;-><init>(Ljava/util/List;Lcom/tencent/liteav/base/util/CustomHandler;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;

    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/ugc/Clip;

    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {p2, p1, v0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;-><init>(Lcom/tencent/ugc/Clip;Lcom/tencent/liteav/base/util/CustomHandler;)V

    .line 8
    iget-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mPlayEndTime:J

    invoke-interface {p2, v0, v1}, Lcom/tencent/ugc/UGCPixelFrameProvider;->setPlayEndPts(J)V

    move-object p1, p2

    .line 9
    :goto_0
    invoke-interface {p1}, Lcom/tencent/ugc/UGCPixelFrameProvider;->initialize()V

    .line 10
    iget-boolean p2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsReverse:Z

    invoke-interface {p1, p2}, Lcom/tencent/ugc/UGCPixelFrameProvider;->setReverse(Z)V

    .line 11
    invoke-interface {p1}, Lcom/tencent/ugc/UGCPixelFrameProvider;->start()V

    return-object p1
.end method

.method private cutMultipleFileToClips()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mMediaInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/tencent/ugc/UGCMediaListSource$a;

    const-wide/16 v3, 0x0

    .line 2
    iget-wide v5, v7, Lcom/tencent/ugc/UGCMediaListSource$a;->b:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/ugc/UGCMediaListSource;->addClipToList(JJLcom/tencent/ugc/UGCMediaListSource$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cutSingleVideoFileToClips()V
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeStart:J

    .line 2
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mRepeatList:Ljava/util/List;

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mRepeatList:Ljava/util/List;

    invoke-static {}, Lcom/tencent/ugc/dv;->a()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mRepeatList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v1, v0

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;

    .line 5
    invoke-direct {p0, v8}, Lcom/tencent/ugc/UGCMediaListSource;->isInvalidRepeat(Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-wide v3, v8, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->endTime:J

    .line 7
    iget-wide v9, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeEnd:J

    cmp-long v0, v3, v9

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v9, v3

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mMediaInfoList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/tencent/ugc/UGCMediaListSource$a;

    move-object v0, p0

    move-wide v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/tencent/ugc/UGCMediaListSource;->addClipToList(JJLcom/tencent/ugc/UGCMediaListSource$a;)V

    const/4 v11, 0x0

    .line 9
    :goto_2
    iget v0, v8, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->repeatTimes:I

    add-int/lit8 v0, v0, -0x1

    if-ge v11, v0, :cond_2

    .line 10
    iget-wide v1, v8, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->startTime:J

    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mMediaInfoList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/tencent/ugc/UGCMediaListSource$a;

    move-object v0, p0

    move-wide v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/tencent/ugc/UGCMediaListSource;->addClipToList(JJLcom/tencent/ugc/UGCMediaListSource$a;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-wide v1, v9

    goto :goto_0

    :cond_3
    move-wide v1, v0

    .line 11
    :cond_4
    iget-wide v3, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTotalDuration:J

    .line 12
    iget-wide v7, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeEnd:J

    cmp-long v0, v3, v7

    if-lez v0, :cond_5

    move-wide v3, v7

    :cond_5
    cmp-long v0, v1, v3

    if-gez v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mMediaInfoList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/tencent/ugc/UGCMediaListSource$a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/ugc/UGCMediaListSource;->addClipToList(JJLcom/tencent/ugc/UGCMediaListSource$a;)V

    :cond_6
    return-void
.end method

.method private estimateSourceOpenTime()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSources:Ljava/util/List;

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v3, v0

    mul-long v1, v1, v3

    :cond_0
    return-wide v1
.end method

.method private getClipDuration(Lcom/tencent/ugc/Clip;)J
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/tencent/ugc/Clip;->speedList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-wide v0, p1, Lcom/tencent/ugc/Clip;->endInFileTime:J

    iget-wide v2, p1, Lcom/tencent/ugc/Clip;->startInFileTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    long-to-float v1, v1

    .line 4
    iget-wide v2, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    iget-wide v4, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v0, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    invoke-static {v0}, Lcom/tencent/ugc/UGCMediaListSource;->getSpeed(I)F

    move-result v0

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-long v1, v1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method private getImageDuration()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->isImageSource()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->updateCurrentPixelFrameProvider()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    instance-of v3, v0, Lcom/tencent/ugc/UGCImageProvider;

    if-eqz v3, :cond_2

    .line 4
    check-cast v0, Lcom/tencent/ugc/UGCImageProvider;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCImageProvider;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v1
.end method

.method private static getMediaInfo(Ljava/lang/String;)Lcom/tencent/ugc/UGCMediaListSource$a;
    .locals 7

    .line 1
    new-instance v0, Lcom/tencent/ugc/UGCMediaListSource$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/ugc/UGCMediaListSource$a;-><init>(B)V

    .line 2
    new-instance v2, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;

    invoke-direct {v2}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;-><init>()V

    .line 3
    invoke-virtual {v2, p0}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;->setDataSource(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;->getAudioDurationMs()J

    move-result-wide v3

    .line 5
    invoke-virtual {v2}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;->getVideoDurationMs()J

    move-result-wide v5

    .line 6
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/tencent/ugc/UGCMediaListSource$a;->b:J

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 7
    :cond_0
    iput-boolean v1, v0, Lcom/tencent/ugc/UGCMediaListSource$a;->c:Z

    .line 8
    invoke-virtual {v2}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;->getFPS()F

    move-result p0

    iput p0, v0, Lcom/tencent/ugc/UGCMediaListSource$a;->d:F

    .line 9
    invoke-virtual {v2}, Lcom/tencent/ugc/retriver/FFmpegMediaRetriever;->getVideoMimeType()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/ugc/UGCMediaListSource$a;->f:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static getSpeed(I)F
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_1
    const/high16 p0, 0x3fc00000    # 1.5f

    return p0

    :cond_2
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_3
    const/high16 p0, 0x3e800000    # 0.25f

    return p0
.end method

.method private hasAudioDataInternal()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mMediaInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/ugc/UGCMediaListSource$a;

    .line 2
    iget-boolean v1, v1, Lcom/tencent/ugc/UGCMediaListSource$a;->c:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isImageSource()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mBitmapList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isInvalidRepeat(Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;)Z
    .locals 6

    iget v0, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->repeatTimes:I

    if-lez v0, :cond_1

    iget-wide v0, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->startTime:J

    iget-wide v2, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->endTime:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    iget-wide v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeEnd:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeStart:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$cutSingleVideoFileToClips$1(Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;)I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->startTime:J

    iget-wide p0, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;->startTime:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static synthetic lambda$loadNextAudioFrameInternal$14(Lcom/tencent/ugc/UGCMediaListSource;)V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/UGCMediaListSource;->loadNextAudioFrameInternal(J)V

    return-void
.end method

.method static synthetic lambda$loadNextVideoFrameInternal$15(Lcom/tencent/ugc/UGCMediaListSource;)V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/UGCMediaListSource;->loadNextVideoFrameInternal(J)V

    return-void
.end method

.method static synthetic lambda$readNextAudioFrame$7(Lcom/tencent/ugc/UGCMediaListSource;)V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/UGCMediaListSource;->loadNextAudioFrameInternal(J)V

    return-void
.end method

.method static synthetic lambda$readNextVideoFrame$8(Lcom/tencent/ugc/UGCMediaListSource;)V
    .locals 2

    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/UGCMediaListSource;->loadNextVideoFrameInternal(J)V

    return-void
.end method

.method static synthetic lambda$seekTo$10(Lcom/tencent/ugc/UGCMediaListSource;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/ugc/UGCMediaListSource;->seekToInternal(JZ)V

    return-void
.end method

.method static synthetic lambda$setIsMediaSourceOverlapped$3(Lcom/tencent/ugc/UGCMediaListSource;Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsMediaSourceOverlapped:Z

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeStart:J

    const-wide/32 v0, 0x7fffffff

    .line 3
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeEnd:J

    .line 4
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->updateTimelineToClips()V

    .line 5
    iget-object p0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method

.method static synthetic lambda$setPictureList$5(Lcom/tencent/ugc/UGCMediaListSource;Ljava/util/List;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->resetReadPositionInternal()V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iput-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mBitmapList:Ljava/util/List;

    .line 4
    iput p2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mFps:I

    return-void
.end method

.method static synthetic lambda$setPictureTransition$6(Lcom/tencent/ugc/UGCMediaListSource;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->resetReadPositionInternal()V

    .line 2
    iput p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTransitionType:I

    .line 3
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->updateCurrentPixelFrameProvider()Z

    .line 4
    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-static {p0}, Lcom/tencent/ugc/ds;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method

.method static synthetic lambda$setPlayEndTime$9(Lcom/tencent/ugc/UGCMediaListSource;J)V
    .locals 1

    .line 1
    iput-wide p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mPlayEndTime:J

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/tencent/ugc/UGCPixelFrameProvider;->setPlayEndPts(J)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0, p1, p2}, Lcom/tencent/ugc/UGCAudioFrameProvider;->setPlayEndPts(J)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$setRepeatPlay$11(Lcom/tencent/ugc/UGCMediaListSource;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mRepeatList:Ljava/util/List;

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->updateClipsInfo()V

    .line 3
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->resetReadPositionInternal()V

    .line 4
    iget-object p0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method

.method static synthetic lambda$setReverse$12(Lcom/tencent/ugc/UGCMediaListSource;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->clearFrameQueue()V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailPixelFrameList:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastAudioFrameTimestamp:J

    .line 4
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastVideoFrameTimestamp:J

    .line 5
    iput-boolean p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsReverse:Z

    .line 6
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->closeCurrentPixelFrameProvider()V

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    return-void
.end method

.method static synthetic lambda$setSpeedList$13(Lcom/tencent/ugc/UGCMediaListSource;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSpeedList:Ljava/util/List;

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->updateClipsInfo()V

    .line 3
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->resetReadPositionInternal()V

    .line 4
    iget-object p0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method

.method static synthetic lambda$setTailWaterMarkDurationSecond$16(Lcom/tencent/ugc/UGCMediaListSource;I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailWaterMarkDurationMs:J

    return-void
.end method

.method static synthetic lambda$setVideoSourceRange$4(Lcom/tencent/ugc/UGCMediaListSource;JJ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsMediaSourceOverlapped:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void

    .line 3
    :cond_0
    iput-wide p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeStart:J

    .line 4
    iput-wide p3, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeEnd:J

    .line 5
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->updateClipsInfo()V

    .line 6
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->resetReadPositionInternal()V

    .line 7
    iget-object p0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method

.method static synthetic lambda$setVideoSources$0(Lcom/tencent/ugc/UGCMediaListSource;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->setVideoSourcesInternal(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mHasAudioDataTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 3
    iget-object p0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method

.method static synthetic lambda$updateSpeedInfoToClips$2(Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;)I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    iget-wide p0, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private loadNextAudioFrameInternal(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->updateCurrentAudioFrameProvider()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string p2, "getAudioFrameProvider fail.AudioFrameListQueue put null"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioSeekTimeInClip:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 6
    iget-object v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    invoke-interface {v4, v0, v1}, Lcom/tencent/ugc/UGCAudioFrameProvider;->seekTo(J)V

    .line 7
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    iget-wide v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mPlayEndTime:J

    invoke-interface {v0, v4, v5}, Lcom/tencent/ugc/UGCAudioFrameProvider;->setPlayEndPts(J)V

    .line 8
    iput-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioSeekTimeInClip:J

    .line 9
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/UGCMediaListSource;->readAudioFrameListToQueue(J)V

    .line 10
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz p1, :cond_3

    .line 11
    invoke-static {p0}, Lcom/tencent/ugc/dn;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private loadNextVideoFrameInternal(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->updateCurrentPixelFrameProvider()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string p2, "getPixelFrameProvider fail.PixelFrameListQueue put null"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->addVideoTailFrameListToQueue()V

    .line 5
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoSeekTimeInClip:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 7
    iget-object v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    iget-boolean v5, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsPreciseSeek:Z

    invoke-interface {v4, v0, v1, v5}, Lcom/tencent/ugc/UGCPixelFrameProvider;->seekTo(JZ)V

    .line 8
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    iget-wide v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mPlayEndTime:J

    invoke-interface {v0, v4, v5}, Lcom/tencent/ugc/UGCPixelFrameProvider;->setPlayEndPts(J)V

    .line 9
    iput-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoSeekTimeInClip:J

    .line 10
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/UGCMediaListSource;->readVideoFrameListToQueue(J)V

    .line 11
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz p1, :cond_3

    .line 12
    invoke-static {p0}, Lcom/tencent/ugc/do;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private prePareNextUGCPixelFrameProvider()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->closeNextPixelFrameProvider()V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsReverse:Z

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextVideoClipIndex:I

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextVideoClipIndex:I

    .line 5
    :goto_0
    iget v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextVideoClipIndex:I

    iget-object v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextVideoClipIndex:I

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/UGCMediaListSource;->createVideoFileProvider(IZ)Lcom/tencent/ugc/UGCPixelFrameProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    :cond_2
    :goto_1
    return-void
.end method

.method private readAudioFrameListToQueue(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    .line 2
    invoke-interface {v0}, Lcom/tencent/ugc/UGCAudioFrameProvider;->getFrameQueue()Lcom/tencent/ugc/UGCFrameQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/ugc/UGCFrameQueue;->dequeue(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object p2, Lcom/tencent/ugc/UGCAudioFrameProvider;->END_OF_STREAM:Ljava/util/List;

    if-ne p1, p2, :cond_2

    .line 4
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string p2, "audio frame provider read END_OF_STREAM"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->closeCurrentAudioFrameProvider()V

    .line 6
    iget-boolean p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsReverse:Z

    if-eqz p1, :cond_1

    .line 7
    iget p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    return-void

    .line 8
    :cond_1
    iget p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    return-void

    .line 9
    :cond_2
    iget-boolean p2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsMediaSourceOverlapped:Z

    if-nez p2, :cond_3

    .line 10
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->adjustAudioFrameTimestamp(Ljava/util/List;)V

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {p2, p1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void
.end method

.method private readVideoFrameListToQueue(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    .line 2
    invoke-interface {v0}, Lcom/tencent/ugc/UGCPixelFrameProvider;->getFrameQueue()Lcom/tencent/ugc/UGCFrameQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/ugc/UGCFrameQueue;->dequeue(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object p2, Lcom/tencent/ugc/UGCPixelFrameProvider;->END_OF_STREAM:Ljava/util/List;

    if-ne p1, p2, :cond_2

    .line 4
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string/jumbo p2, "video frame provider read END_OF_STREAM"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->closeCurrentPixelFrameProvider()V

    .line 6
    iget-boolean p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsReverse:Z

    if-eqz p1, :cond_1

    .line 7
    iget p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    return-void

    .line 8
    :cond_1
    iget p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    return-void

    .line 9
    :cond_2
    iget-boolean p2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsMediaSourceOverlapped:Z

    if-nez p2, :cond_3

    .line 10
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->adjustPixelFrameTimestamp(Ljava/util/List;)V

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {p2, p1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->saveTailVideoFrameToList(Ljava/util/List;)V

    return-void
.end method

.method private removeRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private resetReadPositionInternal()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->clearFrameQueue()V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailPixelFrameList:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    .line 3
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->closeCurrentPixelFrameProvider()V

    .line 4
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->closeCurrentAudioFrameProvider()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    .line 6
    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoSeekTimeInClip:J

    .line 8
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioSeekTimeInClip:J

    .line 9
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastAudioFrameTimestamp:J

    .line 10
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastVideoFrameTimestamp:J

    return-void
.end method

.method private runOnWorkThread(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;I)V

    return-void
.end method

.method private runOnWorkThread(Ljava/lang/Runnable;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    :cond_0
    return-void
.end method

.method private saveTailVideoFrameToList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailWaterMarkDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailPixelFrameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 3
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailPixelFrameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 6
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    .line 7
    iget-object v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailPixelFrameList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private seekTo(JZ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/ugc/df;->a(Lcom/tencent/ugc/UGCMediaListSource;JZ)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x3e8

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private seekToInternal(JZ)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->isImageSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/UGCMediaListSource;->seekToInternalWithImageSource(J)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastAudioFrameTimestamp:J

    .line 5
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastVideoFrameTimestamp:J

    .line 6
    iget-boolean v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsMediaSourceOverlapped:Z

    if-eqz v0, :cond_2

    .line 7
    iput-wide p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoSeekTimeInClip:J

    .line 8
    iput-wide p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioSeekTimeInClip:J

    .line 9
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->clearFrameQueue()V

    .line 10
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailPixelFrameList:Ljava/util/List;

    invoke-static {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    return-void

    :cond_2
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 12
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/ugc/Clip;

    .line 13
    iget-wide v3, v2, Lcom/tencent/ugc/Clip;->endInFileTime:J

    iget-wide v5, v2, Lcom/tencent/ugc/Clip;->startInFileTime:J

    sub-long/2addr v3, v5

    .line 14
    iget-wide v5, v2, Lcom/tencent/ugc/Clip;->startInClipsTimeline:J

    add-long/2addr v5, v3

    cmp-long v2, v5, p1

    if-ltz v2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ltz v0, :cond_5

    .line 15
    iget-object v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/ugc/Clip;

    iget-wide v1, v1, Lcom/tencent/ugc/Clip;->startInClipsTimeline:J

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoSeekTimeInClip:J

    goto :goto_2

    .line 16
    :cond_5
    iput-wide p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoSeekTimeInClip:J

    .line 17
    :goto_2
    iget-wide p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoSeekTimeInClip:J

    iput-wide p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioSeekTimeInClip:J

    .line 18
    iget-boolean v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsReverse:Z

    if-eqz v1, :cond_6

    .line 19
    iget-wide v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTotalDuration:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioSeekTimeInClip:J

    .line 20
    :cond_6
    iput-boolean p3, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsPreciseSeek:Z

    .line 21
    iget p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    if-eq p1, v0, :cond_7

    .line 22
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->closeCurrentPixelFrameProvider()V

    .line 23
    :cond_7
    iget p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    if-eq p1, v0, :cond_8

    .line 24
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->closeCurrentAudioFrameProvider()V

    .line 25
    :cond_8
    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    .line 26
    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    .line 27
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->clearFrameQueue()V

    .line 28
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailPixelFrameList:Ljava/util/List;

    invoke-static {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    const-wide/16 p1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/UGCMediaListSource;->loadNextVideoFrameInternal(J)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/UGCMediaListSource;->loadNextAudioFrameInternal(J)V

    return-void
.end method

.method private seekToInternalWithImageSource(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    .line 2
    iput-wide p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoSeekTimeInClip:J

    .line 3
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->clearFrameQueue()V

    .line 4
    iget-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailPixelFrameList:Ljava/util/List;

    invoke-static {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    const-wide/16 p1, 0x0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/UGCMediaListSource;->loadNextVideoFrameInternal(J)V

    return-void
.end method

.method private setVideoSourcesInternal(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->resetReadPositionInternal()V

    .line 2
    iput-object p1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSources:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mMediaInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTotalDuration:J

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-static {v2}, Lcom/tencent/ugc/UGCMediaListSource;->getMediaInfo(Ljava/lang/String;)Lcom/tencent/ugc/UGCMediaListSource$a;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "getMediaInfo duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/tencent/ugc/UGCMediaListSource$a;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-wide v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTotalDuration:J

    iput-wide v4, v3, Lcom/tencent/ugc/UGCMediaListSource$a;->a:J

    .line 9
    iput-object v2, v3, Lcom/tencent/ugc/UGCMediaListSource$a;->e:Ljava/lang/String;

    .line 10
    iget-wide v6, v3, Lcom/tencent/ugc/UGCMediaListSource$a;->b:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTotalDuration:J

    .line 11
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mMediaInfoList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeStart:J

    .line 13
    iget-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTotalDuration:J

    iput-wide v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeEnd:J

    .line 14
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->updateClipsInfo()V

    return-void
.end method

.method private uninitializeInternal()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->closeCurrentPixelFrameProvider()V

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->closeNextPixelFrameProvider()V

    .line 3
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->closeCurrentAudioFrameProvider()V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    .line 6
    iput-object v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    .line 9
    iput-object v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->clearFrameQueue()V

    .line 11
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTailPixelFrameList:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    .line 12
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mMediaInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    iput-object v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSources:Ljava/util/List;

    .line 15
    iput-object v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mRepeatList:Ljava/util/List;

    .line 16
    iput-object v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSpeedList:Ljava/util/List;

    const-wide/16 v2, 0x0

    .line 17
    iput-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeStart:J

    const-wide/32 v2, 0x7fffffff

    .line 18
    iput-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSourceRangeEnd:J

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    .line 20
    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    const-wide/16 v2, -0x1

    .line 21
    iput-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mVideoSeekTimeInClip:J

    .line 22
    iput-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioSeekTimeInClip:J

    .line 23
    iput-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastAudioFrameTimestamp:J

    .line 24
    iput-wide v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mLastVideoFrameTimestamp:J

    .line 25
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsReverse:Z

    .line 26
    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextVideoClipIndex:I

    .line 27
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    .line 29
    iput-object v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    :cond_2
    return-void
.end method

.method private updateClipsInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "updateClipsInfo"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSources:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->cutMultipleFileToClips()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->cutSingleVideoFileToClips()V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/ugc/Clip;

    .line 8
    invoke-direct {p0, v1}, Lcom/tencent/ugc/UGCMediaListSource;->updateSpeedInfoToClips(Lcom/tencent/ugc/Clip;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->updateTimelineToClips()V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateCurrentAudioFrameProvider()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Audio-File-Provider"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v2, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->isImageSource()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    if-nez v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->createMuteAudioProvider()Lcom/tencent/ugc/UGCAudioFrameProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    return v1

    .line 8
    :cond_2
    iget v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    if-gez v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-boolean v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsMediaSourceOverlapped:Z

    if-eqz v2, :cond_4

    .line 10
    new-instance v0, Lcom/tencent/ugc/UGCMultiFileAudioFrameProvider;

    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {v0, v2, v3}, Lcom/tencent/ugc/UGCMultiFileAudioFrameProvider;-><init>(Ljava/util/List;Lcom/tencent/liteav/base/util/CustomHandler;)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    .line 11
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioClipIndex:I

    goto :goto_0

    .line 12
    :cond_4
    new-instance v2, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;

    iget-object v3, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    .line 13
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ugc/Clip;

    iget-object v3, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {v2, v0, v3}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;-><init>(Lcom/tencent/ugc/Clip;Lcom/tencent/liteav/base/util/CustomHandler;)V

    iput-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    invoke-interface {v0}, Lcom/tencent/ugc/UGCAudioFrameProvider;->initialize()V

    .line 15
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentAudioFrameProvider:Lcom/tencent/ugc/UGCAudioFrameProvider;

    invoke-interface {v0}, Lcom/tencent/ugc/UGCAudioFrameProvider;->start()V

    return v1

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateCurrentPixelFrameProvider()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->isImageSource()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->createImageProvider()Lcom/tencent/ugc/UGCPixelFrameProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    return v1

    .line 4
    :cond_1
    iget v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_6

    iget v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    if-gez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iget-boolean v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsMediaSourceOverlapped:Z

    if-nez v2, :cond_5

    .line 6
    iget v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextVideoClipIndex:I

    if-ne v0, v2, :cond_3

    .line 7
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    iput-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mNextPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    if-nez v2, :cond_4

    .line 10
    invoke-direct {p0, v0, v3}, Lcom/tencent/ugc/UGCMediaListSource;->createVideoFileProvider(IZ)Lcom/tencent/ugc/UGCPixelFrameProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    .line 11
    :cond_4
    invoke-static {p0}, Lcom/tencent/ugc/dp;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCMediaListSource;->removeRunnable(Ljava/lang/Runnable;)V

    .line 12
    invoke-static {p0}, Lcom/tencent/ugc/dq;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/lang/Runnable;

    move-result-object v0

    const/16 v2, 0x1f4

    invoke-direct {p0, v0, v2}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-direct {p0, v3, v1}, Lcom/tencent/ugc/UGCMediaListSource;->createVideoFileProvider(IZ)Lcom/tencent/ugc/UGCPixelFrameProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentPixelFrameProvider:Lcom/tencent/ugc/UGCPixelFrameProvider;

    .line 14
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCurrentVideoClipIndex:I

    :goto_0
    return v1

    :cond_6
    :goto_1
    return v3
.end method

.method private updateSpeedInfoToClips(Lcom/tencent/ugc/Clip;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v0, v6, Lcom/tencent/ugc/UGCMediaListSource;->mSpeedList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, v6, Lcom/tencent/ugc/UGCMediaListSource;->mSpeedList:Ljava/util/List;

    invoke-static {}, Lcom/tencent/ugc/dw;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-wide v0, v7, Lcom/tencent/ugc/Clip;->startInFileTime:J

    .line 5
    iget-object v2, v6, Lcom/tencent/ugc/UGCMediaListSource;->mSpeedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v1, v0

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    .line 6
    iget-wide v3, v10, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    iget-wide v11, v7, Lcom/tencent/ugc/Clip;->startInSourceListTimeline:J

    sub-long v13, v3, v11

    .line 7
    iget-wide v3, v10, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    sub-long v11, v3, v11

    .line 8
    iget-wide v3, v7, Lcom/tencent/ugc/Clip;->startInFileTime:J

    cmp-long v0, v11, v3

    if-ltz v0, :cond_1

    .line 9
    iget-wide v3, v7, Lcom/tencent/ugc/Clip;->endInFileTime:J

    cmp-long v0, v13, v3

    if-gtz v0, :cond_4

    cmp-long v0, v1, v3

    if-gez v0, :cond_4

    cmp-long v0, v13, v1

    if-lez v0, :cond_2

    const/4 v5, 0x2

    move-object v0, p0

    move-wide v3, v13

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/tencent/ugc/UGCMediaListSource;->createTXSpeed(JJI)Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v1, v13

    .line 11
    :cond_2
    iget v5, v10, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    move-object v0, p0

    move-wide v3, v11

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/tencent/ugc/UGCMediaListSource;->createTXSpeed(JJI)Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    move-result-object v0

    .line 13
    iget-wide v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    iget-wide v3, v7, Lcom/tencent/ugc/Clip;->endInFileTime:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 14
    iput-wide v3, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    .line 15
    :cond_3
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-wide v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    goto :goto_0

    .line 17
    :cond_4
    iget-wide v3, v7, Lcom/tencent/ugc/Clip;->endInFileTime:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_5

    const/4 v5, 0x2

    move-object v0, p0

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/tencent/ugc/UGCMediaListSource;->createTXSpeed(JJI)Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_5
    iput-object v8, v7, Lcom/tencent/ugc/Clip;->speedList:Ljava/util/List;

    :cond_6
    :goto_1
    return-void
.end method

.method private updateTimelineToClips()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mClipList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/ugc/Clip;

    .line 2
    iput-wide v1, v5, Lcom/tencent/ugc/Clip;->startInClipsTimeline:J

    .line 3
    iput-wide v3, v5, Lcom/tencent/ugc/Clip;->startTimelineNoSpeed:J

    .line 4
    iget-boolean v6, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsMediaSourceOverlapped:Z

    if-nez v6, :cond_0

    .line 5
    invoke-direct {p0, v5}, Lcom/tencent/ugc/UGCMediaListSource;->getClipDuration(Lcom/tencent/ugc/Clip;)J

    move-result-wide v6

    add-long/2addr v1, v6

    .line 6
    iget-wide v6, v5, Lcom/tencent/ugc/Clip;->endInFileTime:J

    iget-wide v8, v5, Lcom/tencent/ugc/Clip;->startInFileTime:J

    sub-long/2addr v6, v8

    add-long/2addr v3, v6

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->estimateSourceOpenTime()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getDuration future task exception: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAudioData()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mHasAudioDataTask:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMediaListSource;->estimateSourceOpenTime()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v2, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "hasAudioData future exception "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public impreciseSeekTo(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "impreciseSeekTo lineTime = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/ugc/UGCMediaListSource;->seekTo(JZ)V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string v1, "UGCMediaStreamSpliter is initialized"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ugc-media-list-source"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/ugc/UGCMediaListSource;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readNextAudioFrame()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/AudioFrame;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/tencent/ugc/dc;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mAudioFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->dequeue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public readNextVideoFrame()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/tencent/ugc/dd;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->dequeue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public resetReadPosition()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string v1, "resetReadPosition"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/ugc/dg;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "seekTo lineTime = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v6, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTotalDuration:J

    const-wide/16 v4, 0x0

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lcom/tencent/liteav/base/util/g;->a(JJJ)J

    move-result-wide p1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/ugc/UGCMediaListSource;->seekTo(JZ)V

    return-void
.end method

.method public setIsMediaSourceOverlapped(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setIsMediaSourceOverlapped isMediaSourceOverlapped = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-static {p0}, Lcom/tencent/ugc/dx;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/ugc/dy;->a(Lcom/tencent/ugc/UGCMediaListSource;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPictureList(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPictureList bitmapList size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1, p2}, Lcom/tencent/ugc/da;->a(Lcom/tencent/ugc/UGCMediaListSource;Ljava/util/List;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPictureTransition(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setPictureTransition type = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/ugc/db;->a(Lcom/tencent/ugc/UGCMediaListSource;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPlayEndTime(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/ugc/de;->a(Lcom/tencent/ugc/UGCMediaListSource;J)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRepeatPlay(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXRepeat;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string v1, "setRepeatPlay"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-static {p0}, Lcom/tencent/ugc/dh;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/ugc/di;->a(Lcom/tencent/ugc/UGCMediaListSource;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setReverse(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setReverse isReverse = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mIsReverse:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/ugc/dk;->a(Lcom/tencent/ugc/UGCMediaListSource;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSpeedList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string v1, "setSpeedList"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-static {p0}, Lcom/tencent/ugc/dl;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/ugc/dm;->a(Lcom/tencent/ugc/UGCMediaListSource;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTailWaterMarkDurationSecond(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/ugc/dr;->a(Lcom/tencent/ugc/UGCMediaListSource;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVideoSourceRange(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVideoSourceRange startTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " endTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-static {p0}, Lcom/tencent/ugc/dz;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/ugc/cz;->a(Lcom/tencent/ugc/UGCMediaListSource;JJ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVideoSources(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string v1, "setVideoSources"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-static {p0}, Lcom/tencent/ugc/dj;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mHasAudioDataTask:Ljava/util/concurrent/FutureTask;

    .line 3
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-static {p0}, Lcom/tencent/ugc/dt;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mCalculateDurationTask:Ljava/util/concurrent/FutureTask;

    .line 4
    invoke-static {p0, p1}, Lcom/tencent/ugc/du;->a(Lcom/tencent/ugc/UGCMediaListSource;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public transitionOffsetTimeWithPts(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public uninitialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMediaListSource;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "unInitialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/ugc/cy;->a(Lcom/tencent/ugc/UGCMediaListSource;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCMediaListSource;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method
