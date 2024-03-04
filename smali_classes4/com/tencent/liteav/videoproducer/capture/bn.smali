.class final synthetic Lcom/tencent/liteav/videoproducer/capture/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/capture/bi;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/capture/bi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bn;->a:Lcom/tencent/liteav/videoproducer/capture/bi;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/capture/bi;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/bn;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/bn;-><init>(Lcom/tencent/liteav/videoproducer/capture/bi;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bn;->a:Lcom/tencent/liteav/videoproducer/capture/bi;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/bi$1;->a(Lcom/tencent/liteav/videoproducer/capture/bi;)V

    return-void
.end method
