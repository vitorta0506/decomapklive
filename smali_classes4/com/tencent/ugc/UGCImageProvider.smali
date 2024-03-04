.class public Lcom/tencent/ugc/UGCImageProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;
.implements Lcom/tencent/ugc/UGCPixelFrameProvider;


# static fields
.field private static final MAX_FRAME_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "UGCImageProvider"


# instance fields
.field private final mBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFrameCount:I

.field private mDurationFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDurationMs:J

.field private mEGLCore:Lcom/tencent/liteav/videobase/b/e;

.field private final mFps:I

.field private final mFrameIntervalMs:I

.field private final mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/ugc/UGCFrameQueue<",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGLTextureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Lcom/tencent/liteav/videobase/frame/d;",
            ">;"
        }
    .end annotation
.end field

.field private mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

.field private mMotionDurationMs:J

.field private mStayDurationMs:J

.field private final mThrottlers:Lcom/tencent/liteav/base/b/b;

.field private mTotalFrameCount:I

.field private mTransitionType:I

.field private mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mCurrentFrameCount:I

    const-wide/16 v0, 0x3e8

    .line 4
    iput-wide v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mStayDurationMs:J

    const-wide/16 v0, 0x1f4

    .line 5
    iput-wide v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mMotionDurationMs:J

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mTransitionType:I

    const-string v0, "UGCImageProvider"

    .line 7
    invoke-static {v0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x14

    .line 8
    :goto_0
    iput p2, p0, Lcom/tencent/ugc/UGCImageProvider;->mFps:I

    const/16 v0, 0x3e8

    .line 9
    div-int/2addr v0, p2

    iput v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mFrameIntervalMs:I

    .line 10
    new-instance p2, Lcom/tencent/ugc/UGCFrameQueue;

    invoke-direct {p2}, Lcom/tencent/ugc/UGCFrameQueue;-><init>()V

    iput-object p2, p0, Lcom/tencent/ugc/UGCImageProvider;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    .line 11
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/tencent/ugc/UGCImageProvider;->mGLTextureMap:Ljava/util/Map;

    .line 12
    iput-object p1, p0, Lcom/tencent/ugc/UGCImageProvider;->mBitmapList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/tencent/ugc/UGCImageProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCImageProvider;->decodeBitmapFrame()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/tencent/ugc/UGCImageProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCImageProvider;->decodeBitmapFrame()V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/tencent/ugc/UGCImageProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCImageProvider;->decodeBitmapFrame()V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/tencent/ugc/UGCImageProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCImageProvider;->decodeBitmapFrame()V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/tencent/ugc/UGCImageProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCImageProvider;->decodeBitmapFrame()V

    return-void
.end method

.method private clamp(III)I
    .locals 0

    if-ge p1, p2, :cond_0

    return p2

    :cond_0
    if-le p1, p3, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method private clearGLTextureCache()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mGLTextureMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/frame/d;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mGLTextureMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private clearPixelFrameQueue()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->dequeueAll()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 4
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private decodeBitmapFrame()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mCurrentFrameCount:I

    iget v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mTotalFrameCount:I

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v1, Lcom/tencent/ugc/UGCPixelFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mCurrentFrameCount:I

    int-to-long v2, v1

    iget v4, p0, Lcom/tencent/ugc/UGCImageProvider;->mFrameIntervalMs:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mCurrentFrameCount:I

    .line 7
    iget-wide v4, p0, Lcom/tencent/ugc/UGCImageProvider;->mStayDurationMs:J

    iget-wide v6, p0, Lcom/tencent/ugc/UGCImageProvider;->mMotionDurationMs:J

    add-long/2addr v4, v6

    div-long v4, v2, v4

    long-to-int v1, v4

    .line 8
    iget-object v4, p0, Lcom/tencent/ugc/UGCImageProvider;->mBitmapList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v4}, Lcom/tencent/ugc/UGCImageProvider;->clamp(III)I

    move-result v1

    .line 9
    iget-object v4, p0, Lcom/tencent/ugc/UGCImageProvider;->mBitmapList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 10
    invoke-direct {p0, v4, v2, v3}, Lcom/tencent/ugc/UGCImageProvider;->loadBitmapToPixelFrame(Landroid/graphics/Bitmap;J)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    .line 11
    iget-object v4, p0, Lcom/tencent/ugc/UGCImageProvider;->mBitmapList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v1, v5, v4}, Lcom/tencent/ugc/UGCImageProvider;->clamp(III)I

    move-result v1

    .line 12
    iget-object v4, p0, Lcom/tencent/ugc/UGCImageProvider;->mBitmapList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 13
    invoke-direct {p0, v1, v2, v3}, Lcom/tencent/ugc/UGCImageProvider;->loadBitmapToPixelFrame(Landroid/graphics/Bitmap;J)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_2

    .line 16
    invoke-static {p0}, Lcom/tencent/ugc/cu;->a(Lcom/tencent/ugc/UGCImageProvider;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    invoke-static {p0}, Lcom/tencent/ugc/cv;->a(Lcom/tencent/ugc/UGCImageProvider;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private initializeGLComponents()V
    .locals 5

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ay;->a()Lcom/tencent/liteav/videoproducer/capture/ay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/capture/ay;->b()Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 4
    new-instance v0, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    iget-object v2, p0, Lcom/tencent/ugc/UGCImageProvider;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v3, "initGL"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "UGCImageProvider"

    const-string v4, "create EGLCore failed."

    invoke-static {v2, v0, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iput-object v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method

.method static synthetic lambda$initialize$0(Lcom/tencent/ugc/UGCImageProvider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0, p0}, Lcom/tencent/ugc/UGCFrameQueue;->setUGCFrameQueueListener(Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/UGCImageProvider;->initializeGLComponents()V

    return-void
.end method

.method static synthetic lambda$seekTo$4(Lcom/tencent/ugc/UGCImageProvider;J)V
    .locals 2

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    long-to-int p2, p1

    .line 1
    iget p1, p0, Lcom/tencent/ugc/UGCImageProvider;->mFrameIntervalMs:I

    div-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/tencent/ugc/UGCImageProvider;->mCurrentFrameCount:I

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/UGCImageProvider;->clearPixelFrameQueue()V

    .line 3
    invoke-static {p0}, Lcom/tencent/ugc/cm;->a(Lcom/tencent/ugc/UGCImageProvider;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCImageProvider;->runOnWorkThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$setPictureTransition$5(Lcom/tencent/ugc/UGCImageProvider;I)Ljava/lang/Long;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCImageProvider;->setPictureTransitionInternal(I)V

    .line 2
    iget-wide p0, p0, Lcom/tencent/ugc/UGCImageProvider;->mDurationMs:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$start$2(Lcom/tencent/ugc/UGCImageProvider;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mTransitionType:I

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCImageProvider;->setPictureTransitionInternal(I)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/UGCImageProvider;->decodeBitmapFrame()V

    return-void
.end method

.method static synthetic lambda$stop$3(Lcom/tencent/ugc/UGCImageProvider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/tencent/ugc/cn;->a(Lcom/tencent/ugc/UGCImageProvider;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$uninitialize$1(Lcom/tencent/ugc/UGCImageProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCImageProvider;->clearPixelFrameQueue()V

    .line 2
    invoke-direct {p0}, Lcom/tencent/ugc/UGCImageProvider;->clearGLTextureCache()V

    .line 3
    invoke-direct {p0}, Lcom/tencent/ugc/UGCImageProvider;->uninitGLComponents()V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->setUGCFrameQueueListener(Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    .line 7
    iput-object v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    :cond_0
    return-void
.end method

.method private loadBitmapToPixelFrame(Landroid/graphics/Bitmap;J)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    iget-object v2, p0, Lcom/tencent/ugc/UGCImageProvider;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v3, "make_current_fail"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "loadBitmapToPixelFrame makeCurrent fail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "UGCImageProvider"

    invoke-static {v2, v4, v1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mGLTextureMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v2

    invoke-static {p1, v2, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    .line 7
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mGLTextureMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mGLTextureMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/tencent/liteav/videobase/frame/d;

    .line 9
    :goto_1
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ay;->a()Lcom/tencent/liteav/videoproducer/capture/ay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/ay;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    return-object p1
.end method

.method private runOnWorkThread(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method private setPictureTransitionInternal(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/tencent/ugc/UGCImageProvider;->mTransitionType:I

    .line 2
    invoke-static {p1}, Lcom/tencent/ugc/UGCTransitionRules;->getStayDurationMs(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mStayDurationMs:J

    .line 3
    invoke-static {p1}, Lcom/tencent/ugc/UGCTransitionRules;->getMotionDurationMs(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mMotionDurationMs:J

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mBitmapList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/tencent/ugc/UGCImageProvider;->mStayDurationMs:J

    iget-wide v4, p0, Lcom/tencent/ugc/UGCImageProvider;->mMotionDurationMs:J

    add-long/2addr v2, v4

    mul-long v0, v0, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mDurationMs:J

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/tencent/ugc/UGCImageProvider;->mStayDurationMs:J

    iget-wide v4, p0, Lcom/tencent/ugc/UGCImageProvider;->mMotionDurationMs:J

    add-long/2addr v2, v4

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mDurationMs:J

    .line 7
    :goto_1
    iget-wide v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mDurationMs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget p1, p0, Lcom/tencent/ugc/UGCImageProvider;->mFps:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/ugc/UGCImageProvider;->mTotalFrameCount:I

    return-void
.end method

.method private uninitGLComponents()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    .line 4
    iget-object v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 5
    iput-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    iget-object v2, p0, Lcom/tencent/ugc/UGCImageProvider;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v3, "uninitGL"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "UGCImageProvider"

    const-string v4, "EGLCore destroy failed."

    invoke-static {v2, v1, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v1}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 9
    iput-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mDurationFuture:Ljava/util/concurrent/FutureTask;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mDurationFuture:Ljava/util/concurrent/FutureTask;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDuration future task exception: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UGCImageProvider"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

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

    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    const-string v0, "UGCImageProvider"

    const-string v1, "initialize"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    const-string v0, "UGCImageProvider"

    const-string v1, "UGCPixelFrameProvider is initialized"

    .line 4
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ugc-image-frame-provider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/ugc/UGCImageProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {p0}, Lcom/tencent/ugc/cl;->a(Lcom/tencent/ugc/UGCImageProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCImageProvider;->runOnWorkThread(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFrameDequeued()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/ugc/ct;->a(Lcom/tencent/ugc/UGCImageProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCImageProvider;->runOnWorkThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public seekTo(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/ugc/cr;->a(Lcom/tencent/ugc/UGCImageProvider;J)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCImageProvider;->runOnWorkThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPictureTransition(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setPictureTransition type = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCImageProvider"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-static {p0, p1}, Lcom/tencent/ugc/cs;->a(Lcom/tencent/ugc/UGCImageProvider;I)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCImageProvider;->mDurationFuture:Ljava/util/concurrent/FutureTask;

    .line 3
    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCImageProvider;->runOnWorkThread(Ljava/lang/Runnable;)Z

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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UGCImageProvider"

    const-string v2, "Start"

    .line 1
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/ugc/cp;->a(Lcom/tencent/ugc/UGCImageProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCImageProvider;->runOnWorkThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "UGCImageProvider"

    const-string/jumbo v1, "stop"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/ugc/cq;->a(Lcom/tencent/ugc/UGCImageProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCImageProvider;->runOnWorkThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public uninitialize()V
    .locals 2

    const-string v0, "UGCImageProvider"

    const-string/jumbo v1, "unInitialize"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/ugc/co;->a(Lcom/tencent/ugc/UGCImageProvider;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCImageProvider;->runOnWorkThread(Ljava/lang/Runnable;)Z

    return-void
.end method
