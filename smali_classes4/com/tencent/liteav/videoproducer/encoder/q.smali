.class final synthetic Lcom/tencent/liteav/videoproducer/encoder/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/encoder/o;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/o;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/q;->a:Lcom/tencent/liteav/videoproducer/encoder/o;

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/encoder/q;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/encoder/o;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/q;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/q;-><init>(Lcom/tencent/liteav/videoproducer/encoder/o;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/q;->a:Lcom/tencent/liteav/videoproducer/encoder/o;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/q;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/o;->a(Lcom/tencent/liteav/videoproducer/encoder/o;Ljava/lang/String;)V

    return-void
.end method