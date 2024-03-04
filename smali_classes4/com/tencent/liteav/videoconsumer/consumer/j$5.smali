.class final Lcom/tencent/liteav/videoconsumer/consumer/j$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$5;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$5;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->a:Ljava/lang/String;

    const-string/jumbo v1, "uninitialize videoConsumer"

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$5;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    .line 5
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->d:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->setDisplayView(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$5;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    .line 8
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->d:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$5;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    .line 10
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->e:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    .line 11
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->f:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->i()V

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$5;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    .line 14
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->f:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/consumer/j$5;->a:Lcom/tencent/liteav/videoconsumer/consumer/j;

    .line 16
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->u:Ljava/lang/Object;

    .line 17
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->i:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    .line 18
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->g:Lcom/tencent/liteav/videoconsumer/consumer/j$b;

    .line 19
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/consumer/j;->h:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    return-void
.end method
