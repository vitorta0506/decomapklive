.class final Lio/grpc/internal/n1;
.super Lio/grpc/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/n1$a;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/internal/r;

.field private final b:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Lio/grpc/s0;

.field private final d:Lio/grpc/c;

.field private final e:Lio/grpc/r;

.field private final f:Lio/grpc/internal/n1$a;

.field private final g:[Lio/grpc/k;

.field private final h:Ljava/lang/Object;

.field private i:Lio/grpc/internal/q;

.field j:Z

.field k:Lio/grpc/internal/b0;


# direct methods
.method constructor <init>(Lio/grpc/internal/r;Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;Lio/grpc/internal/n1$a;[Lio/grpc/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/r;",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/s0;",
            "Lio/grpc/c;",
            "Lio/grpc/internal/n1$a;",
            "[",
            "Lio/grpc/k;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/b$a;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/n1;->h:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/internal/n1;->a:Lio/grpc/internal/r;

    .line 4
    iput-object p2, p0, Lio/grpc/internal/n1;->b:Lio/grpc/MethodDescriptor;

    .line 5
    iput-object p3, p0, Lio/grpc/internal/n1;->c:Lio/grpc/s0;

    .line 6
    iput-object p4, p0, Lio/grpc/internal/n1;->d:Lio/grpc/c;

    .line 7
    invoke-static {}, Lio/grpc/r;->j()Lio/grpc/r;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/n1;->e:Lio/grpc/r;

    .line 8
    iput-object p5, p0, Lio/grpc/internal/n1;->f:Lio/grpc/internal/n1$a;

    .line 9
    iput-object p6, p0, Lio/grpc/internal/n1;->g:[Lio/grpc/k;

    return-void
.end method

.method private c(Lio/grpc/internal/q;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/grpc/internal/n1;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already finalized"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lio/grpc/internal/n1;->j:Z

    .line 3
    iget-object v0, p0, Lio/grpc/internal/n1;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/n1;->i:Lio/grpc/internal/q;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 5
    iput-object p1, p0, Lio/grpc/internal/n1;->i:Lio/grpc/internal/q;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 7
    iget-object p1, p0, Lio/grpc/internal/n1;->f:Lio/grpc/internal/n1$a;

    invoke-interface {p1}, Lio/grpc/internal/n1$a;->onComplete()V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/n1;->k:Lio/grpc/internal/b0;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v0, "delayedStream is null"

    invoke-static {v1, v0}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lio/grpc/internal/n1;->k:Lio/grpc/internal/b0;

    invoke-virtual {v0, p1}, Lio/grpc/internal/b0;->w(Lio/grpc/internal/q;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 11
    :cond_3
    iget-object p1, p0, Lio/grpc/internal/n1;->f:Lio/grpc/internal/n1$a;

    invoke-interface {p1}, Lio/grpc/internal/n1$a;->onComplete()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Lio/grpc/s0;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/grpc/internal/n1;->j:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "apply() or fail() already called"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    const-string v0, "headers"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lio/grpc/internal/n1;->c:Lio/grpc/s0;

    invoke-virtual {v0, p1}, Lio/grpc/s0;->q(Lio/grpc/s0;)V

    .line 4
    iget-object p1, p0, Lio/grpc/internal/n1;->e:Lio/grpc/r;

    invoke-virtual {p1}, Lio/grpc/r;->c()Lio/grpc/r;

    move-result-object p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/n1;->a:Lio/grpc/internal/r;

    iget-object v1, p0, Lio/grpc/internal/n1;->b:Lio/grpc/MethodDescriptor;

    iget-object v2, p0, Lio/grpc/internal/n1;->c:Lio/grpc/s0;

    iget-object v3, p0, Lio/grpc/internal/n1;->d:Lio/grpc/c;

    iget-object v4, p0, Lio/grpc/internal/n1;->g:[Lio/grpc/k;

    invoke-interface {v0, v1, v2, v3, v4}, Lio/grpc/internal/r;->e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lio/grpc/internal/n1;->e:Lio/grpc/r;

    invoke-virtual {v1, p1}, Lio/grpc/r;->k(Lio/grpc/r;)V

    .line 7
    invoke-direct {p0, v0}, Lio/grpc/internal/n1;->c(Lio/grpc/internal/q;)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lio/grpc/internal/n1;->e:Lio/grpc/r;

    invoke-virtual {v1, p1}, Lio/grpc/r;->k(Lio/grpc/r;)V

    throw v0
.end method

.method public b(Lio/grpc/Status;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/Status;->p()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot fail with OK status"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lio/grpc/internal/n1;->j:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "apply() or fail() already called"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Lio/grpc/internal/f0;

    iget-object v1, p0, Lio/grpc/internal/n1;->g:[Lio/grpc/k;

    invoke-direct {v0, p1, v1}, Lio/grpc/internal/f0;-><init>(Lio/grpc/Status;[Lio/grpc/k;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/n1;->c(Lio/grpc/internal/q;)V

    return-void
.end method

.method d()Lio/grpc/internal/q;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/n1;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/n1;->i:Lio/grpc/internal/q;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lio/grpc/internal/b0;

    invoke-direct {v1}, Lio/grpc/internal/b0;-><init>()V

    iput-object v1, p0, Lio/grpc/internal/n1;->k:Lio/grpc/internal/b0;

    .line 4
    iput-object v1, p0, Lio/grpc/internal/n1;->i:Lio/grpc/internal/q;

    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
