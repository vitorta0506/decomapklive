.class public Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;
.implements Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;
.implements Lcom/tencent/ugc/UGCPixelFrameProvider;


# static fields
.field private static final MAX_FRAME_SIZE:I = 0x3

.field private static final REVERSE_STEP_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "UGCVideoFileProvider"


# instance fields
.field private final mClip:Lcom/tencent/ugc/Clip;

.field private mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

.field private mEGLCore:Lcom/tencent/liteav/videobase/b/e;

.field private mFrameCacheCapacityForReverse:I

.field private mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

.field private mHasReadEOF:Z

.field private mIsAbandoningDecodingFrame:Z

.field private mIsDecodeCompleted:Z

.field private mIsFrameSendingDecoder:Z

.field private mIsInPreciseSeeking:Z

.field private mIsReverse:Z

.field private final mPixFrameCacheForReverse:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/ugc/UGCFrameQueue<",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

.field private mPlayEndPts:J

.field private mReversePlayCurrentPts:J

.field private mSeekingTimeMs:J

.field private final mThrottlers:Lcom/tencent/liteav/base/b/b;

.field private mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

.field private mVideoHeight:I

.field private mVideoRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private mVideoWidth:I

.field private final mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;


# direct methods
.method public constructor <init>(Lcom/tencent/ugc/Clip;Lcom/tencent/liteav/base/util/CustomHandler;)V
    .locals 3
    .param p1    # Lcom/tencent/ugc/Clip;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/liteav/base/util/CustomHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsAbandoningDecodingFrame:Z

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mSeekingTimeMs:J

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsInPreciseSeeking:Z

    .line 6
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mHasReadEOF:Z

    .line 7
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsDecodeCompleted:Z

    .line 8
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsFrameSendingDecoder:Z

    .line 9
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsReverse:Z

    .line 10
    iput v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mFrameCacheCapacityForReverse:I

    .line 11
    iput v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoWidth:I

    .line 12
    iput v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoHeight:I

    .line 13
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    const-wide v0, 0x7fffffffffffffffL

    .line 14
    iput-wide v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPlayEndPts:J

    .line 15
    new-instance v0, Lcom/tencent/ugc/Clip;

    invoke-direct {v0, p1}, Lcom/tencent/ugc/Clip;-><init>(Lcom/tencent/ugc/Clip;)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    .line 16
    new-instance p1, Lcom/tencent/ugc/UGCFrameQueue;

    invoke-direct {p1}, Lcom/tencent/ugc/UGCFrameQueue;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    .line 17
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameCacheForReverse:Ljava/util/Deque;

    .line 18
    iput-object p2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->uninitializeInternal()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->startInternal()V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->stopInternal()V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->decodeInternal()V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->onDecodeCompletedInternal()V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->onDecodeCompletedInternal()V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->onDecodeCompletedInternal()V

    return-void
.end method

.method private addFrameToQueue(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v0, Lcom/tencent/ugc/UGCPixelFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v2, v2, Lcom/tencent/ugc/Clip;->startInFileTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v2, v2, Lcom/tencent/ugc/Clip;->endInFileTime:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPlayEndPts:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->fileTimeToTimeline(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    .line 10
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addFrameToQueue Timestamp = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " endInnerFileTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v1, v1, Lcom/tencent/ugc/Clip;->endInFileTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCVideoFileProvider"

    .line 12
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v1, Lcom/tencent/ugc/UGCPixelFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method private addFrameToQueueForReverse(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mReversePlayCurrentPts:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameCacheForReverse:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameCacheForReverse:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    const-string v0, "UGCVideoFileProvider"

    if-eqz p1, :cond_2

    const-string p1, "mGopVideoFrameList isEmpty so put END_OF_STREAM"

    .line 5
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v0, Lcom/tencent/ugc/UGCPixelFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameCacheForReverse:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mFrameCacheCapacityForReverse:I

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameCacheForReverse:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameCacheForReverse:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 10
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mReversePlayCurrentPts:J

    .line 11
    iget-object v3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v4, v3, Lcom/tencent/ugc/Clip;->endInFileTime:J

    cmp-long v6, v1, v4

    if-gtz v6, :cond_4

    iget-wide v3, v3, Lcom/tencent/ugc/Clip;->startInFileTime:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->fileTimeToTimelineForReverse(J)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    .line 13
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {p1, v1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    goto :goto_0

    .line 17
    :cond_5
    iget-wide v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mReversePlayCurrentPts:J

    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v3, p1, Lcom/tencent/ugc/Clip;->startInFileTime:J

    cmp-long p1, v1, v3

    if-gtz p1, :cond_6

    const-string p1, "mLastGopFinishPts is smaller start time so put END_OF_STREAM"

    .line 18
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v0, Lcom/tencent/ugc/UGCPixelFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    :cond_6
    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 20
    iput-wide v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mReversePlayCurrentPts:J

    const-wide/16 v3, 0x1f4

    sub-long/2addr v1, v3

    const/4 p1, 0x0

    .line 21
    invoke-direct {p0, v1, v2, p1}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->seekToInFileTime(JZ)V

    return-void
.end method

.method private clearPixelFrameQueue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

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

    :cond_0
    return-void
.end method

.method private createDemuxerAndOpenFile()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-object v0, v0, Lcom/tencent/ugc/Clip;->videoMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "video/hevc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-object v0, v0, Lcom/tencent/ugc/Clip;->videoMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/avc"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/tencent/ugc/VideoDemuxerSystem;

    invoke-direct {v0}, Lcom/tencent/ugc/VideoDemuxerSystem;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;

    invoke-direct {v0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    iget-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-object v1, v1, Lcom/tencent/ugc/Clip;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/ugc/VideoDemuxer;->open(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    invoke-interface {v0}, Lcom/tencent/ugc/VideoDemuxer;->close()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private decodeInternal()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->isNeedDecode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    invoke-interface {v0}, Lcom/tencent/ugc/VideoDemuxer;->getNextEncodeVideoFrame()Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/tencent/ugc/VideoDemuxer;->END_OF_STREAM:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "UGCVideoFileProvider"

    const-string v1, "demuxer read completed"

    .line 4
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-boolean v3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mHasReadEOF:Z

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    .line 7
    invoke-static {v0}, Lcom/tencent/liteav/videoconsumer/decoder/aw;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    .line 8
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/ez;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/fa;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void

    .line 10
    :cond_1
    iput-boolean v3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsFrameSendingDecoder:Z

    .line 11
    iput-boolean v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsDecodeCompleted:Z

    .line 12
    iget v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->rotation:I

    invoke-static {v1}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 13
    iget-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V

    return-void

    .line 14
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsFrameSendingDecoder:Z

    return-void
.end method

.method private fileTimeToTimeline(J)J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v1, v0, Lcom/tencent/ugc/Clip;->startInClipsTimeline:J

    .line 2
    iget-object v3, v0, Lcom/tencent/ugc/Clip;->speedList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 3
    iget-wide v3, v0, Lcom/tencent/ugc/Clip;->startInFileTime:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    return-wide v1

    .line 4
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 5
    iget v5, v3, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    invoke-direct {p0, v5}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->getTimeMultipleInSpeed(I)F

    move-result v5

    div-float/2addr v4, v5

    .line 6
    iget-wide v5, v3, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    cmp-long v7, p1, v5

    if-gez v7, :cond_1

    .line 7
    iget-wide v5, v3, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    sub-long/2addr p1, v5

    long-to-float p1, p1

    mul-float p1, p1, v4

    float-to-long p1, p1

    add-long/2addr v1, p1

    goto :goto_1

    .line 8
    :cond_1
    iget-wide v7, v3, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    sub-long/2addr v5, v7

    long-to-float v3, v5

    mul-float v3, v3, v4

    float-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v1
.end method

.method private fileTimeToTimelineForReverse(J)J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-object v1, v0, Lcom/tencent/ugc/Clip;->speedList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2
    iget-wide v0, v0, Lcom/tencent/ugc/Clip;->endInFileTime:J

    sub-long/2addr v0, p1

    return-wide v0

    .line 3
    :cond_0
    iget-wide v2, v0, Lcom/tencent/ugc/Clip;->startInClipsTimeline:J

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-object v1, v1, Lcom/tencent/ugc/Clip;->speedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 6
    iget v5, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    invoke-direct {p0, v5}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->getTimeMultipleInSpeed(I)F

    move-result v5

    div-float/2addr v4, v5

    .line 7
    iget-wide v5, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    cmp-long v7, p1, v5

    if-lez v7, :cond_1

    .line 8
    iget-wide v0, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    sub-long/2addr v0, p1

    long-to-float p1, v0

    mul-float p1, p1, v4

    float-to-long p1, p1

    add-long/2addr v2, p1

    goto :goto_1

    .line 9
    :cond_1
    iget-wide v7, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    sub-long/2addr v7, v5

    long-to-float v1, v7

    mul-float v1, v1, v4

    float-to-long v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v2
.end method

.method private getTimeMultipleInSpeed(I)F
    .locals 0

    invoke-static {p1}, Lcom/tencent/ugc/UGCMediaListSource;->getSpeed(I)F

    move-result p1

    return p1
.end method

.method private initializeDecodeController()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    const-string v1, "UGCVideoFileProvider"

    if-eqz v0, :cond_0

    const-string v0, "UGCVideoFileProvider is initialized"

    .line 2
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "initializeDecodeController"

    .line 3
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    new-instance v1, Lcom/tencent/liteav/videobase/videobase/e;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/videobase/e;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Z)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a()V

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    .line 7
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ay;->a()Lcom/tencent/liteav/videoproducer/capture/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/ay;->b()Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;->c:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$DecodeStrategy;)V

    .line 10
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    sget-object v1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V

    return-void
.end method

.method private initializeGLComponents()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "UGCVideoFileProvider"

    const-string v4, "initializeGLComponents"

    invoke-static {v0, v3, v4, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ay;->a()Lcom/tencent/liteav/videoproducer/capture/ay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/liteav/videoproducer/capture/ay;->b()Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v0, v4, v2, v5, v5}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    new-instance v0, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    return-void

    :catch_0
    move-exception v0

    .line 7
    iget-object v4, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v5, "initGLError"

    invoke-virtual {v4, v5}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const-string v0, "initializeGLComponents failed."

    invoke-static {v4, v3, v0, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iput-object v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method

.method private isNeedDecode()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsAbandoningDecodingFrame:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mHasReadEOF:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsReverse:Z

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    .line 3
    iget-object v3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v3}, Lcom/tencent/ugc/UGCFrameQueue;->size()I

    move-result v3

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    .line 4
    invoke-virtual {v3}, Lcom/tencent/ugc/UGCFrameQueue;->size()I

    move-result v3

    iget-object v5, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameCacheForReverse:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->size()I

    move-result v5

    add-int/2addr v3, v5

    iget v5, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mFrameCacheCapacityForReverse:I

    add-int/2addr v5, v4

    if-lt v3, v5, :cond_1

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v3}, Lcom/tencent/ugc/UGCFrameQueue;->size()I

    move-result v3

    if-lt v3, v4, :cond_1

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method static synthetic lambda$onAbandonDecodingFramesCompleted$4(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsAbandoningDecodingFrame:Z

    .line 3
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->decodeInternal()V

    return-void
.end method

.method static synthetic lambda$onDecodeFailed$5(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v0, Lcom/tencent/ugc/UGCPixelFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onDecodeFrame$2(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->onDecodeFrameInternal(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void
.end method

.method static synthetic lambda$onFrameDequeued$3(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsFrameSendingDecoder:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->decodeInternal()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$seekTo$0(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->clearPixelFrameQueue()V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->timelineToFileTime(J)J

    move-result-wide p1

    .line 4
    iput-wide p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mReversePlayCurrentPts:J

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->seekToInFileTime(JZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setReverse$1(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->setReverseInternal(Z)V

    return-void
.end method

.method private onDecodeCompletedInternal()V
    .locals 2

    const-string v0, "UGCVideoFileProvider"

    const-string v1, "onDecodeCompletedInteral"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsAbandoningDecodingFrame:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsDecodeCompleted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mHasReadEOF:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsReverse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v1}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->addFrameToQueueForReverse(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v1}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->addFrameToQueue(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    :goto_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsDecodeCompleted:Z

    :cond_2
    :goto_1
    return-void
.end method

.method private onDecodeFrameInternal(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    .line 4
    iget-boolean v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsAbandoningDecodingFrame:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsReverse:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsInPreciseSeeking:Z

    if-eqz v2, :cond_1

    iget-wide v5, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mSeekingTimeMs:J

    cmp-long v2, v0, v5

    if-gez v2, :cond_1

    cmp-long v0, v5, v3

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iput-wide v3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mSeekingTimeMs:J

    .line 6
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->processFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1

    .line 7
    iget-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsReverse:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->addFrameToQueueForReverse(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void

    .line 9
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->addFrameToQueue(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method private processFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v1

    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v1, v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v1

    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->c:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v1, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->swapWidthHeight()V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v2

    .line 8
    iget v3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoWidth:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoHeight:I

    if-eq v2, v3, :cond_2

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 11
    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Lcom/tencent/liteav/videobase/frame/j;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    .line 14
    iput v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoWidth:I

    .line 15
    iput v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoHeight:I

    :cond_3
    const/4 v0, 0x0

    .line 16
    invoke-static {v0, v0, v1, v2}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 17
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v1, p1, v2, v0}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 19
    iget-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    .line 21
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ay;->a()Lcom/tencent/liteav/videoproducer/capture/ay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/capture/ay;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 23
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 24
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-object v1

    .line 25
    :catch_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-object v0
.end method

.method private seekToInFileTime(JZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v3, v0, Lcom/tencent/ugc/Clip;->startInFileTime:J

    iget-wide v5, v0, Lcom/tencent/ugc/Clip;->endInFileTime:J

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/tencent/liteav/base/util/g;->a(JJJ)J

    move-result-wide p1

    .line 3
    iget-wide v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mSeekingTimeMs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsInPreciseSeeking:Z

    if-ne v0, p3, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "seekToInFileTime file time = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCVideoFileProvider"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-wide p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mSeekingTimeMs:J

    .line 6
    iput-boolean p3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsInPreciseSeeking:Z

    .line 7
    iget-object p3, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    invoke-interface {p3, p1, p2}, Lcom/tencent/ugc/VideoDemuxer;->seek(J)Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsAbandoningDecodingFrame:Z

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mHasReadEOF:Z

    .line 10
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    .line 11
    iget-object p2, p1, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a:Ljava/lang/String;

    const-string p3, "decoder abandonDecodingFrames"

    invoke-static {p2, p3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lcom/tencent/liteav/videoconsumer/decoder/ae;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameCacheForReverse:Ljava/util/Deque;

    invoke-static {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    return-void
.end method

.method private setReverseInternal(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsReverse:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsReverse:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v0, p1, Lcom/tencent/ugc/Clip;->endInFileTime:J

    iput-wide v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mReversePlayCurrentPts:J

    const-wide/16 v2, 0x1f4

    sub-long/2addr v0, v2

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->seekToInFileTime(JZ)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v0, p1, Lcom/tencent/ugc/Clip;->startInFileTime:J

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->seekToInFileTime(JZ)V

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->clearPixelFrameQueue()V

    return-void
.end method

.method private startInternal()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->createDemuxerAndOpenFile()Z

    move-result v0

    const-string v1, "UGCVideoFileProvider"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-object v2, v2, Lcom/tencent/ugc/Clip;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " open fail or there is not video stream"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v1, Lcom/tencent/ugc/UGCPixelFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-object v2, v2, Lcom/tencent/ugc/Clip;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " open success"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0, p0}, Lcom/tencent/ugc/UGCFrameQueue;->setUGCFrameQueueListener(Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->clear()V

    .line 7
    iget-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsReverse:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v0, v0, Lcom/tencent/ugc/Clip;->endInFileTime:J

    iput-wide v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mReversePlayCurrentPts:J

    .line 9
    iget-object v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    const-wide/16 v3, 0x1f4

    sub-long/2addr v0, v3

    invoke-interface {v2, v0, v1}, Lcom/tencent/ugc/VideoDemuxer;->seek(J)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v0, v0, Lcom/tencent/ugc/Clip;->startInFileTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 11
    iget-object v2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    invoke-interface {v2, v0, v1}, Lcom/tencent/ugc/VideoDemuxer;->seek(J)Z

    .line 12
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->initializeDecodeController()V

    .line 13
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->initializeGLComponents()V

    .line 14
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;)V

    .line 15
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->decodeInternal()V

    return-void
.end method

.method private stopInternal()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->setUGCFrameQueueListener(Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/tencent/ugc/VideoDemuxer;->close()V

    .line 4
    iput-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mDemuxer:Lcom/tencent/ugc/VideoDemuxer;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->g()V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->clearPixelFrameQueue()V

    .line 8
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameCacheForReverse:Ljava/util/Deque;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    .line 9
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v1, Lcom/tencent/ugc/UGCPixelFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsAbandoningDecodingFrame:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsInPreciseSeeking:Z

    .line 12
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsReverse:Z

    .line 13
    iput-boolean v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mIsFrameSendingDecoder:Z

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mSeekingTimeMs:J

    .line 15
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v0, v0, Lcom/tencent/ugc/Clip;->startInFileTime:J

    iput-wide v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mReversePlayCurrentPts:J

    return-void
.end method

.method private timelineToFileTime(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-object v1, v0, Lcom/tencent/ugc/Clip;->speedList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2
    iget-wide v0, v0, Lcom/tencent/ugc/Clip;->startInFileTime:J

    add-long/2addr p1, v0

    return-wide p1

    :cond_0
    const-wide/16 v2, 0x0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    iget v3, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    invoke-direct {p0, v3}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->getTimeMultipleInSpeed(I)F

    move-result v3

    div-float/2addr v2, v3

    .line 5
    iget-wide v3, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    iget-wide v5, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float v1, v1, v2

    float-to-long v3, v1

    long-to-float v1, p1

    div-float/2addr v1, v2

    float-to-long v1, v1

    add-long/2addr v1, v5

    cmp-long v5, p1, v3

    if-ltz v5, :cond_1

    sub-long/2addr p1, v3

    move-wide v2, v1

    goto :goto_0

    :cond_1
    move-wide v2, v1

    :cond_2
    return-wide v2
.end method

.method private unInitializeGLComponents()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 4
    iput-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 7
    iput-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 9
    iput-object v1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method

.method private uninitializeInternal()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->unInitializeGLComponents()V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->g()V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->i()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mVideoDecodeController:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->clearPixelFrameQueue()V

    .line 7
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameCacheForReverse:Ljava/util/Deque;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->releasePixelFrames(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public getFrameQueue()Lcom/tencent/ugc/UGCFrameQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/ugc/UGCFrameQueue<",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPixFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    const-string v0, "UGCVideoFileProvider"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAbandonDecodingFramesCompleted()V
    .locals 3

    const-string v0, "UGCVideoFileProvider"

    const-string v1, "onAbandonDecodingFramesCompleted"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/fj;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public onDecodeCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/ey;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public onDecodeFailed()V
    .locals 3

    const-string v0, "UGCVideoFileProvider"

    const-string v1, "on decode fail"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/fb;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public onDecodeFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    .line 2
    iget-object p2, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/ugc/fg;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;Lcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2, p1, p3}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public onDecodeLatencyChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDecodeSEI(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public onFrameDequeued()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/fi;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public onFrameEnqueuedToDecoder()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/fh;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public onRequestKeyFrame()V
    .locals 0

    return-void
.end method

.method public seekTo(JZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "seekTo lineTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " isPreciseSeek = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCVideoFileProvider"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/ugc/fe;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;JZ)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x3e8

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setPlayEndPts(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mPlayEndPts:J

    return-void
.end method

.method public setReverse(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isReverse = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCVideoFileProvider"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1}, Lcom/tencent/ugc/ff;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;Z)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/fc;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/fd;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public uninitialize()V
    .locals 3

    const-string v0, "UGCVideoFileProvider"

    const-string/jumbo v1, "unInitialize"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/ex;->a(Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method
