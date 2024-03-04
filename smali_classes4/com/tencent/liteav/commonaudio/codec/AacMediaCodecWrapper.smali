.class public Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper$a;
    }
.end annotation


# instance fields
.field a:Landroid/media/MediaFormat;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private d:Landroid/media/MediaCodec;

.field private final e:Landroid/media/MediaCodec$BufferInfo;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->c:I

    .line 3
    sget v0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper$a;->a:I

    if-ne p1, v0, :cond_0

    const-string p1, "HardwareAacEncoder"

    goto :goto_0

    :cond_0
    const-string p1, "HardwareAacDecoder"

    :goto_0
    iput-object p1, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->b:Ljava/lang/String;

    .line 4
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->e:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method private b()Ljava/nio/ByteBuffer;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->e:Landroid/media/MediaCodec$BufferInfo;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_0
    const/4 v3, -0x3

    if-ne v2, v3, :cond_1

    .line 2
    iget-object v2, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->b:Ljava/lang/String;

    const-string v3, "codec output buffers changed."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 3
    iget-object v2, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->a:Landroid/media/MediaFormat;

    .line 4
    iget-object v2, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "codec output format changed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->a:Landroid/media/MediaFormat;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    if-gez v2, :cond_3

    .line 5
    iget-object v3, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->b:Ljava/lang/String;

    const-string/jumbo v4, "unexpected result from dequeueOutputBuffer: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 6
    :cond_3
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v3

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4

    .line 7
    iget-object v3, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_0

    .line 8
    :cond_4
    iget-object v3, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    aget-object v3, v3, v2

    .line 9
    :goto_0
    iget-object v4, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 11
    iget-object v3, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v2

    .line 12
    iget-object v3, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "dequeueOutputBuffer failed. "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    iget-object v2, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "codec stop failed."

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 13
    iget-object v2, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "codec release failed."

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    return-void
.end method

.method public final a(Landroid/media/MediaFormat;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->c:I

    sget v2, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper$a;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "audio/mp4a-latm"

    if-eqz v0, :cond_2

    .line 3
    :try_start_1
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    .line 5
    :goto_1
    iget-object v2, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    return v3

    :catch_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "create codec failed. "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->a()V

    :cond_4
    :goto_3
    return v1
.end method

.method public processFrame(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 13
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    array-length v3, v0

    if-gtz v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-gez v7, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    .line 6
    aget-object v0, v0, v7

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v6, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->d:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->b:Ljava/lang/String;

    const-string v0, "get invalid input buffers."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "feedData failed. "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 p1, 0x3

    if-ge v2, p1, :cond_5

    .line 10
    invoke-direct {p0}, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->b()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v1
.end method
