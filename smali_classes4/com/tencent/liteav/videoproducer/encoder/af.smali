.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/w;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/w;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/af;->a:Lcom/tencent/liteav/videoproducer/encoder/w;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/af;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/w;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/af;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/af;-><init>(Lcom/tencent/liteav/videoproducer/encoder/w;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/af;->a:Lcom/tencent/liteav/videoproducer/encoder/w;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/af;->b:Ljava/lang/String;

    .line 1
    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/encoder/w;->e:Lcom/tencent/liteav/videoproducer/encoder/be$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/be$a;->onEncodeError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
