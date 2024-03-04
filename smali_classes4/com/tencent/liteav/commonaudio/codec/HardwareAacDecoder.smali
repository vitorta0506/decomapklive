.class public Lcom/tencent/liteav/commonaudio/codec/HardwareAacDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;

    sget v1, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper$a;->b:I

    invoke-direct {v0, v1}, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;

    return-void
.end method


# virtual methods
.method public decode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->processFrame(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getOutputChannelCount()I
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->a:Landroid/media/MediaFormat;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "channel-count"

    .line 3
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getOutputChannelCount failed. "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "HardwareAacDecoder"

    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1
.end method

.method public getOutputSampleRate()I
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->a:Landroid/media/MediaFormat;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "sample-rate"

    .line 3
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getOutputSampleRate failed. "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "HardwareAacDecoder"

    invoke-static {v3, v0, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1
.end method

.method public init(IILjava/nio/ByteBuffer;)Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    const-string v0, "audio/mp4a-latm"

    .line 1
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string p2, "mime"

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "csd-0"

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 4
    iget-object p2, p0, Lcom/tencent/liteav/commonaudio/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->a(Landroid/media/MediaFormat;)Z

    move-result p1

    return p1
.end method

.method public unInit()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/commonaudio/codec/HardwareAacDecoder;->a:Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;

    invoke-virtual {v0}, Lcom/tencent/liteav/commonaudio/codec/AacMediaCodecWrapper;->a()V

    return-void
.end method
