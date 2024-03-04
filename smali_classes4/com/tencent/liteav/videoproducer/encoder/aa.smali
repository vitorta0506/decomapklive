.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/w;

.field private final b:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/w;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/aa;->a:Lcom/tencent/liteav/videoproducer/encoder/w;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/aa;->b:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/w;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/aa;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/aa;-><init>(Lcom/tencent/liteav/videoproducer/encoder/w;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/aa;->a:Lcom/tencent/liteav/videoproducer/encoder/w;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/aa;->b:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->i:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    return-void
.end method
