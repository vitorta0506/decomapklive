.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/o;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/p;->a:Lcom/tencent/liteav/videoproducer/encoder/o;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/o;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/p;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/p;-><init>(Lcom/tencent/liteav/videoproducer/encoder/o;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/p;->a:Lcom/tencent/liteav/videoproducer/encoder/o;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/o;->a(Lcom/tencent/liteav/videoproducer/encoder/o;)V

    return-void
.end method
