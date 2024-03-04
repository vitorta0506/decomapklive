.class public final Lcom/tencent/liteav/videoproducer/capture/al;
.super Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/capture/al$a;
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

.field private b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

.field private c:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

.field private d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

.field private e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

.field private final f:Landroid/os/Looper;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field private i:Ljava/lang/Object;

.field private j:Z

.field private final k:Lcom/tencent/liteav/base/util/CustomHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private l:Lcom/tencent/liteav/videoproducer/capture/al$a;

.field private m:Z

.field private final n:Lcom/tencent/liteav/videobase/utils/f;

.field private final o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 2
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
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->j:Z

    .line 3
    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/al$a;->a:Lcom/tencent/liteav/videoproducer/capture/al$a;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->m:Z

    .line 5
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/al$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/al$1;-><init>(Lcom/tencent/liteav/videoproducer/capture/al;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->g:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/al;->f:Landroid/os/Looper;

    .line 8
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/capture/al;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 9
    new-instance p1, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-direct {p1, p2}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->k:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 10
    new-instance p1, Lcom/tencent/liteav/videobase/utils/f;

    .line 11
    new-instance p2, Lcom/tencent/liteav/videoproducer/capture/am;

    invoke-direct {p2, p0}, Lcom/tencent/liteav/videoproducer/capture/am;-><init>(Lcom/tencent/liteav/videoproducer/capture/al;)V

    const-string p3, "CaptureController"

    const/16 v0, 0x3e8

    .line 12
    invoke-direct {p1, p3, v0, p2}, Lcom/tencent/liteav/videobase/utils/f;-><init>(Ljava/lang/String;ILcom/tencent/liteav/videobase/utils/f$a;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->n:Lcom/tencent/liteav/videobase/utils/f;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/al;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/al$a;->a:Lcom/tencent/liteav/videoproducer/capture/al$a;

    if-ne v0, v1, :cond_0

    const-string p0, "CaptureController"

    const-string v0, "Stop capture but mStatus is stoped"

    .line 28
    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    .line 30
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->stop()V

    .line 32
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/av;->stop()V

    .line 35
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    :cond_2
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->m:Z

    .line 37
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->n:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/al;D)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/i;->b:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/al;Landroid/graphics/Bitmap;III)V
    .locals 1

    .line 4
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->c:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    .line 5
    iput-object p1, v0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;->a:Landroid/graphics/Bitmap;

    .line 6
    iput p2, v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    .line 7
    iput p3, v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    .line 8
    iput p4, v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    .line 9
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/av;->stop()V

    .line 11
    :cond_0
    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/al;->f:Landroid/os/Looper;

    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/capture/al;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {p1, p2, p3}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/al;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    .line 40
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    sget-object v2, Lcom/tencent/liteav/videoproducer/capture/al$a;->b:Lcom/tencent/liteav/videoproducer/capture/al$a;

    if-ne v1, v2, :cond_1

    .line 41
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    return-void

    .line 42
    :cond_1
    sget-object v2, Lcom/tencent/liteav/videoproducer/capture/al$a;->c:Lcom/tencent/liteav/videoproducer/capture/al$a;

    if-ne v1, v2, :cond_2

    .line 43
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    .line 44
    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    if-eqz p1, :cond_2

    .line 45
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;->updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/al;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;Ljava/lang/Object;)V
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/al$a;->a:Lcom/tencent/liteav/videoproducer/capture/al$a;

    const-string v2, "CaptureController"

    if-eq v0, v1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Start capture but mStatus is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->n:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    .line 16
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/al$a;->b:Lcom/tencent/liteav/videoproducer/capture/al$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    .line 17
    instance-of v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/t;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/al;->f:Landroid/os/Looper;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/capture/t;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    goto :goto_0

    .line 19
    :cond_1
    instance-of v0, p1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    if-eqz v0, :cond_2

    .line 20
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/al;->f:Landroid/os/Looper;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/al;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    goto :goto_0

    :cond_2
    const-string v0, "initCaptureSource\uff1a param is VirtualCameraParams"

    .line 21
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_0
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/al;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    .line 23
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    .line 24
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/capture/al;->i:Ljava/lang/Object;

    .line 25
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/al;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz p2, :cond_3

    .line 26
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    invoke-virtual {p2, p3, p1, p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/capture/al;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/al$a;->c:Lcom/tencent/liteav/videoproducer/capture/al$a;

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resume capture but mStatus is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CaptureController"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/al$a;->b:Lcom/tencent/liteav/videoproducer/capture/al$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/av;->stop()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->resume()V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/capture/al;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/al$a;->b:Lcom/tencent/liteav/videoproducer/capture/al$a;

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pause capture but mStatus is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CaptureController"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/al$a;->c:Lcom/tencent/liteav/videoproducer/capture/al$a;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->l:Lcom/tencent/liteav/videoproducer/capture/al$a;

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->pause()V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->j:Z

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->c:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 8
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/al;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget v3, v2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iget v2, v2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/tencent/liteav/videoproducer/capture/al;->a(Landroid/graphics/Bitmap;III)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->f:Landroid/os/Looper;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/al;->h:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->b:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    if-eqz v0, :cond_4

    .line 11
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->i:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/al;->c:Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->o:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/liteav/videoproducer/capture/av;->start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    return-void

    .line 12
    :cond_3
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->n:Lcom/tencent/liteav/videobase/utils/f;

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/utils/f;->b()V

    :cond_4
    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/liteav/videoproducer/capture/al;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->m:Z

    return p0
.end method

.method static synthetic f(Lcom/tencent/liteav/videoproducer/capture/al;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->m:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videobase/utils/f;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->n:Lcom/tencent/liteav/videobase/utils/f;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;III)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVirtualCameraParams fps = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureController"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, p2, p4, p3}, Lcom/tencent/liteav/videoproducer/capture/an;->a(Lcom/tencent/liteav/videoproducer/capture/al;Landroid/graphics/Bitmap;III)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/al;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/al;->k:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 47
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->k:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final pause()V
    .locals 2

    const-string v0, "CaptureController"

    const-string v1, "pause"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/ap;->a(Lcom/tencent/liteav/videoproducer/capture/al;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/al;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resume()V
    .locals 2

    const-string v0, "CaptureController"

    const-string v1, "resume"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/aq;->a(Lcom/tencent/liteav/videoproducer/capture/al;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/al;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setCaptureCloudConfig(Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;)V
    .locals 0

    return-void
.end method

.method public final start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start params = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", glContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureController"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p2, p3, p1}, Lcom/tencent/liteav/videoproducer/capture/ao;->a(Lcom/tencent/liteav/videoproducer/capture/al;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/al;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    const-string v0, "CaptureController"

    const-string v1, "Stop"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/ar;->a(Lcom/tencent/liteav/videoproducer/capture/al;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/al;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/as;->a(Lcom/tencent/liteav/videoproducer/capture/al;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/al;->a(Ljava/lang/Runnable;)V

    return-void
.end method
