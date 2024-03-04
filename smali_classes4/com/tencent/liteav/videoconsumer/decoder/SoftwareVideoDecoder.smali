.class public Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/decoder/az;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoftwareVideoDecoder"


# instance fields
.field private mListener:Lcom/tencent/liteav/videoconsumer/decoder/ba;

.field private mNativeVideoDecoderWrapper:J

.field private mPixelFramePool:Lcom/tencent/liteav/videobase/frame/i;

.field private final mReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 2
    .param p1    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    .line 3
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-void
.end method

.method private getByteBufferFromPixelFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private varargs handleDecoderError(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mListener:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onDecodeFailed()V

    :cond_0
    return-void
.end method

.method private static native nativeAbandonDecodingFrames(J)V
.end method

.method private static native nativeCreate(Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;)J
.end method

.method private static native nativeDecodeFrame(JLcom/tencent/liteav/videobase/common/EncodedVideoFrame;Ljava/nio/ByteBuffer;IIIJJ)I
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeStart(J)I
.end method

.method private static native nativeStop(J)I
.end method

.method private obtainPixelFrame(IIIIJ)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SoftwareVideoDecoder"

    if-nez v0, :cond_0

    .line 2
    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$c;->o:Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "unknown format:"

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->handleDecoderError(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "obtainPixelFrame formatType: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mPixelFramePool:Lcom/tencent/liteav/videobase/frame/i;

    if-nez p1, :cond_1

    const-string p1, "obtainPixelFrame mPixelFramePool is null."

    .line 5
    invoke-static {v2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_1
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    .line 7
    invoke-virtual {p1, p2, p3, v1, v0}, Lcom/tencent/liteav/videobase/frame/i;->a(IILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1

    .line 8
    invoke-static {p4}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 9
    invoke-virtual {p1, p5, p6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    return-object p1
.end method

.method private onDecodedFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$c;->n:Lcom/tencent/liteav/videobase/videobase/h$c;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoDecode: decode error, errCode:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->handleDecoderError(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "decode failed."

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "SoftwareVideoDecoder"

    invoke-static {p3, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 4
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mListener:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p2, p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onDecodeFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_3
    return-void
.end method


# virtual methods
.method public abandonDecodingFrames()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "SoftwareVideoDecoder"

    const-string v1, "decoder has already stopped"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeAbandonDecodingFrames(J)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mListener:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onAbandonDecodingFramesCompleted()V

    :cond_1
    return-void
.end method

.method public decode(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)Z
    .locals 13

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isEosFrame:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mListener:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onDecodeCompleted()V

    return v1

    .line 4
    :cond_1
    iget-wide v2, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    iget-object v5, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    .line 5
    iget v6, v0, Lcom/tencent/liteav/videobase/common/a;->mValue:I

    .line 6
    iget-object v0, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    .line 7
    iget v7, v0, Lcom/tencent/liteav/videobase/common/CodecType;->mValue:I

    .line 8
    iget v8, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->rotation:I

    iget-wide v9, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iget-wide v11, p1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    move-object v4, p1

    .line 9
    invoke-static/range {v2 .. v12}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeDecodeFrame(JLcom/tencent/liteav/videobase/common/EncodedVideoFrame;Ljava/nio/ByteBuffer;IIIJJ)I

    .line 10
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->release()V

    .line 11
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mListener:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p1}, Lcom/tencent/liteav/videoconsumer/decoder/ba;->onFrameEnqueuedToDecoder()V

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDecoderType()Lcom/tencent/liteav/videoconsumer/decoder/az$a;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoconsumer/decoder/az$a;->a:Lcom/tencent/liteav/videoconsumer/decoder/az$a;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public setScene(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecoderDef$ConsumerScene;)V
    .locals 0

    return-void
.end method

.method public setServerConfig(Lcom/tencent/liteav/videoconsumer/consumer/ServerVideoConsumerConfig;)V
    .locals 0

    return-void
.end method

.method public start(Ljava/lang/Object;Lcom/tencent/liteav/videoconsumer/decoder/ba;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    const-wide/16 v2, 0x0

    const-string p1, "SoftwareVideoDecoder"

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-string p2, "decoder is already started!"

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/frame/i;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mPixelFramePool:Lcom/tencent/liteav/videobase/frame/i;

    .line 4
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mListener:Lcom/tencent/liteav/videoconsumer/decoder/ba;

    .line 5
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeCreate(Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    const/4 p2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 6
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$c;->l:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "VideoDecode: out of memory, Start decoder failed"

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->handleDecoderError(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "create native instance failed."

    .line 7
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeStart(J)I

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$c;->m:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "VideoDecode: Start decoder failed"

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->handleDecoderError(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "Start software decoder failed."

    .line 10
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mReporter:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->B:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "Start decoder success"

    invoke-interface {v0, v1, v2, p2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "decoder Start success."

    .line 12
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    const-string v2, "SoftwareVideoDecoder"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const-string v0, "decoder has already stopped"

    .line 2
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mPixelFramePool:Lcom/tencent/liteav/videobase/frame/i;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/a;->b()V

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeStop(J)I

    .line 6
    iget-wide v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->nativeDestroy(J)V

    .line 7
    iput-wide v3, p0, Lcom/tencent/liteav/videoconsumer/decoder/SoftwareVideoDecoder;->mNativeVideoDecoderWrapper:J

    const-string v0, "decoder stop."

    .line 8
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public uninitialize()V
    .locals 0

    return-void
.end method
