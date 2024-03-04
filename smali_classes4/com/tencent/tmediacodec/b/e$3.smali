.class final Lcom/tencent/tmediacodec/b/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmediacodec/b/e;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tmediacodec/b/e;


# direct methods
.method constructor <init>(Lcom/tencent/tmediacodec/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmediacodec/b/e$3;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e$3;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-static {v0}, Lcom/tencent/tmediacodec/b/e;->d(Lcom/tencent/tmediacodec/b/e;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e$3;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-static {v0}, Lcom/tencent/tmediacodec/b/e;->d(Lcom/tencent/tmediacodec/b/e;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 3
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e$3;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-static {v0}, Lcom/tencent/tmediacodec/b/e;->e(Lcom/tencent/tmediacodec/b/e;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e$3;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-static {v1}, Lcom/tencent/tmediacodec/b/e;->d(Lcom/tencent/tmediacodec/b/e;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 5
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/tencent/tmediacodec/b/e$3;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-static {v1}, Lcom/tencent/tmediacodec/b/e;->c(Lcom/tencent/tmediacodec/b/e;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recycle codec ignore error,"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmediacodec/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e$3;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-static {v0}, Lcom/tencent/tmediacodec/b/e;->f(Lcom/tencent/tmediacodec/b/e;)Lcom/tencent/tmediacodec/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/e$3;->a:Lcom/tencent/tmediacodec/b/e;

    invoke-static {v0}, Lcom/tencent/tmediacodec/b/e;->f(Lcom/tencent/tmediacodec/b/e;)Lcom/tencent/tmediacodec/a/a;

    :cond_0
    return-void
.end method
