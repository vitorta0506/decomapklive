.class public final Lcom/tencent/liteav/videoproducer/encoder/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/encoder/be;
.implements Lcom/tencent/liteav/videoproducer/encoder/be$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/tencent/liteav/base/util/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/tencent/liteav/videoproducer/encoder/w;

.field private final e:Lcom/tencent/liteav/base/b/b;

.field private f:Landroid/view/Surface;

.field private g:Lcom/tencent/liteav/videobase/b/e;

.field private h:Lcom/tencent/liteav/videobase/frame/j;

.field private i:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

.field private j:J

.field private volatile k:Landroid/os/Handler;

.field private volatile l:Lcom/tencent/liteav/videoproducer/encoder/be$a;

.field private m:Lcom/tencent/liteav/videobase/b/c;

.field private final n:Lcom/tencent/liteav/videobase/utils/k;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 2
    .param p2    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->c:Lcom/tencent/liteav/base/util/q;

    .line 3
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->e:Lcom/tencent/liteav/base/b/b;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->j:J

    .line 5
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/encoder/w;-><init>(Landroid/os/Bundle;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->d:Lcom/tencent/liteav/videoproducer/encoder/w;

    .line 6
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 7
    new-instance p1, Lcom/tencent/liteav/videobase/utils/k;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "hwEn"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/liteav/videobase/utils/k;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->n:Lcom/tencent/liteav/videobase/utils/k;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "HardwareVideoEncoder_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 6

    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->g:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->e:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v1, "uninitGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "uninitOpenGLComponents"

    invoke-static {v0, v1, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->g:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 19
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->h:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 21
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->h:Lcom/tencent/liteav/videobase/frame/j;

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->n:Lcom/tencent/liteav/videobase/utils/k;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/utils/k;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 23
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->e:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v4, "uninitError"

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    const-string v1, "makeCurrent failed."

    invoke-static {v3, v4, v1, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->g:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v1}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 25
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->g:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/o;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->l:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz p0, :cond_0

    .line 31
    invoke-interface {p0}, Lcom/tencent/liteav/videoproducer/encoder/be$a;->onRequestRestart()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/o;Landroid/media/MediaFormat;)V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->l:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz p0, :cond_0

    .line 35
    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/o;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->l:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz p0, :cond_0

    .line 37
    invoke-interface {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/o;Lcom/tencent/liteav/videobase/videobase/h$a;)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->l:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz p0, :cond_0

    .line 39
    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;->onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/encoder/o;Ljava/lang/String;)V
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->l:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz p0, :cond_0

    .line 33
    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/be$a;->onEncodeError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->k:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 28
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Object;Landroid/view/Surface;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->e:Lcom/tencent/liteav/base/b/b;

    const-string p2, "SurfaceNull"

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "init opengl: surface is null."

    invoke-static {p1, p2, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->e:Lcom/tencent/liteav/base/b/b;

    const-string v2, "initGL"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "initOpenGLComponents"

    invoke-static {v1, v2, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->g:Lcom/tencent/liteav/videobase/b/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    :try_start_0
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->c:Lcom/tencent/liteav/base/util/q;

    iget v5, v4, Lcom/tencent/liteav/base/util/q;->a:I

    iget v4, v4, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v1, p1, p2, v5, v4}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->n:Lcom/tencent/liteav/videobase/utils/k;

    invoke-virtual {p1, v2}, Lcom/tencent/liteav/videobase/utils/k;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->n:Lcom/tencent/liteav/videobase/utils/k;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->c:Lcom/tencent/liteav/base/util/q;

    iget v0, p2, Lcom/tencent/liteav/base/util/q;->a:I

    iget p2, p2, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {p1, v0, p2}, Lcom/tencent/liteav/videobase/utils/k;->a(II)V

    .line 7
    new-instance p1, Lcom/tencent/liteav/videobase/frame/j;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->c:Lcom/tencent/liteav/base/util/q;

    iget v0, p2, Lcom/tencent/liteav/base/util/q;->a:I

    iget p2, p2, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-direct {p1, v0, p2}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->h:Lcom/tencent/liteav/videobase/frame/j;

    return v3

    :catch_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->a:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VideoEncode: create EGLCore failed, EGLCode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v5, p1, Lcom/tencent/liteav/videobase/b/g;->mErrorCode:I

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/g;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    .line 12
    invoke-interface {p2, v1, v4, v5}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->d:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/g;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->e:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initError"

    invoke-virtual {p2, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p2

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string p1, "create EGLCore failed."

    invoke-static {p2, v1, p1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->g:Lcom/tencent/liteav/videobase/b/e;

    return v0
.end method


# virtual methods
.method public final ackRPSRecvFrameIndex(II)V
    .locals 0

    return-void
.end method

.method public final encodeFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->m:Lcom/tencent/liteav/videobase/b/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 2
    :cond_1
    iget-object v4, v0, Lcom/tencent/liteav/videobase/b/c;->c:Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    .line 3
    iput-object v1, v0, Lcom/tencent/liteav/videobase/b/c;->c:Ljava/lang/Object;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/o;->a()V

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->g:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->f:Landroid/view/Surface;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/o;->a(Ljava/lang/Object;Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 6
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->g:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->n:Lcom/tencent/liteav/videobase/utils/k;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/utils/k;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 8
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v0, v1, :cond_7

    .line 9
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v0, v1, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    goto :goto_5

    .line 11
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    .line 12
    :goto_5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->c:Lcom/tencent/liteav/base/util/q;

    iget v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-static {v3, v3, v1, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->glViewport(IIII)V

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->h:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v0, :cond_9

    .line 14
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v1, v4}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 15
    :cond_9
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->d:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(J)V

    .line 16
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->j:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_a

    .line 17
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "timestamp is not increase. pre: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->j:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", cur: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_a
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->j:J

    .line 21
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->g:Lcom/tencent/liteav/videobase/b/e;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tencent/liteav/videobase/b/e;->a(J)V

    .line 22
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->g:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/e;->c()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$c;->d:Lcom/tencent/liteav/videobase/videobase/h$c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VideoEncode: swapBuffer error, EGLCode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget v5, p1, Lcom/tencent/liteav/videobase/b/g;->mErrorCode:I

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/g;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 27
    invoke-interface {v0, v1, v4, v5}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyWarning(Lcom/tencent/liteav/videobase/videobase/h$c;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->d:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/g;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->e:Lcom/tencent/liteav/base/b/b;

    const-string v1, "EGLError"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string p1, "makeCurrent failed."

    invoke-static {v0, v1, p1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getEncodeParams()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;
    .locals 2

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->i:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    return-object v0
.end method

.method public final getEncoderType()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;
    .locals 1

    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$a;

    return-object v0
.end method

.method public final initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->k:Landroid/os/Handler;

    .line 4
    new-instance v0, Lcom/tencent/liteav/videobase/b/c;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->k:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videobase/b/c;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->m:Lcom/tencent/liteav/videobase/b/c;

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->d:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->a()V

    return-void
.end method

.method public final onEncodeError(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/q;->a(Lcom/tencent/liteav/videoproducer/encoder/o;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/t;->a(Lcom/tencent/liteav/videoproducer/encoder/o;Lcom/tencent/liteav/videobase/videobase/h$a;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/s;->a(Lcom/tencent/liteav/videoproducer/encoder/o;Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/r;->a(Lcom/tencent/liteav/videoproducer/encoder/o;Landroid/media/MediaFormat;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onRequestRestart()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/p;->a(Lcom/tencent/liteav/videoproducer/encoder/o;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/encoder/o;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onRpsFrameRateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public final restartIDRFrame()V
    .locals 0

    return-void
.end method

.method public final setBitrate(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SetBitrate "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->i:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->bitrate:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->d:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(I)V

    return-void
.end method

.method public final setFps(I)V
    .locals 0

    return-void
.end method

.method public final setRPSIFrameFPS(I)V
    .locals 0

    return-void
.end method

.method public final setRPSNearestREFSize(I)V
    .locals 0

    return-void
.end method

.method public final setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->d:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    return-void
.end method

.method public final signalEndOfStream()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->d:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->b()V

    return-void
.end method

.method public final start(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/be$a;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->f:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    const-string p2, "Encoder has started"

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v4, "Start hw video encoder. %s"

    invoke-static {v0, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->l:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    .line 5
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->d:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-virtual {p2, p1, p0}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/be$a;)Landroid/util/Pair;

    move-result-object p2

    .line 6
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->f:Landroid/view/Surface;

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->c:Lcom/tencent/liteav/base/util/q;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/base/util/q;->a(Lcom/tencent/liteav/base/util/q;)V

    .line 8
    new-instance p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-direct {p2, p1}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;-><init>(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->i:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    .line 9
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->f:Landroid/view/Surface;

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/o;->a()V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->f:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 5
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->f:Landroid/view/Surface;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->d:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->c()V

    .line 7
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->l:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    return-void
.end method

.method public final takeSnapshot(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->n:Lcom/tencent/liteav/videobase/utils/k;

    .line 2
    iput-object p1, v0, Lcom/tencent/liteav/videobase/utils/k;->a:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    return-void
.end method

.method public final uninitialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->a:Ljava/lang/String;

    const-string/jumbo v1, "uninitialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->d:Lcom/tencent/liteav/videoproducer/encoder/w;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->d()V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->m:Lcom/tencent/liteav/videobase/b/c;

    .line 4
    iget-object v1, v0, Lcom/tencent/liteav/videobase/b/c;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/d;->a(Lcom/tencent/liteav/videobase/b/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/o;->k:Landroid/os/Handler;

    return-void
.end method
