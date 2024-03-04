.class public Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/videobase/c$a;
.implements Lcom/tencent/liteav/videoproducer/encoder/be;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private mEGLCore:Lcom/tencent/liteav/videobase/b/e;

.field private mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field private mFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

.field private mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

.field private mListener:Lcom/tencent/liteav/videoproducer/encoder/be$a;

.field private mNativeEncodeWrapper:J

.field private mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

.field private final mSnapshotTaker:Lcom/tencent/liteav/videobase/utils/k;

.field private final mTAG:Ljava/lang/String;

.field private final mThrottlers:Lcom/tencent/liteav/base/b/b;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 2
    .param p1    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/tencent/liteav/base/b/b;

    invoke-direct {p1}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    .line 4
    new-instance p1, Lcom/tencent/liteav/videobase/utils/k;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "softenc"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/liteav/videobase/utils/k;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mSnapshotTaker:Lcom/tencent/liteav/videobase/utils/k;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SoftwareVideoEncoder_"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    return-void
.end method

.method private static createEncodedVideoFrameCallFromNative(Ljava/nio/ByteBuffer;IIIJJJIIJJJZI)Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/tencent/liteav/videobase/common/a;->a(I)Lcom/tencent/liteav/videobase/common/a;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    .line 3
    invoke-static {p2}, Lcom/tencent/liteav/videobase/common/b;->a(I)Lcom/tencent/liteav/videobase/common/b;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->profileType:Lcom/tencent/liteav/videobase/common/b;

    move-object v1, p0

    .line 4
    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    move-wide v1, p4

    .line 5
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    move-wide v1, p6

    .line 6
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    move v1, p3

    .line 7
    iput v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->rotation:I

    move-wide v1, p12

    .line 8
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopFrameIndex:J

    move-wide/from16 v1, p14

    .line 10
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    move-wide/from16 v1, p16

    .line 11
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->refFrameIndex:J

    move-wide v1, p8

    .line 12
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nativePtr:J

    move v1, p10

    .line 13
    iput v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->width:I

    move v1, p11

    .line 14
    iput v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->height:I

    if-eqz p18, :cond_0

    .line 15
    invoke-static/range {p19 .. p19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    :goto_0
    return-object v0
.end method

.method private initOpenGLComponents(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    const/4 v2, 0x1

    const/16 v3, 0x80

    const/4 v4, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1, v4, v3, v3}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance p1, Lcom/tencent/liteav/videobase/frame/j;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    .line 6
    new-instance p1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mSnapshotTaker:Lcom/tencent/liteav/videobase/utils/k;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/utils/k;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 8
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mSnapshotTaker:Lcom/tencent/liteav/videobase/utils/k;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videobase/utils/k;->a(II)V

    .line 9
    new-instance p1, Lcom/tencent/liteav/videobase/videobase/c;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/videobase/c;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 11
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

    new-instance v4, Lcom/tencent/liteav/videobase/videobase/a;

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    .line 12
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getHeight()I

    move-result v0

    invoke-direct {v4, p1, v0}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(II)V

    sget-object v5, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v7, 0x0

    move-object v8, p0

    .line 13
    invoke-virtual/range {v3 .. v8}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ILcom/tencent/liteav/videobase/videobase/c$a;)V

    return v2

    :catch_0
    move-exception p1

    .line 14
    iput-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    .line 15
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v3, "initGL"

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "initializeEGL failed."

    invoke-static {v0, v3, p1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private static native nativeCreate(Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEncodeFrame(J[BIIJ)I
.end method

.method private static native nativeRestartIDR(J)V
.end method

.method private static native nativeSetBitrate(JI)V
.end method

.method private static native nativeSetFps(JI)V
.end method

.method private static native nativeSetNearestRPS(JI)I
.end method

.method private static native nativeSetRPSRefBitmap(JII)I
.end method

.method private static native nativeSetRpsIdrFps(JI)V
.end method

.method private static native nativeStart(JLcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)I
.end method

.method private static native nativeStop(J)I
.end method

.method private onEncodedError(I)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mListener:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/be$a;->onEncodeError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mListener:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V

    :cond_0
    return-void
.end method

.method private onRpsFrameRateChanged(ZI)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mListener:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/be$a;->onRpsFrameRateChanged(ZI)V

    :cond_0
    return-void
.end method

.method private uninitializeOpenGLComponents()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v1, "uninitGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "uninitializeOpenGLComponents"

    invoke-static {v0, v1, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

    invoke-virtual {v1, v2, p0}, Lcom/tencent/liteav/videobase/videobase/c;->a(ILcom/tencent/liteav/videobase/videobase/c$a;)V

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/videobase/c;->a()V

    .line 6
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mSnapshotTaker:Lcom/tencent/liteav/videobase/utils/k;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/utils/k;->a()V

    .line 7
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 9
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    .line 12
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 13
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v4, "unintError"

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const-string v1, "makeCurrent failed."

    invoke-static {v3, v4, v1, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v1}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 16
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method


# virtual methods
.method public ackRPSRecvFrameIndex(II)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->nativeSetRPSRefBitmap(JII)I

    return-void
.end method

.method public encodeFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->initOpenGLComponents(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    .line 4
    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v3}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v3

    invoke-static {v0, v0, v2, v3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 6
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mSnapshotTaker:Lcom/tencent/liteav/videobase/utils/k;

    invoke-virtual {v2, p1}, Lcom/tencent/liteav/videobase/utils/k;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 7
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v2, p1, v3, v1}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 8
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/tencent/liteav/videobase/videobase/c;->a(JLcom/tencent/liteav/videobase/frame/d;)V

    .line 9
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/k;->release()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v2, "makeCurrentError"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string p1, "makeCurrent failed."

    invoke-static {v1, v2, p1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getEncodeParams()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;
    .locals 2

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    return-object v0
.end method

.method public getEncoderType()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    return-object v0
.end method

.method public initialize()V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->nativeCreate(Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFrameConverted(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object p1

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object p1

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    const-string p2, "pixelFrame pixelFormat not I420 "

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v3

    .line 6
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v5

    .line 7
    invoke-static/range {v0 .. v6}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->nativeEncodeFrame(J[BIIJ)I

    :cond_1
    return-void
.end method

.method public restartIDRFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    const-string v1, "restartIDRFrame"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->nativeRestartIDR(J)V

    return-void
.end method

.method public setBitrate(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SetBitrate: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->nativeSetBitrate(JI)V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setBitrate(I)V

    return-void
.end method

.method public setFps(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setFps: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->nativeSetFps(JI)V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->setFps(I)V

    return-void
.end method

.method public setRPSIFrameFPS(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setRPSIFrameFPS\uff1afps= %d"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->nativeSetRpsIdrFps(JI)V

    return-void
.end method

.method public setRPSNearestREFSize(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setRPSNearestREFSize "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->nativeSetNearestRPS(JI)I

    return-void
.end method

.method public setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 0

    return-void
.end method

.method public signalEndOfStream()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    const-string v1, "signalEndOfStream"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mListener:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mListener:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V

    :cond_0
    return-void
.end method

.method public start(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/be$a;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    .line 3
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mListener:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    .line 4
    iget-wide p1, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    invoke-static {p1, p2, v0}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->nativeStart(JLcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)I

    const/4 p1, 0x1

    return p1
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    const-string v1, "Stop"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mEncodeParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    .line 3
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->nativeStop(J)I

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->uninitializeOpenGLComponents()V

    return-void
.end method

.method public takeSnapshot(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mSnapshotTaker:Lcom/tencent/liteav/videobase/utils/k;

    .line 2
    iput-object p1, v0, Lcom/tencent/liteav/videobase/utils/k;->a:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    return-void
.end method

.method public uninitialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "uninitialize "

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->mNativeEncodeWrapper:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/SoftwareVideoEncoder;->nativeDestroy(J)V

    return-void
.end method
