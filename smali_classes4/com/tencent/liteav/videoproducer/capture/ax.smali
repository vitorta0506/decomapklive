.class final synthetic Lcom/tencent/liteav/videoproducer/capture/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/liteav/videoproducer/capture/av;


# direct methods
.method private constructor <init>(Lcom/tencent/liteav/videoproducer/capture/av;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/ax;->a:Lcom/tencent/liteav/videoproducer/capture/av;

    return-void
.end method

.method public static a(Lcom/tencent/liteav/videoproducer/capture/av;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/ax;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/ax;-><init>(Lcom/tencent/liteav/videoproducer/capture/av;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/ax;->a:Lcom/tencent/liteav/videoproducer/capture/av;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/av;->a()V

    return-void
.end method
