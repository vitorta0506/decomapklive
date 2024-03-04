.class final Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$2;->a:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "CameraCaptureSingleton"

    const-string/jumbo v1, "switch to camera1 runnable."

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$2;->a:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->access$502(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)Z

    .line 3
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getAppBackgroundState()I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "not in Foreground"

    .line 4
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$2;->a:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->access$200(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$2;->a:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->access$400(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Lcom/tencent/liteav/base/util/j;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$2;->a:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    .line 7
    invoke-static {v1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->access$600(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
