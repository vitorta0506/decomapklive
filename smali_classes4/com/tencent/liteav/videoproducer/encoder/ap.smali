.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/ah;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/ah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ap;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/ah;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/ap;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/ap;-><init>(Lcom/tencent/liteav/videoproducer/encoder/ah;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ap;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;)Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v0

    return-object v0
.end method
