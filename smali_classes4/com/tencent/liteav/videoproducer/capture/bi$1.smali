.class final Lcom/tencent/liteav/videoproducer/capture/bi$1;
.super Landroid/media/projection/MediaProjection$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/capture/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoproducer/capture/bi;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer/capture/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi$1;->a:Lcom/tencent/liteav/videoproducer/capture/bi;

    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/bi;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/bi;->c(Lcom/tencent/liteav/videoproducer/capture/bi;)V

    return-void
.end method


# virtual methods
.method public final onStop()V
    .locals 2

    const-string v0, "VirtualDisplayManager"

    const-string v1, "MediaProjection session is no longer valid"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi$1;->a:Lcom/tencent/liteav/videoproducer/capture/bi;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/bi;->b(Lcom/tencent/liteav/videoproducer/capture/bi;)Lcom/tencent/liteav/base/util/j;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/bi$1;->a:Lcom/tencent/liteav/videoproducer/capture/bi;

    invoke-static {v1}, Lcom/tencent/liteav/videoproducer/capture/bn;->a(Lcom/tencent/liteav/videoproducer/capture/bi;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method
