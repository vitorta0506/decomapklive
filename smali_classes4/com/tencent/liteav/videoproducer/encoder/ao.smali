.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/ah;

.field private final b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ao;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/ao;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/ao;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ao;-><init>(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ao;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ao;->b:Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    return-void
.end method
