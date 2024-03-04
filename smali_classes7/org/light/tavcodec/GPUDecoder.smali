.class public Lorg/light/tavcodec/GPUDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DECODER_THREAD_MAX_COUNT:I = 0xa

.field private static final END_OF_STREAM:I = -0x3

.field private static final ERROR:I = -0x2

.field private static final INIT_DECODER_TIMEOUT_MS:I = 0x7d0

.field private static final SUCCESS:I = 0x0

.field private static final TIMEOUT_US:I = 0x3e8

.field private static final TRY_AGAIN_LATER:I = -0x1

.field private static final decoderThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private decoder:Landroid/media/MediaCodec;

.field private disableFlush:Z

.field private lastOutputBufferIndex:I

.field private lastPresentationTime:J

.field private outputSurface:Landroid/view/Surface;

.field private pendingTimes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private queueEOSBuffer:Z

.field private released:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/light/tavcodec/GPUDecoder;->decoderThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->outputSurface:Landroid/view/Surface;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->pendingTimes:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/light/tavcodec/GPUDecoder;->queueEOSBuffer:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lorg/light/tavcodec/GPUDecoder;->disableFlush:Z

    .line 6
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Lorg/light/tavcodec/GPUDecoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lorg/light/tavcodec/GPUDecoder;->lastOutputBufferIndex:I

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lorg/light/tavcodec/GPUDecoder;->lastPresentationTime:J

    .line 9
    iput-boolean v0, p0, Lorg/light/tavcodec/GPUDecoder;->released:Z

    return-void
.end method

.method private static Create(Landroid/view/Surface;)Lorg/light/tavcodec/GPUDecoder;
    .locals 1

    .line 1
    invoke-static {}, Lorg/light/tavcodec/GPUDecoder;->forceSoftwareDecoder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lorg/light/tavcodec/GPUDecoder;

    invoke-direct {v0}, Lorg/light/tavcodec/GPUDecoder;-><init>()V

    .line 3
    iput-object p0, v0, Lorg/light/tavcodec/GPUDecoder;->outputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$000(Lorg/light/tavcodec/GPUDecoder;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lorg/light/tavcodec/GPUDecoder;->outputSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lorg/light/tavcodec/GPUDecoder;->decoderThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/light/tavcodec/GPUDecoder;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lorg/light/tavcodec/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$202(Lorg/light/tavcodec/GPUDecoder;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    iput-object p1, p0, Lorg/light/tavcodec/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    return-object p1
.end method

.method private dequeueInputBuffer()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method private dequeueOutputBuffer()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lorg/light/tavcodec/GPUDecoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method private static forceSoftwareDecoder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private initDecoder(Landroid/media/MediaFormat;)Z
    .locals 8

    .line 1
    sget-object v0, Lorg/light/tavcodec/GPUDecoder;->decoderThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-lt v1, v3, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "libpag_GPUDecoder_init_decoder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v1, Lorg/light/tavcodec/SynchronizeHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/light/tavcodec/SynchronizeHandler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/media/MediaCodec;

    const/4 v5, 0x0

    aput-object v5, v4, v2

    .line 6
    new-instance v5, Lorg/light/tavcodec/GPUDecoder$1;

    invoke-direct {v5, p0, p1, v4}, Lorg/light/tavcodec/GPUDecoder$1;-><init>(Lorg/light/tavcodec/GPUDecoder;Landroid/media/MediaFormat;[Landroid/media/MediaCodec;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v5, v6, v7}, Lorg/light/tavcodec/SynchronizeHandler;->runSync(Lorg/light/tavcodec/SynchronizeHandler$TimeoutRunnable;J)Z

    move-result p1

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    if-eqz p1, :cond_1

    aget-object p1, v4, v2

    .line 8
    iput-object p1, p0, Lorg/light/tavcodec/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private onConfigure(Landroid/media/MediaFormat;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->outputSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/tavcodec/GPUDecoder;->initDecoder(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1
.end method

.method private onDecodeFrame()I
    .locals 7

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/light/tavcodec/GPUDecoder;->dequeueOutputBuffer()I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/light/tavcodec/GPUDecoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, -0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ltz v0, :cond_0

    .line 3
    iput-boolean v4, p0, Lorg/light/tavcodec/GPUDecoder;->queueEOSBuffer:Z

    .line 4
    invoke-direct {p0, v0, v4}, Lorg/light/tavcodec/GPUDecoder;->releaseOutputBuffer(IZ)I

    :cond_0
    return v3

    :cond_1
    if-ltz v0, :cond_5

    .line 5
    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, p0, Lorg/light/tavcodec/GPUDecoder;->lastPresentationTime:J

    .line 6
    invoke-direct {p0}, Lorg/light/tavcodec/GPUDecoder;->releaseOutputBuffer()V

    .line 7
    iput v0, p0, Lorg/light/tavcodec/GPUDecoder;->lastOutputBufferIndex:I

    .line 8
    iget-object v1, p0, Lorg/light/tavcodec/GPUDecoder;->pendingTimes:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/light/tavcodec/GPUDecoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lorg/light/tavcodec/GPUDecoder;->pendingTimes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/light/tavcodec/GPUDecoder;->queueEOSBuffer:Z

    if-eqz v1, :cond_5

    const/16 v0, 0x64

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_4

    .line 10
    invoke-direct {p0}, Lorg/light/tavcodec/GPUDecoder;->dequeueOutputBuffer()I

    move-result v0

    if-lez v0, :cond_3

    .line 11
    iget-object v2, p0, Lorg/light/tavcodec/GPUDecoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 12
    iput-boolean v4, p0, Lorg/light/tavcodec/GPUDecoder;->queueEOSBuffer:Z

    .line 13
    invoke-direct {p0, v0, v4}, Lorg/light/tavcodec/GPUDecoder;->releaseOutputBuffer(IZ)I

    goto :goto_1

    :cond_2
    const-string v0, "GPUDecoder"

    const-string v2, "dequeue non-EOS buffer when pendingTimes is empty!"

    .line 14
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/16 v5, 0x1

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :cond_4
    :goto_1
    return v3

    :cond_5
    if-ltz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, -0x1

    :goto_2
    return v4

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x2

    return v0
.end method

.method private onEndOfStream()I
    .locals 7

    .line 1
    invoke-direct {p0}, Lorg/light/tavcodec/GPUDecoder;->dequeueInputBuffer()I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v6}, Lorg/light/tavcodec/GPUDecoder;->queueInputBuffer(IIIJI)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lorg/light/tavcodec/GPUDecoder;->queueEOSBuffer:Z

    :cond_0
    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private onFlush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/light/tavcodec/GPUDecoder;->disableFlush:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 3
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 4
    invoke-direct {p0}, Lorg/light/tavcodec/GPUDecoder;->releaseOutputBuffer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->pendingTimes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/light/tavcodec/GPUDecoder;->queueEOSBuffer:Z

    return-void
.end method

.method private onRelease()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/light/tavcodec/GPUDecoder;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/light/tavcodec/GPUDecoder;->released:Z

    .line 3
    invoke-direct {p0}, Lorg/light/tavcodec/GPUDecoder;->releaseOutputBuffer()V

    .line 4
    invoke-direct {p0}, Lorg/light/tavcodec/GPUDecoder;->releaseDecoder()V

    return-void
.end method

.method private onRenderFrame()Z
    .locals 4

    .line 1
    iget v0, p0, Lorg/light/tavcodec/GPUDecoder;->lastOutputBufferIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x1

    .line 2
    invoke-direct {p0, v0, v3}, Lorg/light/tavcodec/GPUDecoder;->releaseOutputBuffer(IZ)I

    move-result v0

    .line 3
    iput v2, p0, Lorg/light/tavcodec/GPUDecoder;->lastOutputBufferIndex:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onSendBytes(Ljava/nio/ByteBuffer;J)I
    .locals 7

    .line 1
    invoke-direct {p0}, Lorg/light/tavcodec/GPUDecoder;->dequeueInputBuffer()I

    move-result v1

    if-ltz v1, :cond_2

    .line 2
    invoke-direct {p0, v1}, Lorg/light/tavcodec/GPUDecoder;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/light/tavcodec/GPUDecoder;->queueInputBuffer(IIIJI)I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->pendingTimes:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private presentationTime()J
    .locals 2

    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/light/tavcodec/GPUDecoder;->lastPresentationTime:J

    :goto_0
    return-wide v0
.end method

.method private queueInputBuffer(IIIJI)I
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/light/tavcodec/GPUDecoder;->disableFlush:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x2

    return p1
.end method

.method private releaseAsync(Ljava/lang/Runnable;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lorg/light/tavcodec/GPUDecoder;->decoderThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "libpag_GPUDecoder_release_decoder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    new-instance v2, Lorg/light/tavcodec/GPUDecoder$3;

    invoke-direct {v2, p0, p1, v0}, Lorg/light/tavcodec/GPUDecoder$3;-><init>(Lorg/light/tavcodec/GPUDecoder;Ljava/lang/Runnable;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseDecoder()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/light/tavcodec/GPUDecoder$2;

    invoke-direct {v0, p0}, Lorg/light/tavcodec/GPUDecoder$2;-><init>(Lorg/light/tavcodec/GPUDecoder;)V

    invoke-direct {p0, v0}, Lorg/light/tavcodec/GPUDecoder;->releaseAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private releaseOutputBuffer(IZ)I
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x2

    return p1
.end method

.method private releaseOutputBuffer()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/light/tavcodec/GPUDecoder;->lastOutputBufferIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v0, v2}, Lorg/light/tavcodec/GPUDecoder;->releaseOutputBuffer(IZ)I

    .line 3
    iput v1, p0, Lorg/light/tavcodec/GPUDecoder;->lastOutputBufferIndex:I

    :cond_0
    return-void
.end method
