.class Lxg/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxg/g;->h(Lio/grpc/internal/k1$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxg/g;


# direct methods
.method constructor <init>(Lxg/g;)V
    .locals 0

    iput-object p1, p0, Lxg/g$c;->a:Lxg/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lxg/g$c;->a:Lxg/g;

    iget-object v0, v0, Lxg/g;->V:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3
    :cond_0
    iget-object v0, p0, Lxg/g$c;->a:Lxg/g;

    new-instance v1, Lxg/g$f;

    invoke-static {v0}, Lxg/g;->L(Lxg/g;)Lyg/a;

    move-result-object v2

    iget-object v3, p0, Lxg/g$c;->a:Lxg/g;

    invoke-static {v3}, Lxg/g;->M(Lxg/g;)Lxg/h;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lxg/g$f;-><init>(Lxg/g;Lyg/a;Lxg/h;)V

    invoke-static {v0, v1}, Lxg/g;->K(Lxg/g;Lxg/g$f;)Lxg/g$f;

    .line 4
    iget-object v0, p0, Lxg/g$c;->a:Lxg/g;

    invoke-static {v0}, Lxg/g;->N(Lxg/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lxg/g$c;->a:Lxg/g;

    invoke-static {v1}, Lxg/g;->J(Lxg/g;)Lxg/g$f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lxg/g$c;->a:Lxg/g;

    invoke-static {v0}, Lxg/g;->j(Lxg/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lxg/g$c;->a:Lxg/g;

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Lxg/g;->O(Lxg/g;I)I

    .line 7
    iget-object v1, p0, Lxg/g$c;->a:Lxg/g;

    invoke-static {v1}, Lxg/g;->P(Lxg/g;)Z

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lxg/g$c;->a:Lxg/g;

    iget-object v0, v0, Lxg/g;->W:Lcom/google/common/util/concurrent/k0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/k0;->R(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
