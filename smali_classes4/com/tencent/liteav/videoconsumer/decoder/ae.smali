.class public final synthetic Lcom/tencent/liteav/videoconsumer/decoder/ae;
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

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/decoder/ae;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoconsumer/decoder/ae;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoconsumer/decoder/ae;-><init>(Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/decoder/ae;->a:Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;

    .line 1
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->j()V

    .line 2
    iget-object v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->l:Lcom/tencent/liteav/videoconsumer/decoder/az;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/tencent/liteav/videoconsumer/decoder/az;->abandonDecodingFrames()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->onAbandonDecodingFramesCompleted()V

    .line 5
    :goto_0
    iget-object v0, v0, Lcom/tencent/liteav/videoconsumer/decoder/VideoDecodeController;->c:Lcom/tencent/liteav/videoconsumer/decoder/d;

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lcom/tencent/liteav/videoconsumer/decoder/d;->r:I

    return-void
.end method
