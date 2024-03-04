.class public Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;
.implements Lcom/tencent/ugc/UGCPixelFrameProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "UGCMultiFileVideoFrameProvider"


# instance fields
.field private mClipIndexOfMaxFps:I

.field private final mClipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/ugc/Clip;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTimestamp:J

.field private mFrameDuration:J

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

.field private final mPixelFrameStash:[Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private final mProviderList:[Lcom/tencent/ugc/UGCPixelFrameProvider;

.field private final mSingleFileProviderHandler:Lcom/tencent/liteav/base/util/CustomHandler;

.field private final mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/tencent/liteav/base/util/CustomHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/Clip;",
            ">;",
            "Lcom/tencent/liteav/base/util/CustomHandler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mCurrentTimestamp:J

    .line 3
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mFrameDuration:J

    .line 4
    new-instance v0, Lcom/tencent/ugc/UGCFrameQueue;

    invoke-direct {v0}, Lcom/tencent/ugc/UGCFrameQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/tencent/ugc/UGCPixelFrameProvider;

    iput-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mProviderList:[Lcom/tencent/ugc/UGCPixelFrameProvider;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iput-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameStash:[Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 7
    iput-object p1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mClipList:Ljava/util/List;

    .line 8
    iput-object p2, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mSingleFileProviderHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 9
    new-instance p1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 10
    invoke-virtual {v0, p0}, Lcom/tencent/ugc/UGCFrameQueue;->setUGCFrameQueueListener(Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->readFrameToQueue()V

    return-void
.end method

.method private clearFrameCache()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameStash:[Lcom/tencent/liteav/videobase/frame/PixelFrame;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 4
    iget-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameStash:[Lcom/tencent/liteav/videobase/frame/PixelFrame;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearFrameQueue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

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

.method private copyPixelFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/tencent/liteav/videobase/frame/e$b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/tencent/liteav/videobase/frame/e$b;

    .line 3
    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/e$b;->a:Lcom/tencent/liteav/videobase/frame/d;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getCurrentTimestampWithFpsInfo()V
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mClipList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mClipList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/ugc/Clip;

    iget v2, v2, Lcom/tencent/ugc/Clip;->fps:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mProviderList:[Lcom/tencent/ugc/UGCPixelFrameProvider;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mClipList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ugc/Clip;

    iget v0, v0, Lcom/tencent/ugc/Clip;->fps:F

    .line 4
    iput v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mClipIndexOfMaxFps:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    goto :goto_1

    :cond_2
    const/high16 v1, 0x42200000    # 40.0f

    :goto_1
    float-to-long v0, v1

    .line 5
    iput-wide v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mFrameDuration:J

    .line 6
    iget-wide v2, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mCurrentTimestamp:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mCurrentTimestamp:J

    return-void
.end method

.method private getFrameFromProvider(I)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mProviderList:[Lcom/tencent/ugc/UGCPixelFrameProvider;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/tencent/ugc/UGCPixelFrameProvider;->getFrameQueue()Lcom/tencent/ugc/UGCFrameQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/ugc/UGCFrameQueue;->dequeue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3
    sget-object v3, Lcom/tencent/ugc/UGCPixelFrameProvider;->END_OF_STREAM:Ljava/util/List;

    if-ne v2, v3, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/tencent/ugc/UGCPixelFrameProvider;->stop()V

    .line 5
    invoke-interface {v0}, Lcom/tencent/ugc/UGCPixelFrameProvider;->uninitialize()V

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mProviderList:[Lcom/tencent/ugc/UGCPixelFrameProvider;

    aput-object v1, v0, p1

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 7
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    return-object p1
.end method

.method private isAllProviderEndOfStream()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mProviderList:[Lcom/tencent/ugc/UGCPixelFrameProvider;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$seekTo$2(Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mProviderList:[Lcom/tencent/ugc/UGCPixelFrameProvider;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 2
    invoke-interface {v3, p1, p2, p3}, Lcom/tencent/ugc/UGCPixelFrameProvider;->seekTo(JZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iput-wide p1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mCurrentTimestamp:J

    .line 4
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->clearFrameCache()V

    .line 5
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->clearFrameQueue()V

    .line 6
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->readFrameToQueue()V

    return-void
.end method

.method static synthetic lambda$start$0(Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mClipList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;

    iget-object v2, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mClipList:Ljava/util/List;

    .line 3
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/ugc/Clip;

    iget-object v3, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mSingleFileProviderHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {v1, v2, v3}, Lcom/tencent/ugc/UGCSingleFilePixelFrameProvider;-><init>(Lcom/tencent/ugc/Clip;Lcom/tencent/liteav/base/util/CustomHandler;)V

    .line 4
    invoke-interface {v1}, Lcom/tencent/ugc/UGCPixelFrameProvider;->initialize()V

    .line 5
    invoke-interface {v1}, Lcom/tencent/ugc/UGCPixelFrameProvider;->start()V

    .line 6
    iget-object v2, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mProviderList:[Lcom/tencent/ugc/UGCPixelFrameProvider;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->readFrameToQueue()V

    return-void
.end method

.method static synthetic lambda$stop$1(Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mProviderList:[Lcom/tencent/ugc/UGCPixelFrameProvider;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 3
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/tencent/ugc/UGCPixelFrameProvider;->stop()V

    .line 4
    iget-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mProviderList:[Lcom/tencent/ugc/UGCPixelFrameProvider;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/tencent/ugc/UGCPixelFrameProvider;->uninitialize()V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mProviderList:[Lcom/tencent/ugc/UGCPixelFrameProvider;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->clearFrameCache()V

    .line 7
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->clearFrameQueue()V

    return-void
.end method

.method private putOneFrameToList(Lcom/tencent/liteav/videobase/frame/PixelFrame;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mCurrentTimestamp:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->copyPixelFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-wide v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mCurrentTimestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    move-object p1, v0

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    .line 7
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readFrameToCache()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mProviderList:[Lcom/tencent/ugc/UGCPixelFrameProvider;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2
    iget-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameStash:[Lcom/tencent/liteav/videobase/frame/PixelFrame;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3
    iget-wide v2, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mCurrentTimestamp:J

    .line 4
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mFrameDuration:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->getFrameFromProvider(I)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v3, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameStash:[Lcom/tencent/liteav/videobase/frame/PixelFrame;

    aput-object v2, v3, v0

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 8
    :cond_1
    iget v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mClipIndexOfMaxFps:I

    if-ne v1, v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameStash:[Lcom/tencent/liteav/videobase/frame/PixelFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mCurrentTimestamp:J

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private readFrameToQueue()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->getCurrentTimestampWithFpsInfo()V

    .line 3
    invoke-direct {p0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->readFrameToCache()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameStash:[Lcom/tencent/liteav/videobase/frame/PixelFrame;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 6
    invoke-direct {p0, v4, v0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->putOneFrameToList(Lcom/tencent/liteav/videobase/frame/PixelFrame;Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->isAllProviderEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v1, Lcom/tencent/ugc/UGCPixelFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

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

    iget-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mPixelFrameListQueue:Lcom/tencent/ugc/UGCFrameQueue;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    const-string v0, "UGCMultiFileVideoFrameProvider"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFrameDequeued()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/eh;->a(Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public seekTo(JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/ugc/eg;->a(Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;JZ)Ljava/lang/Runnable;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public setPlayEndPts(J)V
    .locals 0

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/ee;->a(Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/ef;->a(Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public uninitialize()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCMultiFilePixelFrameProvider;->stop()V

    return-void
.end method
