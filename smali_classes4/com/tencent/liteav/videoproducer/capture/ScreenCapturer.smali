.class public final Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;
.super Lcom/tencent/liteav/videoproducer/capture/av;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/tencent/liteav/base/util/v$a;
.implements Lcom/tencent/liteav/videoproducer/capture/bi$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;
    }
.end annotation


# instance fields
.field private A:Z

.field protected f:Lcom/tencent/liteav/videobase/frame/l;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Lcom/tencent/liteav/base/util/CustomHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private j:I

.field private k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

.field private p:I

.field private q:Landroid/graphics/SurfaceTexture;

.field private r:Landroid/view/Surface;

.field private s:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private t:Lcom/tencent/liteav/videobase/frame/j;

.field private u:Z

.field private v:Lcom/tencent/liteav/videobase/utils/g;

.field private w:Lcom/tencent/liteav/base/util/v;

.field private x:Z

.field private y:Landroid/media/projection/MediaProjection;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/tencent/liteav/videoproducer/capture/av;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    const/16 p2, 0x2d0

    .line 2
    iput p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    const/16 p2, 0x438

    .line 3
    iput p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:I

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Z

    .line 6
    iput-boolean p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->x:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->z:Z

    .line 8
    iput-boolean p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->A:Z

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Landroid/content/Context;

    .line 10
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 11
    new-instance p2, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 12
    invoke-static {p1}, Lcom/tencent/liteav/base/util/t;->a(Landroid/content/Context;)Lcom/tencent/liteav/base/util/q;

    move-result-object p2

    .line 13
    iget p3, p2, Lcom/tencent/liteav/base/util/q;->a:I

    iput p3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->l:I

    .line 14
    iget p2, p2, Lcom/tencent/liteav/base/util/q;->b:I

    iput p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    .line 15
    invoke-static {p1}, Lcom/tencent/liteav/base/util/t;->b(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    .line 16
    iput p3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    .line 17
    iput p2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)V
    .locals 3

    const-string v0, "ScreenCapturer"

    const-string v1, "capture error"

    .line 33
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCaptureError()V

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$b;->n:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "screen capture has been interrupted"

    invoke-interface {p0, v0, v2, v1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ScreenCapturer"

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    aput-object p1, p0, v2

    const-string/jumbo p1, "updateParams %s is the same "

    .line 15
    invoke-static {v3, p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    const-string/jumbo v1, "updateParams change from %s to %s"

    invoke-static {v3, v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    check-cast p1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    .line 18
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_1

    const-string p0, "capturer not started"

    .line 19
    invoke-static {v3, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_1
    iget-object p1, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->f:Landroid/media/projection/MediaProjection;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->y:Landroid/media/projection/MediaProjection;

    .line 21
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i()V

    .line 22
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ScreenCapturer"

    const-string v2, "display orientation changed, isPortrait: %b"

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->a:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i()V

    .line 40
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f()V

    .line 41
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    if-eqz p0, :cond_0

    .line 42
    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onScreenDisplayOrientationChanged(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;ZZ)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 25
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "ScreenCapturer"

    const-string v4, "on Start finish, success: %b, isPermissionDenied: %b"

    .line 26
    invoke-static {v1, v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Z)V

    if-eqz p1, :cond_0

    .line 28
    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->x:Z

    if-nez p1, :cond_2

    .line 29
    iput-boolean v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->x:Z

    .line 30
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$b;->l:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start screen capture success params:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, p0, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 31
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$a;->f:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "permission denied, Start screen capture failed, params:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, p0, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object p2, Lcom/tencent/liteav/videobase/videobase/h$a;->e:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start screen capture failed, params:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, p0, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/utils/g;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget v1, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videobase/utils/g;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->v:Lcom/tencent/liteav/videobase/utils/g;

    .line 10
    new-instance v0, Lcom/tencent/liteav/base/util/v;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/av;->a:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tencent/liteav/base/util/v;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/v$a;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->w:Lcom/tencent/liteav/base/util/v;

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/v;->a(II)V

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 13
    new-instance v0, Lcom/tencent/liteav/videobase/frame/j;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->t:Lcom/tencent/liteav/videobase/frame/j;

    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)V
    .locals 5

    const-string v0, "ScreenCapturer"

    const-string v1, "resume capture"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v2, Lcom/tencent/liteav/videobase/videobase/h$b;->o:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "screen capture has been resumed"

    invoke-interface {v0, v2, v4, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Z

    .line 5
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->v:Lcom/tencent/liteav/videobase/utils/g;

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/utils/g;->a()V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)V
    .locals 4

    const-string v0, "ScreenCapturer"

    const-string v1, "pause capture"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->n:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "screen capture has been interrupted"

    invoke-interface {v0, v1, v3, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Z

    return-void
.end method

.method private f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/liteav/videobase/frame/l;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/l;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    .line 3
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    if-nez v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget v1, v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    .line 5
    iget v0, v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->a:Z

    if-eqz v0, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h()V

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g()V

    .line 9
    :goto_0
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->generateTextureOES()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:I

    .line 10
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/graphics/SurfaceTexture;

    .line 11
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 13
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->r:Landroid/view/Surface;

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/bi;->a(Landroid/content/Context;)Lcom/tencent/liteav/videoproducer/capture/bi;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->r:Landroid/view/Surface;

    iget v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    iget v4, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->y:Landroid/media/projection/MediaProjection;

    move-object v6, p0

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/liteav/videoproducer/capture/bi;->a(Landroid/view/Surface;IILandroid/media/projection/MediaProjection;Lcom/tencent/liteav/videoproducer/capture/bi$b;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 16
    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ScreenCapturer"

    const-string v2, "Start virtual display, size: %dx%d"

    .line 18
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->s:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 20
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    .line 21
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->s:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->s:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTextureId(I)V

    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->s:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    .line 24
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->s:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    .line 25
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->s:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    const/16 v1, 0x10

    new-array v1, v1, [F

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMatrix([F)V

    return-void
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget v1, v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iget v0, v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    iget v4, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    if-le v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eq v0, v2, :cond_2

    .line 3
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0, v1, v4}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    .line 4
    iget v1, v0, Lcom/tencent/liteav/base/util/q;->b:I

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    .line 5
    iget v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Change device screen  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/tencent/liteav/base/util/q;

    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    iget v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    invoke-direct {v0, v2, v3}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenCapturer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/base/util/t;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 2
    :goto_1
    iget v5, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    if-eqz v5, :cond_2

    if-ne v5, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eq v4, v1, :cond_4

    .line 3
    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    .line 4
    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->l:I

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    goto :goto_2

    .line 5
    :cond_4
    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->l:I

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    .line 6
    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    .line 7
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDeviceScreenSize original screen width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->m:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rotation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->n:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " final width:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenCapturer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->y:Landroid/media/projection/MediaProjection;

    .line 2
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/videoproducer/capture/bi;->a(Landroid/content/Context;)Lcom/tencent/liteav/videoproducer/capture/bi;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->r:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videoproducer/capture/bi;->a(Landroid/view/Surface;)V

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->r:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->r:Landroid/view/Surface;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/av;->c()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "ScreenCapturer"

    const-string v1, "makeCurrent error!"

    .line 7
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/av;->d()V

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/h;->b()V

    .line 11
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->t:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 14
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->t:Lcom/tencent/liteav/videobase/frame/j;

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 17
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 18
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/graphics/SurfaceTexture;

    .line 19
    :cond_4
    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:I

    invoke-static {v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    const/4 v1, -0x1

    .line 20
    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:I

    .line 21
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->w:Lcom/tencent/liteav/base/util/v;

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {v1}, Lcom/tencent/liteav/base/util/v;->a()V

    .line 23
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->w:Lcom/tencent/liteav/base/util/v;

    :cond_5
    return-void
.end method


# virtual methods
.method protected final a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->z:Z

    const/4 v1, 0x1

    const-string v2, "ScreenCapturer"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "Start capture %s, capturer already started"

    .line 2
    invoke-static {v2, p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->c:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "Start capture %s, mEGLCore is null"

    .line 4
    invoke-static {v2, p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, v3}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Z)V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string v1, "Start capture %s"

    .line 6
    invoke-static {v2, v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    check-cast p1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    .line 8
    iget-object p1, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->f:Landroid/media/projection/MediaProjection;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->y:Landroid/media/projection/MediaProjection;

    .line 9
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/av;->c()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/h$a;->e:Lcom/tencent/liteav/videobase/videobase/h$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start screen capture failed, params:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyError(Lcom/tencent/liteav/videobase/videobase/h$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v3}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Z)V

    return-void

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f()V

    .line 13
    iput-boolean v3, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->z:Z

    return-void
.end method

.method public final a(ZZ)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/bf;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;ZZ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final b()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->z:Z

    const-string v1, "ScreenCapturer"

    if-eqz v0, :cond_0

    const-string v0, "Stop capture, capturer already stopped"

    .line 2
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Stop capture"

    .line 3
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->i()V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->m:Lcom/tencent/liteav/videobase/videobase/h$b;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Stop screen capture success"

    invoke-interface {v0, v1, v4, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->z:Z

    .line 7
    iput-boolean v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->A:Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/bh;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/bg;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/be;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTimeout()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->u:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/av;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/av;->d()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->v:Lcom/tencent/liteav/videobase/utils/g;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 6
    iget v3, v0, Lcom/tencent/liteav/videobase/utils/g;->a:I

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 7
    :cond_3
    iget-wide v10, v0, Lcom/tencent/liteav/videobase/utils/g;->b:J

    cmp-long v12, v10, v6

    if-eqz v12, :cond_2

    sub-long/2addr v1, v10

    iget-wide v10, v0, Lcom/tencent/liteav/videobase/utils/g;->c:J

    add-long/2addr v10, v4

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    int-to-long v12, v3

    div-long/2addr v10, v12

    cmp-long v0, v1, v10

    if-ltz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    return-void

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->v:Lcom/tencent/liteav/videobase/utils/g;

    .line 9
    iget-wide v1, v0, Lcom/tencent/liteav/videobase/utils/g;->b:J

    cmp-long v3, v1, v6

    if-nez v3, :cond_6

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/utils/g;->b:J

    .line 11
    :cond_6
    iget-wide v1, v0, Lcom/tencent/liteav/videobase/utils/g;->c:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Lcom/tencent/liteav/videobase/utils/g;->c:J

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    const-string v1, "ScreenCapturer"

    if-eqz v0, :cond_10

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/av;->c:Lcom/tencent/liteav/videobase/b/e;

    if-nez v2, :cond_7

    goto/16 :goto_4

    :cond_7
    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/h;->a()Lcom/tencent/liteav/videobase/frame/k;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/frame/l$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_2

    :catch_0
    const-string/jumbo v0, "textureholderpool obtain interrupted."

    .line 14
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->e:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->e:Landroid/graphics/Rect;

    .line 17
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v4

    mul-float v5, v5, v3

    iget v6, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    int-to-float v7, v6

    div-float/2addr v5, v7

    .line 18
    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float v7, v7, v3

    iget v10, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    int-to-float v10, v10

    div-float/2addr v7, v10

    sub-int/2addr v6, v4

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 20
    iget v6, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v4, v4

    mul-float v4, v4, v3

    .line 21
    iget v6, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    int-to-float v0, v0

    mul-float v0, v0, v3

    .line 22
    iget v6, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    goto :goto_3

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_3
    const v6, 0x8d65

    .line 23
    iget v10, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->p:I

    iget v11, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->j:I

    iget v12, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->k:I

    invoke-virtual {v2, v6, v10, v11, v12}, Lcom/tencent/liteav/videobase/frame/l$b;->a(IIII)V

    .line 24
    iget-object v6, p0, Lcom/tencent/liteav/videoproducer/capture/av;->c:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v6}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/liteav/videobase/frame/l$b;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v6

    .line 25
    invoke-virtual {v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v10

    if-nez v10, :cond_9

    const/16 v10, 0x10

    new-array v10, v10, [F

    .line 26
    invoke-virtual {v6, v10}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMatrix([F)V

    .line 27
    :cond_9
    iget-object v10, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v10}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 28
    iget-object v10, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 29
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->c()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    .line 30
    invoke-static {v5, v1}, Lcom/tencent/liteav/videobase/utils/e;->a(FF)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {v7, v1}, Lcom/tencent/liteav/videobase/utils/e;->a(FF)Z

    move-result v10

    if-nez v10, :cond_b

    .line 31
    :cond_a
    invoke-virtual {v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v10

    invoke-static {v10, v8, v5, v7, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 32
    :cond_b
    invoke-static {v4, v3}, Lcom/tencent/liteav/videobase/utils/e;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0, v3}, Lcom/tencent/liteav/videobase/utils/e;->a(FF)Z

    move-result v1

    if-nez v1, :cond_d

    .line 33
    :cond_c
    invoke-virtual {v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v1

    invoke-static {v1, v8, v4, v0, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 34
    :cond_d
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    if-eqz v0, :cond_f

    .line 35
    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->A:Z

    if-nez v1, :cond_e

    .line 36
    iput-boolean v9, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->A:Z

    .line 37
    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCaptureFirstFrame()V

    .line 38
    :cond_e
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/av;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    invoke-interface {v0, p0, v6}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onFrameAvailable(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 39
    :cond_f
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 40
    invoke-virtual {v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    .line 41
    :cond_10
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onScreenFrameAvailable mTextureHolderPool = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->f:Lcom/tencent/liteav/videobase/frame/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureParams = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;->o:Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mEGLCore = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/av;->c:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_5
    return-void
.end method

.method public final pause()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/bc;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resume()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/bd;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/ba;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/av;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/bb;->a(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/av;->a(Ljava/lang/Runnable;)V

    return-void
.end method
