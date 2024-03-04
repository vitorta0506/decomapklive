.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/ac;
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

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ac;->a:Lcom/tencent/liteav/videoproducer/encoder/w;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/w;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/ac;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/ac;-><init>(Lcom/tencent/liteav/videoproducer/encoder/w;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ac;->a:Lcom/tencent/liteav/videoproducer/encoder/w;

    .line 1
    iget-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->f:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    iget-boolean v1, v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fullIFrame:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/w;->f()V

    :cond_0
    return-void
.end method
