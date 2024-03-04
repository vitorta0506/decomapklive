.class public Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/encoder/be$a;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private mEGLCore:Lcom/tencent/liteav/videobase/b/e;

.field private mInputSurface:Landroid/view/Surface;

.field private mNativeHandler:J

.field private final mNeedRestart:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field private mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

.field private mPreFrameTimeStamp:J

.field private mServerConfig:Lcom/tencent/liteav/videoproducer2/HWEncoderServerConfig;

.field private final mSessionStates:Landroid/os/Bundle;

.field private mSharedContext:Ljava/lang/Object;

.field private mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

.field private final mSurfaceSize:Lcom/tencent/liteav/base/util/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mTAG:Ljava/lang/String;

.field private final mThrottlers:Lcom/tencent/liteav/base/b/b;


# direct methods
.method public constructor <init>(JLcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceSize:Lcom/tencent/liteav/base/util/q;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mNeedRestart:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSessionStates:Landroid/os/Bundle;

    .line 5
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mPreFrameTimeStamp:J

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HardwareVideoEncoder2_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    .line 8
    iput-wide p1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mNativeHandler:J

    .line 9
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    return-void
.end method

.method private getServerVideoProducerConfig(Lcom/tencent/liteav/videoproducer2/HWEncoderServerConfig;)Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer2/HWEncoderServerConfig;->getHardwareEncodeType()I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->setHardwareEncodeType(I)V

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer2/HWEncoderServerConfig;->getHardwareEncoderHighProfileEnable()Z

    move-result v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->setHardwareEncoderHighProfileEnable(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer2/HWEncoderServerConfig;->getHardwareEncoderHighProfileSupport()Z

    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->setHardwareEncoderHighProfileSupport(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer2/HWEncoderServerConfig;->isHardwareEncoderBitrateModeCBRSupported()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->setHardwareEncoderBitrateModeCBRSupported(Z)V

    :cond_0
    return-object v0
.end method

.method private initOpenGLComponents(Ljava/lang/Object;Landroid/view/Surface;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string p2, "NoSurface"

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "init opengl: surface is null."

    invoke-static {p1, p2, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v2, "initGL"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "initOpenGLComponents"

    invoke-static {v1, v2, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    const/4 v2, 0x1

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceSize:Lcom/tencent/liteav/base/util/q;

    iget v4, v3, Lcom/tencent/liteav/base/util/q;->a:I

    iget v3, v3, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v1, p1, p2, v4, v3}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSharedContext:Ljava/lang/Object;

    .line 6
    new-instance p1, Lcom/tencent/liteav/videobase/frame/j;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceSize:Lcom/tencent/liteav/base/util/q;

    iget v0, p2, Lcom/tencent/liteav/base/util/q;->a:I

    iget p2, p2, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-direct {p1, v0, p2}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    return v2

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "VideoEncode: create EGLCore failed, EGLCode:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p1, Lcom/tencent/liteav/videobase/b/g;->mErrorCode:I

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/g;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v3, "initGLError"

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "create EGLCore failed. error = "

    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v3, p2, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->notifyStartEncodedFail()V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    return v0
.end method

.method private native nativeOnEncodedFail(J)V
.end method

.method private native nativeOnEncodedNAL(JLcom/tencent/liteav/videobase/common/EncodedVideoFrame;Ljava/nio/ByteBuffer;IIIIJJJJJJIIZI)V
.end method

.method private native nativeOnStartEncodedFail(J)V
.end method

.method private restart()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    const-string v1, "reStart"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->stop()V

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->start()Z

    move-result v0

    return v0
.end method

.method private start()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    aput-object v4, v3, v1

    const-string v4, "Start hw video encoder. %s"

    invoke-static {v0, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/w;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSessionStates:Landroid/os/Bundle;

    new-instance v4, Lcom/tencent/liteav/videobase/videobase/e;

    invoke-direct {v4}, Lcom/tencent/liteav/videobase/videobase/e;-><init>()V

    sget-object v5, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    invoke-direct {v0, v3, v4, v5}, Lcom/tencent/liteav/videoproducer/encoder/w;-><init>(Landroid/os/Bundle;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->a()V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mServerConfig:Lcom/tencent/liteav/videoproducer2/HWEncoderServerConfig;

    invoke-direct {p0, v3}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->getServerVideoProducerConfig(Lcom/tencent/liteav/videoproducer2/HWEncoderServerConfig;)Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-virtual {v0, v3, p0}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/be$a;)Landroid/util/Pair;

    move-result-object v0

    .line 8
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/view/Surface;

    iput-object v3, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mInputSurface:Landroid/view/Surface;

    .line 9
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceSize:Lcom/tencent/liteav/base/util/q;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v3, v0}, Lcom/tencent/liteav/base/util/q;->a(Lcom/tencent/liteav/base/util/q;)V

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mInputSurface:Landroid/view/Surface;

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->notifyStartEncodedFail()V

    return v1

    :cond_2
    return v2
.end method

.method private stop()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->uninitOpenGLComponents()V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mInputSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 4
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mInputSurface:Landroid/view/Surface;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->c()V

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->d()V

    .line 8
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

    :cond_1
    return-void
.end method

.method private uninitOpenGLComponents()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v1, "uninitGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "uninitOpenGLComponents"

    invoke-static {v0, v1, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 6
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v4, "unintGLError"

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const-string v1, "makeCurrent failed."

    invoke-static {v3, v4, v1, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v1}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 9
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method


# virtual methods
.method public encodeFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 7
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mNeedRestart:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->restart()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->start()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSharedContext:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->uninitOpenGLComponents()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mInputSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v2}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->initOpenGLComponents(Ljava/lang/Object;Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 8
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v2

    sget-object v3, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v2, v3, :cond_7

    .line 9
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v2

    sget-object v3, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v2, v3, :cond_5

    goto :goto_1

    .line 10
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    goto :goto_3

    .line 11
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    .line 12
    :goto_3
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceSize:Lcom/tencent/liteav/base/util/q;

    iget v3, v2, Lcom/tencent/liteav/base/util/q;->a:I

    iget v2, v2, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-static {v1, v1, v3, v2}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 13
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mPixelFrameRenderer:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v2, :cond_9

    .line 14
    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 15
    :cond_9
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(J)V

    .line 16
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mPreFrameTimeStamp:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_a

    .line 17
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "timestamp is not increase. pre: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mPreFrameTimeStamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", cur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_a
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mPreFrameTimeStamp:J

    .line 21
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/videobase/b/e;->a(J)V

    .line 22
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/e;->c()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VideoEncode: swapBuffer error, EGLCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget v3, p1, Lcom/tencent/liteav/videobase/b/g;->mErrorCode:I

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/g;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v4, "EncodeFrameError"

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "makeCurrent failed. error = "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v3, v4, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->notifyEncodedFail()V

    return-void
.end method

.method public declared-synchronized notifyEncodedFail()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->nativeOnEncodedFail(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyStartEncodedFail()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->nativeOnStartEncodedFail(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEncodeError(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onEncodeError: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->notifyEncodedFail()V

    return-void
.end method

.method public onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V
    .locals 28

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v2, v14, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mNativeHandler:J

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-eqz v7, :cond_2

    if-nez p2, :cond_2

    .line 2
    iget-object v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    iget-object v4, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    .line 3
    iget v7, v4, Lcom/tencent/liteav/videobase/common/a;->mValue:I

    .line 4
    iget-object v4, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->profileType:Lcom/tencent/liteav/videobase/common/b;

    .line 5
    iget v8, v4, Lcom/tencent/liteav/videobase/common/b;->mValue:I

    .line 6
    iget-object v4, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    .line 7
    iget v9, v4, Lcom/tencent/liteav/videobase/common/CodecType;->mValue:I

    .line 8
    iget v10, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->rotation:I

    iget-wide v11, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-wide v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    move-wide v15, v13

    iget-wide v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopFrameIndex:J

    move-wide/from16 v19, v13

    iget-wide v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    move-wide/from16 v21, v13

    iget-wide v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->refFrameIndex:J

    iget v4, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->width:I

    move-wide/from16 v23, v13

    iget v14, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->height:I

    iget-object v13, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    if-eqz v13, :cond_0

    const/16 v25, 0x1

    goto :goto_0

    :cond_0
    const/16 v25, 0x0

    :goto_0
    if-nez v13, :cond_1

    const/16 v26, 0x0

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v26, v1

    :goto_1
    move-object/from16 v1, p0

    move/from16 v27, v4

    move-object/from16 v4, p1

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-wide v10, v11

    move-wide v12, v15

    move v0, v14

    move-wide/from16 v14, v17

    move-wide/from16 v16, v19

    move-wide/from16 v18, v21

    move-wide/from16 v20, v23

    move/from16 v22, v27

    move/from16 v23, v0

    move/from16 v24, v25

    move/from16 v25, v26

    .line 10
    invoke-direct/range {v1 .. v25}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->nativeOnEncodedNAL(JLcom/tencent/liteav/videobase/common/EncodedVideoFrame;Ljava/nio/ByteBuffer;IIIIJJJJJJIIZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v4, p0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_2

    :cond_2
    move-object v4, v14

    .line 11
    :try_start_2
    iget-object v0, v4, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    const-string v5, "onEncodedNAL mNativeHandler=%d,isEos=%b"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v0, v5, v7}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v4, v14

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public onRequestRestart()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mNeedRestart:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onRpsFrameRateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mNativeHandler:J

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBitrate(I)V
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mTAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SetBitrate "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mParams:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iput p1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(I)V

    return-void
.end method

.method public setHWEncoderServerConfig(Lcom/tencent/liteav/videoproducer2/HWEncoderServerConfig;)V
    .locals 1
    .param p1    # Lcom/tencent/liteav/videoproducer2/HWEncoderServerConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mServerConfig:Lcom/tencent/liteav/videoproducer2/HWEncoderServerConfig;

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->getServerVideoProducerConfig(Lcom/tencent/liteav/videoproducer2/HWEncoderServerConfig;)Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    :cond_0
    return-void
.end method

.method public signalEndOfStream()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/HardwareVideoEncoder2;->mSurfaceInputVideoEncoder:Lcom/tencent/liteav/videoproducer/encoder/w;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->b()V

    :cond_0
    return-void
.end method
