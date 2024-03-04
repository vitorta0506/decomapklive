.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/w;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ag;->a:Lcom/tencent/liteav/videoproducer/encoder/w;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/w;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/ag;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/ag;-><init>(Lcom/tencent/liteav/videoproducer/encoder/w;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ag;->a:Lcom/tencent/liteav/videoproducer/encoder/w;

    .line 1
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->e()V

    .line 2
    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->c:Lcom/tencent/liteav/base/util/CustomHandler;

    iget-object v2, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->n:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/w;->a(Landroid/media/MediaCodec;)V

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->d:Landroid/media/MediaCodec;

    return-void
.end method
