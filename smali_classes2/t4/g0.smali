.class final Lt4/g0;
.super Lt4/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lt4/g<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lt4/c0;

.field private c:Z

.field private volatile d:Z

.field private e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt4/g;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lt4/g0;->a:Ljava/lang/Object;

    new-instance v0, Lt4/c0;

    invoke-direct {v0}, Lt4/c0;-><init>()V

    iput-object v0, p0, Lt4/g0;->b:Lt4/c0;

    return-void
.end method

.method private final v()V
    .locals 2

    iget-boolean v0, p0, Lt4/g0;->c:Z

    const-string v1, "Task is not yet complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/p;->o(ZLjava/lang/Object;)V

    return-void
.end method

.method private final w()V
    .locals 2

    iget-boolean v0, p0, Lt4/g0;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task is already canceled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final x()V
    .locals 1

    iget-boolean v0, p0, Lt4/g0;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;->of(Lt4/g;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method private final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt4/g0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lt4/g0;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lt4/g0;->b:Lt4/c0;

    .line 3
    invoke-virtual {v0, p0}, Lt4/c0;->b(Lt4/g;)V

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
.method public final a(Ljava/util/concurrent/Executor;Lt4/b;)Lt4/g;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt4/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lt4/b;",
            ")",
            "Lt4/g<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/g0;->b:Lt4/c0;

    new-instance v1, Lt4/s;

    invoke-direct {v1, p1, p2}, Lt4/s;-><init>(Ljava/util/concurrent/Executor;Lt4/b;)V

    invoke-virtual {v0, v1}, Lt4/c0;->a(Lt4/b0;)V

    .line 2
    invoke-direct {p0}, Lt4/g0;->y()V

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;Lt4/c;)Lt4/g;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lt4/c<",
            "TTResult;>;)",
            "Lt4/g<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/g0;->b:Lt4/c0;

    new-instance v1, Lt4/u;

    invoke-direct {v1, p1, p2}, Lt4/u;-><init>(Ljava/util/concurrent/Executor;Lt4/c;)V

    invoke-virtual {v0, v1}, Lt4/c0;->a(Lt4/b0;)V

    .line 2
    invoke-direct {p0}, Lt4/g0;->y()V

    return-object p0
.end method

.method public final c(Lt4/c;)Lt4/g;
    .locals 3
    .param p1    # Lt4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt4/c<",
            "TTResult;>;)",
            "Lt4/g<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lt4/i;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lt4/g0;->b:Lt4/c0;

    new-instance v2, Lt4/u;

    invoke-direct {v2, v0, p1}, Lt4/u;-><init>(Ljava/util/concurrent/Executor;Lt4/c;)V

    .line 2
    invoke-virtual {v1, v2}, Lt4/c0;->a(Lt4/b0;)V

    .line 3
    invoke-direct {p0}, Lt4/g0;->y()V

    return-object p0
.end method

.method public final d(Landroid/app/Activity;Lt4/d;)Lt4/g;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt4/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lt4/d;",
            ")",
            "Lt4/g<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt4/w;

    sget-object v1, Lt4/i;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lt4/w;-><init>(Ljava/util/concurrent/Executor;Lt4/d;)V

    iget-object p2, p0, Lt4/g0;->b:Lt4/c0;

    .line 2
    invoke-virtual {p2, v0}, Lt4/c0;->a(Lt4/b0;)V

    .line 3
    invoke-static {p1}, Lt4/f0;->l(Landroid/app/Activity;)Lt4/f0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lt4/f0;->m(Lt4/b0;)V

    .line 4
    invoke-direct {p0}, Lt4/g0;->y()V

    return-object p0
.end method

.method public final e(Ljava/util/concurrent/Executor;Lt4/d;)Lt4/g;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt4/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lt4/d;",
            ")",
            "Lt4/g<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/g0;->b:Lt4/c0;

    new-instance v1, Lt4/w;

    invoke-direct {v1, p1, p2}, Lt4/w;-><init>(Ljava/util/concurrent/Executor;Lt4/d;)V

    invoke-virtual {v0, v1}, Lt4/c0;->a(Lt4/b0;)V

    .line 2
    invoke-direct {p0}, Lt4/g0;->y()V

    return-object p0
.end method

.method public final f(Landroid/app/Activity;Lt4/e;)Lt4/g;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt4/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lt4/e<",
            "-TTResult;>;)",
            "Lt4/g<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt4/y;

    sget-object v1, Lt4/i;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p2}, Lt4/y;-><init>(Ljava/util/concurrent/Executor;Lt4/e;)V

    iget-object p2, p0, Lt4/g0;->b:Lt4/c0;

    .line 2
    invoke-virtual {p2, v0}, Lt4/c0;->a(Lt4/b0;)V

    .line 3
    invoke-static {p1}, Lt4/f0;->l(Landroid/app/Activity;)Lt4/f0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lt4/f0;->m(Lt4/b0;)V

    .line 4
    invoke-direct {p0}, Lt4/g0;->y()V

    return-object p0
.end method

.method public final g(Ljava/util/concurrent/Executor;Lt4/e;)Lt4/g;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt4/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lt4/e<",
            "-TTResult;>;)",
            "Lt4/g<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/g0;->b:Lt4/c0;

    new-instance v1, Lt4/y;

    invoke-direct {v1, p1, p2}, Lt4/y;-><init>(Ljava/util/concurrent/Executor;Lt4/e;)V

    invoke-virtual {v0, v1}, Lt4/c0;->a(Lt4/b0;)V

    .line 2
    invoke-direct {p0}, Lt4/g0;->y()V

    return-object p0
.end method

.method public final h(Ljava/util/concurrent/Executor;Lt4/a;)Lt4/g;
    .locals 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lt4/a<",
            "TTResult;TTContinuationResult;>;)",
            "Lt4/g<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt4/g0;

    invoke-direct {v0}, Lt4/g0;-><init>()V

    iget-object v1, p0, Lt4/g0;->b:Lt4/c0;

    new-instance v2, Lt4/o;

    invoke-direct {v2, p1, p2, v0}, Lt4/o;-><init>(Ljava/util/concurrent/Executor;Lt4/a;Lt4/g0;)V

    .line 2
    invoke-virtual {v1, v2}, Lt4/c0;->a(Lt4/b0;)V

    .line 3
    invoke-direct {p0}, Lt4/g0;->y()V

    return-object v0
.end method

.method public final i(Ljava/util/concurrent/Executor;Lt4/a;)Lt4/g;
    .locals 3
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lt4/a<",
            "TTResult;",
            "Lt4/g<",
            "TTContinuationResult;>;>;)",
            "Lt4/g<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt4/g0;

    invoke-direct {v0}, Lt4/g0;-><init>()V

    iget-object v1, p0, Lt4/g0;->b:Lt4/c0;

    new-instance v2, Lt4/q;

    invoke-direct {v2, p1, p2, v0}, Lt4/q;-><init>(Ljava/util/concurrent/Executor;Lt4/a;Lt4/g0;)V

    .line 2
    invoke-virtual {v1, v2}, Lt4/c0;->a(Lt4/b0;)V

    .line 3
    invoke-direct {p0}, Lt4/g0;->y()V

    return-object v0
.end method

.method public final j()Ljava/lang/Exception;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/g0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt4/g0;->f:Ljava/lang/Exception;

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

.method public final k()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/g0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lt4/g0;->v()V

    .line 2
    invoke-direct {p0}, Lt4/g0;->w()V

    iget-object v1, p0, Lt4/g0;->f:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lt4/g0;->e:Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    new-instance v2, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    .line 6
    invoke-direct {v2, v1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/g0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lt4/g0;->v()V

    .line 2
    invoke-direct {p0}, Lt4/g0;->w()V

    iget-object v1, p0, Lt4/g0;->f:Ljava/lang/Exception;

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object p1, p0, Lt4/g0;->f:Ljava/lang/Exception;

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lt4/g0;->e:Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-object p1

    .line 7
    :cond_0
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    .line 8
    invoke-direct {v1, p1}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 9
    :cond_1
    iget-object v1, p0, Lt4/g0;->f:Ljava/lang/Exception;

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lt4/g0;->d:Z

    return v0
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lt4/g0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lt4/g0;->c:Z

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

.method public final o()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lt4/g0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lt4/g0;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lt4/g0;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lt4/g0;->f:Ljava/lang/Exception;

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

.method public final p(Ljava/util/concurrent/Executor;Lt4/f;)Lt4/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lt4/f<",
            "TTResult;TTContinuationResult;>;)",
            "Lt4/g<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt4/g0;

    invoke-direct {v0}, Lt4/g0;-><init>()V

    iget-object v1, p0, Lt4/g0;->b:Lt4/c0;

    new-instance v2, Lt4/a0;

    invoke-direct {v2, p1, p2, v0}, Lt4/a0;-><init>(Ljava/util/concurrent/Executor;Lt4/f;Lt4/g0;)V

    .line 2
    invoke-virtual {v1, v2}, Lt4/c0;->a(Lt4/b0;)V

    .line 3
    invoke-direct {p0}, Lt4/g0;->y()V

    return-object v0
.end method

.method public final q(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lt4/g0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lt4/g0;->x()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lt4/g0;->c:Z

    iput-object p1, p0, Lt4/g0;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lt4/g0;->b:Lt4/c0;

    .line 4
    invoke-virtual {p1, p0}, Lt4/c0;->b(Lt4/g;)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lt4/g0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lt4/g0;->x()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lt4/g0;->c:Z

    iput-object p1, p0, Lt4/g0;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lt4/g0;->b:Lt4/c0;

    .line 3
    invoke-virtual {p1, p0}, Lt4/c0;->b(Lt4/g;)V

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

.method public final s()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lt4/g0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lt4/g0;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lt4/g0;->c:Z

    iput-boolean v1, p0, Lt4/g0;->d:Z

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lt4/g0;->b:Lt4/c0;

    .line 3
    invoke-virtual {v0, p0}, Lt4/c0;->b(Lt4/g;)V

    return v1

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final t(Ljava/lang/Exception;)Z
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Exception must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lt4/g0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lt4/g0;->c:Z

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lt4/g0;->c:Z

    iput-object p1, p0, Lt4/g0;->f:Ljava/lang/Exception;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lt4/g0;->b:Lt4/c0;

    .line 4
    invoke-virtual {p1, p0}, Lt4/c0;->b(Lt4/g;)V

    return v1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final u(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lt4/g0;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lt4/g0;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lt4/g0;->c:Z

    iput-object p1, p0, Lt4/g0;->e:Ljava/lang/Object;

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lt4/g0;->b:Lt4/c0;

    .line 3
    invoke-virtual {p1, p0}, Lt4/c0;->b(Lt4/g;)V

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
