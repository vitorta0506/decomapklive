.class final Lcom/tencent/liteav/videoproducer/encoder/ah$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videoproducer/encoder/ah;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoproducer/encoder/ah;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->f(Lcom/tencent/liteav/videoproducer/encoder/ah;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->g(Lcom/tencent/liteav/videoproducer/encoder/ah;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "not initialized."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->g(Lcom/tencent/liteav/videoproducer/encoder/ah;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uninitialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/ah$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->h(Lcom/tencent/liteav/videoproducer/encoder/ah;)Lcom/tencent/liteav/base/util/CustomHandler;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    invoke-static {v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->i(Lcom/tencent/liteav/videoproducer/encoder/ah;)Z

    .line 8
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/ah$1;->a:Lcom/tencent/liteav/videoproducer/encoder/ah;

    invoke-static {v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->j(Lcom/tencent/liteav/videoproducer/encoder/ah;)Lcom/tencent/liteav/base/util/CustomHandler;

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
