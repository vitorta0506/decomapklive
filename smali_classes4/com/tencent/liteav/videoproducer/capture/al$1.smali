.class final Lcom/tencent/liteav/videoproducer/capture/al$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/capture/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoproducer/capture/al;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer/capture/al;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/al$1;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/al;->g(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videobase/utils/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/utils/f;->a()V

    return-void
.end method


# virtual methods
.method public final onCameraTouchEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/al;->d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/al;->d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCameraTouchEnable(Z)V

    :cond_0
    return-void
.end method

.method public final onCameraZoomEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/al;->d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/al;->d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCameraZoomEnable(Z)V

    :cond_0
    return-void
.end method

.method public final onCaptureError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/al;->d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/al;->d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onCaptureError()V

    :cond_0
    return-void
.end method

.method public final onCaptureFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onFrameAvailable(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/al;->e(Lcom/tencent/liteav/videoproducer/capture/al;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/al;->f(Lcom/tencent/liteav/videoproducer/capture/al;)Z

    const-string p1, "CaptureController"

    const-string v0, "CaptureController received first frame."

    .line 3
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/at;->a(Lcom/tencent/liteav/videoproducer/capture/al$1;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoproducer/capture/al;->a(Ljava/lang/Runnable;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/al;->d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/al;->d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-interface {p1, v0, p2}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onFrameAvailable(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    :cond_2
    return-void
.end method

.method public final onScreenDisplayOrientationChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/al;->d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/al;->d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onScreenDisplayOrientationChanged(Z)V

    :cond_0
    return-void
.end method

.method public final onStartFinish(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/al;->d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/al$1;->a:Lcom/tencent/liteav/videoproducer/capture/al;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/al;->d(Lcom/tencent/liteav/videoproducer/capture/al;)Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;->onStartFinish(Z)V

    :cond_0
    return-void
.end method
