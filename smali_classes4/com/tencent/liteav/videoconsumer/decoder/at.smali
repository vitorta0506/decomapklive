.class final synthetic Lcom/tencent/liteav/videoconsumer/decoder/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

.field private final b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/at;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/decoder/at;->b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/at;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoconsumer/decoder/at;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/at;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/decoder/at;->b:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;

    .line 1
    iget-boolean v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Z

    if-nez v2, :cond_2

    .line 2
    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->f:Lcom/tencent/liteav/base/util/j;

    if-eqz v2, :cond_0

    const/16 v3, 0xf

    .line 3
    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/util/j;->a(I)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->b()V

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->k:Z

    .line 6
    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->h:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController$a;

    .line 7
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 8
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/d;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/d;->b()V

    .line 9
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->d:Lcom/tencent/liteav/videoconsumer/decoder/ax;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoconsumer/decoder/ax;->a()V

    .line 10
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->g:Lcom/tencent/liteav/base/util/p;

    if-nez v1, :cond_1

    .line 11
    new-instance v1, Lcom/tencent/liteav/base/util/p;

    iget-object v2, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->f:Lcom/tencent/liteav/base/util/j;

    .line 12
    new-instance v3, Lcom/tencent/liteav/videoconsumer/decoder/au;

    invoke-direct {v3, v0}, Lcom/tencent/liteav/videoconsumer/decoder/au;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)V

    .line 13
    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/base/util/p;-><init>(Lcom/tencent/liteav/base/util/j;Lcom/tencent/liteav/base/util/p$a;)V

    iput-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->g:Lcom/tencent/liteav/base/util/p;

    .line 14
    :cond_1
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->g:Lcom/tencent/liteav/base/util/p;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/p;->a()V

    :cond_2
    return-void
.end method
