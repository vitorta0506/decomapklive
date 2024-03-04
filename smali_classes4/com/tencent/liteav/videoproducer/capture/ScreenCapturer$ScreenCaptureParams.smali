.class public Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;
.super Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenCaptureParams"
.end annotation


# instance fields
.field public a:Z

.field public f:Landroid/media/projection/MediaProjection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    .line 3
    iget-boolean v0, p1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->a:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->a:Z

    .line 4
    iget-object p1, p1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->f:Landroid/media/projection/MediaProjection;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->f:Landroid/media/projection/MediaProjection;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    .line 3
    invoke-super {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->a:Z

    iget-boolean v2, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->a:Z

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->f:Landroid/media/projection/MediaProjection;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->f:Landroid/media/projection/MediaProjection;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-super {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;->f:Landroid/media/projection/MediaProjection;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "%s, autoRotate: %b, mediaProjcetion: %s"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
