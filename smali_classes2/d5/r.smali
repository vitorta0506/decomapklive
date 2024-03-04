.class final Ld5/r;
.super Ld5/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ld5/d<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ld5/n;

.field private c:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private e:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld5/d;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld5/r;->a:Ljava/lang/Object;

    new-instance v0, Ld5/n;

    invoke-direct {v0}, Ld5/n;-><init>()V

    iput-object v0, p0, Ld5/r;->b:Ld5/n;

    return-void
.end method

.method private final l()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    iget-boolean v0, p0, Ld5/r;->c:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/b1;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method private final m()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    iget-boolean v0, p0, Ld5/r;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/b1;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method private final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld5/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ld5/r;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ld5/r;->b:Ld5/n;

    .line 3
    invoke-virtual {v0, p0}, Ld5/n;->b(Ld5/d;)V

    return-void

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ld5/a;)Ld5/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld5/a<",
            "TResultT;>;)",
            "Ld5/d<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ld5/e;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ld5/r;->b:Ld5/n;

    new-instance v2, Ld5/h;

    invoke-direct {v2, v0, p1}, Ld5/h;-><init>(Ljava/util/concurrent/Executor;Ld5/a;)V

    .line 2
    invoke-virtual {v1, v2}, Ld5/n;->a(Ld5/m;)V

    .line 3
    invoke-direct {p0}, Ld5/r;->n()V

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;Ld5/b;)Ld5/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ld5/b;",
            ")",
            "Ld5/d<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld5/r;->b:Ld5/n;

    new-instance v1, Ld5/j;

    invoke-direct {v1, p1, p2}, Ld5/j;-><init>(Ljava/util/concurrent/Executor;Ld5/b;)V

    invoke-virtual {v0, v1}, Ld5/n;->a(Ld5/m;)V

    .line 2
    invoke-direct {p0}, Ld5/r;->n()V

    return-object p0
.end method

.method public final c(Ljava/util/concurrent/Executor;Ld5/c;)Ld5/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ld5/c<",
            "-TResultT;>;)",
            "Ld5/d<",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld5/r;->b:Ld5/n;

    new-instance v1, Ld5/l;

    invoke-direct {v1, p1, p2}, Ld5/l;-><init>(Ljava/util/concurrent/Executor;Ld5/c;)V

    invoke-virtual {v0, v1}, Ld5/n;->a(Ld5/m;)V

    .line 2
    invoke-direct {p0}, Ld5/r;->n()V

    return-object p0
.end method

.method public final d()Ljava/lang/Exception;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ld5/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld5/r;->e:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld5/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Ld5/r;->l()V

    iget-object v1, p0, Ld5/r;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Ld5/r;->d:Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v2, Lcom/google/android/play/core/tasks/RuntimeExecutionException;

    .line 5
    invoke-direct {v2, v1}, Lcom/google/android/play/core/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld5/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ld5/r;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ld5/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ld5/r;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ld5/r;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld5/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Ld5/r;->m()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld5/r;->c:Z

    iput-object p1, p0, Ld5/r;->e:Ljava/lang/Exception;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ld5/r;->b:Ld5/n;

    .line 3
    invoke-virtual {p1, p0}, Ld5/n;->b(Ld5/d;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld5/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Ld5/r;->m()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld5/r;->c:Z

    iput-object p1, p0, Ld5/r;->d:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ld5/r;->b:Ld5/n;

    .line 3
    invoke-virtual {p1, p0}, Ld5/n;->b(Ld5/d;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final j(Ljava/lang/Exception;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld5/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ld5/r;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ld5/r;->c:Z

    iput-object p1, p0, Ld5/r;->e:Ljava/lang/Exception;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ld5/r;->b:Ld5/n;

    .line 3
    invoke-virtual {p1, p0}, Ld5/n;->b(Ld5/d;)V

    return v1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final k(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld5/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ld5/r;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ld5/r;->c:Z

    iput-object p1, p0, Ld5/r;->d:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ld5/r;->b:Ld5/n;

    .line 3
    invoke-virtual {p1, p0}, Ld5/n;->b(Ld5/d;)V

    return v1

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
