.class public final Lio/reactivex/internal/operators/observable/n2;
.super Lio/reactivex/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/n2$b;,
        Lio/reactivex/internal/operators/observable/n2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lbi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/s;

.field f:Lio/reactivex/internal/operators/observable/n2$a;


# direct methods
.method public constructor <init>(Lbi/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbi/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/n2;-><init>(Lbi/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    return-void
.end method

.method public constructor <init>(Lbi/a;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbi/a<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/n2;->a:Lbi/a;

    .line 4
    iput p2, p0, Lio/reactivex/internal/operators/observable/n2;->b:I

    .line 5
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/n2;->c:J

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/n2;->d:Ljava/util/concurrent/TimeUnit;

    .line 7
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/n2;->e:Lio/reactivex/s;

    return-void
.end method


# virtual methods
.method c(Lio/reactivex/internal/operators/observable/n2$a;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2;->f:Lio/reactivex/internal/operators/observable/n2$a;

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/n2$a;->c:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 4
    iput-wide v0, p1, Lio/reactivex/internal/operators/observable/n2$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 5
    iget-boolean v0, p1, Lio/reactivex/internal/operators/observable/n2$a;->d:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/n2;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/n2;->g(Lio/reactivex/internal/operators/observable/n2$a;)V

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 10
    iput-object v0, p1, Lio/reactivex/internal/operators/observable/n2$a;->b:Lth/b;

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/n2;->e:Lio/reactivex/s;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/n2;->c:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/n2;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, v2, v3, v4}, Lio/reactivex/s;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lth/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lth/b;)Z

    return-void

    .line 13
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    .line 14
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method d(Lio/reactivex/internal/operators/observable/n2$a;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lio/reactivex/internal/operators/observable/n2$a;->b:Lth/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lth/b;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lio/reactivex/internal/operators/observable/n2$a;->b:Lth/b;

    :cond_0
    return-void
.end method

.method e(Lio/reactivex/internal/operators/observable/n2$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2;->a:Lbi/a;

    instance-of v1, v0, Lth/b;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lwh/c;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lwh/c;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lth/b;

    invoke-interface {v0, p1}, Lwh/c;->b(Lth/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method f(Lio/reactivex/internal/operators/observable/n2$a;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2;->a:Lbi/a;

    instance-of v0, v0, Lio/reactivex/internal/operators/observable/g2;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2;->f:Lio/reactivex/internal/operators/observable/n2$a;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 4
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/n2;->f:Lio/reactivex/internal/operators/observable/n2$a;

    .line 5
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/n2;->d(Lio/reactivex/internal/operators/observable/n2$a;)V

    .line 6
    :cond_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/n2$a;->c:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lio/reactivex/internal/operators/observable/n2$a;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/n2;->e(Lio/reactivex/internal/operators/observable/n2$a;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2;->f:Lio/reactivex/internal/operators/observable/n2$a;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/n2;->d(Lio/reactivex/internal/operators/observable/n2$a;)V

    .line 10
    iget-wide v6, p1, Lio/reactivex/internal/operators/observable/n2$a;->c:J

    sub-long/2addr v6, v4

    iput-wide v6, p1, Lio/reactivex/internal/operators/observable/n2$a;->c:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 11
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/n2;->f:Lio/reactivex/internal/operators/observable/n2$a;

    .line 12
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/n2;->e(Lio/reactivex/internal/operators/observable/n2$a;)V

    .line 13
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method g(Lio/reactivex/internal/operators/observable/n2$a;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/observable/n2$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2;->f:Lio/reactivex/internal/operators/observable/n2$a;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/n2;->f:Lio/reactivex/internal/operators/observable/n2$a;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lth/b;

    .line 5
    invoke-static {p1}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 6
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/n2;->a:Lbi/a;

    instance-of v2, v1, Lth/b;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, Lth/b;

    invoke-interface {v1}, Lth/b;->dispose()V

    goto :goto_0

    .line 8
    :cond_0
    instance-of v2, v1, Lwh/c;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lio/reactivex/internal/operators/observable/n2$a;->e:Z

    goto :goto_0

    .line 10
    :cond_1
    check-cast v1, Lwh/c;

    invoke-interface {v1, v0}, Lwh/c;->b(Lth/b;)V

    .line 11
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2;->f:Lio/reactivex/internal/operators/observable/n2$a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/n2$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/n2$a;-><init>(Lio/reactivex/internal/operators/observable/n2;)V

    .line 4
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/n2;->f:Lio/reactivex/internal/operators/observable/n2$a;

    .line 5
    :cond_0
    iget-wide v1, v0, Lio/reactivex/internal/operators/observable/n2$a;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 6
    iget-object v3, v0, Lio/reactivex/internal/operators/observable/n2$a;->b:Lth/b;

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3}, Lth/b;->dispose()V

    :cond_1
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Lio/reactivex/internal/operators/observable/n2$a;->c:J

    .line 9
    iget-boolean v3, v0, Lio/reactivex/internal/operators/observable/n2$a;->d:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget v3, p0, Lio/reactivex/internal/operators/observable/n2;->b:I

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-nez v3, :cond_2

    .line 10
    iput-boolean v4, v0, Lio/reactivex/internal/operators/observable/n2$a;->d:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 11
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/n2;->a:Lbi/a;

    new-instance v2, Lio/reactivex/internal/operators/observable/n2$b;

    invoke-direct {v2, p1, p0, v0}, Lio/reactivex/internal/operators/observable/n2$b;-><init>(Lio/reactivex/r;Lio/reactivex/internal/operators/observable/n2;Lio/reactivex/internal/operators/observable/n2$a;)V

    invoke-virtual {v1, v2}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    if-eqz v4, :cond_3

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/n2;->a:Lbi/a;

    invoke-virtual {p1, v0}, Lbi/a;->c(Lvh/g;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
