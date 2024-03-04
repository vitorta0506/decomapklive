.class final Lcom/tencent/liteav/videoproducer/capture/bi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/base/util/v$a;


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

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi$2;->a:Lcom/tencent/liteav/videoproducer/capture/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi$2;->a:Lcom/tencent/liteav/videoproducer/capture/bi;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/bi;->b(Lcom/tencent/liteav/videoproducer/capture/bi;)Lcom/tencent/liteav/base/util/j;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/bi$2;->a:Lcom/tencent/liteav/videoproducer/capture/bi;

    invoke-static {v1}, Lcom/tencent/liteav/videoproducer/capture/bo;->a(Lcom/tencent/liteav/videoproducer/capture/bi;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method
