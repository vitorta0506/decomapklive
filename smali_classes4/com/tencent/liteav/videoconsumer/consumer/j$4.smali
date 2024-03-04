.class final Lcom/tencent/liteav/videoconsumer/consumer/j$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoconsumer/consumer/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoconsumer/consumer/j;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoconsumer/consumer/j;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$4;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAbandonDecodingFramesCompleted()V
    .locals 0

    return-void
.end method

.method public final onDecodeCompleted()V
    .locals 0

    return-void
.end method

.method public final onDecodeFailed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$4;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/consumer/ad;->a(Lcom/tencent/liteav/videoconsumer/consumer/j$4;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/consumer/j;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final onDecodeFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p2, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$4;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    .line 2
    iget-object p3, p2, Lcom/tencent/liteav/videoconsumer/consumer/j;->p:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    .line 3
    sget-object v0, Lcom/tencent/liteav/videoconsumer/consumer/j$a;->b:Lcom/tencent/liteav/videoconsumer/consumer/j$a;

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p2, Lcom/tencent/liteav/videoconsumer/consumer/j;->x:Lcom/tencent/liteav/videobase/utils/j;

    .line 5
    invoke-virtual {p2, p1}, Lcom/tencent/liteav/videobase/utils/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$4;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    .line 7
    iget-object p2, p1, Lcom/tencent/liteav/videoconsumer/consumer/j;->y:Ljava/lang/Runnable;

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/videoconsumer/consumer/j;->a(Ljava/lang/Runnable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onDecodeLatencyChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onFrameEnqueuedToDecoder()V
    .locals 0

    return-void
.end method

.method public final onRequestKeyFrame()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$4;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/consumer/ae;->a(Lcom/tencent/liteav/videoconsumer/consumer/j$4;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/consumer/j;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
