.class public abstract Lcom/tencent/liteav/videoproducer/capture/av;
.super Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/tencent/liteav/base/util/CustomHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected c:Lcom/tencent/liteav/videobase/b/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

.field protected e:Lcom/tencent/liteav/videobase/frame/e;

.field private final f:Lcom/tencent/liteav/base/b/b;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 1
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->f:Lcom/tencent/liteav/base/b/b;

    .line 3
    new-instance v0, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 4
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/av;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/av;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->c:Lcom/tencent/liteav/videobase/b/e;

    const-string v1, "GLCapturerSource"

    if-eqz v0, :cond_0

    const-string p0, "capture source has already started!"

    .line 2
    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/av;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    .line 4
    new-instance p1, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/av;->c:Lcom/tencent/liteav/videobase/b/e;

    const/16 v0, 0x80

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1, p2, v2, v0, v0}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/av;->c:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 7
    new-instance p1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/av;->e:Lcom/tencent/liteav/videobase/frame/e;
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "initializeEGL failed."

    .line 8
    invoke-static {v1, p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/av;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$a;->b:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "create EGLCore failed, errorCode:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget p1, p1, Lcom/tencent/liteav/videobase/b/g;->mErrorCode:I

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-interface {p2, v0, p1, v1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/av;->c:Lcom/tencent/liteav/videobase/b/e;

    .line 14
    :goto_0
    invoke-virtual {p0, p3}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 15
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/av;->b()V

    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->c:Lcom/tencent/liteav/videobase/b/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 17
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 18
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->e:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 20
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/av;->e:Lcom/tencent/liteav/videobase/frame/e;
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/av;->f:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v3, "unintError"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "GLCapturerSource"

    const-string v4, "EGLCore destroy failed."

    invoke-static {v2, v0, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->c:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 23
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/av;->c:Lcom/tencent/liteav/videobase/b/e;

    .line 24
    :cond_1
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/av;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    return-void
.end method

.method protected abstract a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 26
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final a(Z)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onStartFinish(Z)V

    :cond_0
    return-void
.end method

.method protected abstract b()V
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final c()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->c:Lcom/tencent/liteav/videobase/b/e;

    const-string v1, "GLCapturerSource"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->f:Lcom/tencent/liteav/base/b/b;

    const-string v3, "makeCurrentNull"

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "makeCurrent on mEGLCore is null"

    invoke-static {v0, v1, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    const/4 v3, 0x1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 4
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/av;->f:Lcom/tencent/liteav/base/b/b;

    const-string v5, "makeCurrentError"

    invoke-virtual {v4, v5}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v5, "make current failed."

    invoke-static {v4, v1, v5, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/av;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/h$a;->c:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OpenGL report error, errorCode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v0, v0, Lcom/tencent/liteav/videobase/b/g;->mErrorCode:I

    .line 7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    .line 8
    invoke-interface {v1, v3, v0, v4}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method protected final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCaptureError()V

    :cond_0
    return-void
.end method

.method public setCaptureCloudConfig(Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;)V
    .locals 0

    return-void
.end method

.method public start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V
    .locals 0

    invoke-static {p0, p3, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/aw;->a(Lcom/tencent/liteav/videoproducer/capture/av;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/ax;->a(Lcom/tencent/liteav/videoproducer/capture/av;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Ljava/lang/Runnable;)V

    return-void
.end method
