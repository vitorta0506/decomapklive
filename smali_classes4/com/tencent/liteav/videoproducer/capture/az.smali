.class final synthetic Lcom/tencent/liteav/videoproducer/capture/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/capture/ay;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/capture/ay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/az;->a:Lcom/tencent/liteav/videoproducer/capture/ay;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/capture/ay;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/az;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/az;-><init>(Lcom/tencent/liteav/videoproducer/capture/ay;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/az;->a:Lcom/tencent/liteav/videoproducer/capture/ay;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/ay;->a(Lcom/tencent/liteav/videoproducer/capture/ay;)V

    return-void
.end method
