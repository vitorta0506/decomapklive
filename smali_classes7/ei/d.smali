.class public final Lei/d;
.super Lei/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lei/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lei/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/r<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field volatile e:Z

.field volatile f:Z

.field g:Ljava/lang/Throwable;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
            "TT;>;"
        }
    .end annotation
.end field

.field j:Z


# direct methods
.method constructor <init>(ILjava/lang/Runnable;Z)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lei/c;-><init>()V

    .line 9
    new-instance v0, Lio/reactivex/internal/queue/b;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lxh/b;->f(ILjava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object v0, p0, Lei/d;->a:Lio/reactivex/internal/queue/b;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "onTerminate"

    invoke-static {p2, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lei/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    iput-boolean p3, p0, Lei/d;->d:Z

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lei/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lei/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance p1, Lei/d$a;

    invoke-direct {p1, p0}, Lei/d$a;-><init>(Lei/d;)V

    iput-object p1, p0, Lei/d;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lei/c;-><init>()V

    .line 2
    new-instance v0, Lio/reactivex/internal/queue/b;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lxh/b;->f(ILjava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object v0, p0, Lei/d;->a:Lio/reactivex/internal/queue/b;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lei/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iput-boolean p2, p0, Lei/d;->d:Z

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lei/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lei/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Lei/d$a;

    invoke-direct {p1, p0}, Lei/d$a;-><init>(Lei/d;)V

    iput-object p1, p0, Lei/d;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    return-void
.end method

.method public static d()Lei/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lei/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lei/d;

    invoke-static {}, Lio/reactivex/k;->bufferSize()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lei/d;-><init>(IZ)V

    return-object v0
.end method

.method public static e(I)Lei/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lei/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lei/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lei/d;-><init>(IZ)V

    return-object v0
.end method

.method public static f(ILjava/lang/Runnable;)Lei/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lei/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lei/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lei/d;-><init>(ILjava/lang/Runnable;Z)V

    return-object v0
.end method


# virtual methods
.method g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lei/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lei/d;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lei/d;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lei/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/r;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-boolean v1, p0, Lei/d;->j:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lei/d;->i(Lio/reactivex/r;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lei/d;->j(Lio/reactivex/r;)V

    :goto_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lei/d;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lei/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/r;

    goto :goto_0
.end method

.method i(Lio/reactivex/r;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lei/d;->a:Lio/reactivex/internal/queue/b;

    .line 2
    iget-boolean v1, p0, Lei/d;->d:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 3
    :cond_0
    iget-boolean v3, p0, Lei/d;->e:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 4
    iget-object p1, p0, Lei/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-boolean v3, p0, Lei/d;->f:Z

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p0, v0, p1}, Lei/d;->l(Lyh/g;Lio/reactivex/r;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-interface {p1, v4}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Lei/d;->k(Lio/reactivex/r;)V

    return-void

    .line 9
    :cond_3
    iget-object v3, p0, Lei/d;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v2, v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void
.end method

.method j(Lio/reactivex/r;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lei/d;->a:Lio/reactivex/internal/queue/b;

    .line 2
    iget-boolean v1, p0, Lei/d;->d:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 3
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lei/d;->e:Z

    if-eqz v5, :cond_1

    .line 4
    iget-object p1, p0, Lei/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0}, Lyh/g;->clear()V

    return-void

    .line 6
    :cond_1
    iget-boolean v5, p0, Lei/d;->f:Z

    .line 7
    iget-object v6, p0, Lei/d;->a:Lio/reactivex/internal/queue/b;

    invoke-virtual {v6}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {p0, v0, p1}, Lei/d;->l(Lyh/g;Lio/reactivex/r;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    const/4 v3, 0x0

    :cond_4
    if-eqz v8, :cond_5

    .line 9
    invoke-virtual {p0, p1}, Lei/d;->k(Lio/reactivex/r;)V

    return-void

    :cond_5
    if-eqz v8, :cond_6

    .line 10
    iget-object v5, p0, Lei/d;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v4, v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 11
    :cond_6
    invoke-interface {p1, v6}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method k(Lio/reactivex/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lei/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lei/d;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lio/reactivex/r;->onComplete()V

    :goto_0
    return-void
.end method

.method l(Lyh/g;Lio/reactivex/r;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyh/g<",
            "TT;>;",
            "Lio/reactivex/r<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lei/d;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lei/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lyh/g;->clear()V

    .line 4
    invoke-interface {p2, v0}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lei/d;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lei/d;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lei/d;->f:Z

    .line 3
    invoke-virtual {p0}, Lei/d;->g()V

    .line 4
    invoke-virtual {p0}, Lei/d;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lei/d;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lei/d;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lei/d;->g:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lei/d;->f:Z

    .line 5
    invoke-virtual {p0}, Lei/d;->g()V

    .line 6
    invoke-virtual {p0}, Lei/d;->h()V

    return-void

    .line 7
    :cond_1
    :goto_0
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 1
    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lei/d;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lei/d;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lei/d;->a:Lio/reactivex/internal/queue/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/b;->offer(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lei/d;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lei/d;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lei/d;->e:Z

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-interface {p1}, Lth/b;->dispose()V

    :cond_1
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lei/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lei/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lei/d;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    iget-object v0, p0, Lei/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    iget-boolean p1, p0, Lei/d;->e:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lei/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lei/d;->h()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a single observer allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/r;)V

    :goto_0
    return-void
.end method
