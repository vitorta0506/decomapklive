.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/x;
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

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/x;->a:Lcom/tencent/liteav/videoproducer/encoder/w;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/w;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/x;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/encoder/x;-><init>(Lcom/tencent/liteav/videoproducer/encoder/w;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/x;->a:Lcom/tencent/liteav/videoproducer/encoder/w;

    .line 1
    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->e:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/liteav/videoproducer/encoder/be$a;->onRequestRestart()V

    :cond_0
    return-void
.end method
