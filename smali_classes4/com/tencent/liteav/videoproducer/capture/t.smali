.class public final Lcom/tencent/liteav/videoproducer/capture/t;
.super Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field private c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

.field private final h:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Landroid/os/Looper;)V
    .locals 1
    .param p1    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->d:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->e:Z

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->f:Z

    .line 5
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/t$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/t$1;-><init>(Lcom/tencent/liteav/videoproducer/capture/t;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->h:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    .line 6
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/t;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 7
    new-instance p1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {p1, p2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/t;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->setCaptureCloudConfig(Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/t;)V
    .locals 2

    .line 19
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->d:Z

    .line 21
    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/t;->e:Z

    if-eqz v1, :cond_1

    .line 22
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->e:Z

    .line 23
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/t;->g:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    .line 24
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->g:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    return-void

    .line 25
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->resume()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/t;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    check-cast p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->g:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    .line 15
    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/t;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/t;->e:Z

    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->g:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    .line 18
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->g:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/t;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->d:Z

    .line 10
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    check-cast p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->g:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    .line 11
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/t;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    .line 12
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/t;->g:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->h:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    invoke-virtual {p1, p3, p2, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    .line 13
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->g:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/t;Z)V
    .locals 6

    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    if-eqz v0, :cond_1

    .line 28
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getCameraAPIType()Lcom/tencent/liteav/videoproducer/capture/aj$a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, " params:"

    const-string v3, "cameraAPIType "

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/t;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v4, Lcom/tencent/liteav/videobase/videobase/h$b;->k:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->g:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, v4, p0, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/t;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v4, Lcom/tencent/liteav/videobase/videobase/h$a;->d:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->g:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, v4, p0, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 5
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->isAutoFocusEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Lcom/tencent/liteav/videobase/utils/Rotation;
    .locals 1

    .line 3
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getCameraRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(F)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->setPercentOfMaxZoomLevel(F)V

    return-void
.end method

.method static synthetic b(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->startAutoFocusAtPosition(II)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/capture/t;)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->d:Z

    .line 6
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->pause()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/capture/t;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    .line 2
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/t;->h:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->removeListener(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->d:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->e:Z

    .line 5
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->f:Z

    .line 6
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->stop()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/capture/t;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/liteav/videoproducer/capture/t;)Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/liteav/videoproducer/capture/t;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->d:Z

    return p0
.end method

.method static synthetic g(Lcom/tencent/liteav/videoproducer/capture/t;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->f:Z

    return p0
.end method

.method static synthetic h(Lcom/tencent/liteav/videoproducer/capture/t;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->f:Z

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setZoom: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCapturer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/x;->a(F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 6
    invoke-static {p1, p2}, Lcom/tencent/liteav/videoproducer/capture/w;->a(II)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/t;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final pause()V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string v1, "pause"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/ab;->a(Lcom/tencent/liteav/videoproducer/capture/t;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resume()V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string v1, "resume"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/u;->a(Lcom/tencent/liteav/videoproducer/capture/t;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setCaptureCloudConfig(Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/v;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string v1, "Start: "

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p2, p3, p1}, Lcom/tencent/liteav/videoproducer/capture/y;->a(Lcom/tencent/liteav/videoproducer/capture/t;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string v1, "Stop"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/z;->a(Lcom/tencent/liteav/videoproducer/capture/t;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string/jumbo v1, "updateParams"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/aa;->a(Lcom/tencent/liteav/videoproducer/capture/t;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method
