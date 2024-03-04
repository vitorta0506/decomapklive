.class public Lcom/tencent/ugc/VideoDemuxerFFmpeg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;
.implements Lcom/tencent/ugc/VideoDemuxer;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::ugc"
.end annotation


# static fields
.field private static final MAX_FRAME_SIZE:I = 0x14

.field private static final OPEN_MEDIA_OUT_TIME:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "VideoDemuxerFFmpeg"


# instance fields
.field private final mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/ugc/UGCFrameQueue<",
            "Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeHandler:J

.field private mOpenSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/ugc/UGCFrameQueue;

    invoke-direct {v0}, Lcom/tencent/ugc/UGCFrameQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mOpenSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/tencent/ugc/VideoDemuxerFFmpeg;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->getNextEncodeVideoFrameInternal()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/tencent/ugc/VideoDemuxerFFmpeg;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->getNextEncodeVideoFrameInternal()V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/tencent/ugc/VideoDemuxerFFmpeg;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->getNextEncodeVideoFrameInternal()V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/tencent/ugc/VideoDemuxerFFmpeg;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->getNextEncodeVideoFrameInternal()V

    return-void
.end method

.method private clearFrameQueue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->dequeueAll()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->release()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private destroyNativeHandler()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->nativeClose(J)V

    .line 3
    iget-wide v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mNativeHandler:J

    invoke-static {v0, v1}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->nativeDestroy(J)V

    .line 4
    iput-wide v2, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mNativeHandler:J

    :cond_0
    return-void
.end method

.method private getNextEncodeVideoFrameInternal()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v1, Lcom/tencent/ugc/VideoDemuxer;->END_OF_STREAM:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-wide v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mNativeHandler:J

    invoke-static {v0, v1}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->nativeGetNextEncodeVideoFrame(J)Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v1, Lcom/tencent/ugc/VideoDemuxer;->END_OF_STREAM:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_3

    .line 10
    invoke-static {p0}, Lcom/tencent/ugc/gs;->a(Lcom/tencent/ugc/VideoDemuxerFFmpeg;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/gt;->a(Lcom/tencent/ugc/VideoDemuxerFFmpeg;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method static synthetic lambda$close$1(Lcom/tencent/ugc/VideoDemuxerFFmpeg;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->clearFrameQueue()V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v1, Lcom/tencent/ugc/VideoDemuxer;->END_OF_STREAM:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->setUGCFrameQueueListener(Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;)V

    .line 4
    invoke-direct {p0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->destroyNativeHandler()V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mOpenSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    .line 8
    iput-object v1, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    :cond_0
    return-void
.end method

.method static synthetic lambda$open$0(Lcom/tencent/ugc/VideoDemuxerFFmpeg;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->nativeCreate(Lcom/tencent/ugc/VideoDemuxerFFmpeg;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mNativeHandler:J

    const-string v2, "VideoDemuxerFFmpeg"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const-string p1, "create native instance failed."

    .line 2
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object p1, Lcom/tencent/ugc/VideoDemuxer;->END_OF_STREAM:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    invoke-static {v0, v1, p1}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->nativeOpen(JLjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "native FFmpegDemuxerWrapper open failed."

    .line 5
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->destroyNativeHandler()V

    .line 7
    iget-object p0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object p1, Lcom/tencent/ugc/VideoDemuxer;->END_OF_STREAM:Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mOpenSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iget-object p1, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {p1, p0}, Lcom/tencent/ugc/UGCFrameQueue;->setUGCFrameQueueListener(Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;)V

    .line 10
    iget-object p1, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {p1}, Lcom/tencent/ugc/UGCFrameQueue;->clear()V

    .line 11
    invoke-static {p0}, Lcom/tencent/ugc/gv;->a(Lcom/tencent/ugc/VideoDemuxerFFmpeg;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->runOnWorkThread(Ljava/lang/Runnable;)V

    const-string p0, "demuxer open success."

    .line 12
    invoke-static {v2, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$seek$2(Lcom/tencent/ugc/VideoDemuxerFFmpeg;J)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->clearFrameQueue()V

    .line 4
    iget-wide v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mNativeHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->nativeSeek(JJ)Z

    move-result p1

    .line 5
    invoke-direct {p0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->getNextEncodeVideoFrameInternal()V

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeCreate(Lcom/tencent/ugc/VideoDemuxerFFmpeg;)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetNextEncodeVideoFrame(J)Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;
.end method

.method private static native nativeOpen(JLjava/lang/String;)I
.end method

.method private static native nativeSeek(JJ)Z
.end method

.method private runOnWorkThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/ugc/gq;->a(Lcom/tencent/ugc/VideoDemuxerFFmpeg;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getNextEncodeVideoFrame()Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;
    .locals 1

    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->dequeue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    return-object v0
.end method

.method public onFrameDequeued()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/ugc/gu;->a(Lcom/tencent/ugc/VideoDemuxerFFmpeg;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public open(Ljava/lang/String;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    if-eqz v0, :cond_0

    const-string p1, "VideoDemuxerFFmpeg"

    const-string v0, "demuxer is already open!"

    .line 3
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    .line 5
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ugc-media-list-source"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance v1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {p0, p1}, Lcom/tencent/ugc/gp;->a(Lcom/tencent/ugc/VideoDemuxerFFmpeg;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;J)Z

    .line 10
    iget-object p1, p0, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->mOpenSuccess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public seek(J)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-static {p0, p1, p2}, Lcom/tencent/ugc/gr;->a(Lcom/tencent/ugc/VideoDemuxerFFmpeg;J)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/ugc/VideoDemuxerFFmpeg;->runOnWorkThread(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x1f4

    .line 3
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "seek future task exception: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoDemuxerFFmpeg"

    invoke-static {p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
