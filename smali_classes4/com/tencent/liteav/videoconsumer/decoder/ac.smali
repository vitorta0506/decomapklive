.class final synthetic Lcom/tencent/liteav/videoconsumer/decoder/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ac;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/ac;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/decoder/ac;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ac;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Z

    .line 2
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->f:Lcom/tencent/liteav/base/util/j;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/util/j;->a(I)V

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->h:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;

    .line 5
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->g:Lcom/tencent/liteav/base/util/p;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/tencent/liteav/base/util/p;->b()V

    .line 7
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->g:Lcom/tencent/liteav/base/util/p;

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d:Lcom/tencent/liteav/videoconsumer/decoder/ax;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/ax;->a()V

    .line 9
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->h()V

    .line 10
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j()V

    .line 11
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c()V

    return-void
.end method
