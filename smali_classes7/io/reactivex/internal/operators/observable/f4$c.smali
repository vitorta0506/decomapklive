.class final Lio/reactivex/internal/operators/observable/f4$c;
.super Lio/reactivex/internal/observers/j;
.source "SourceFile"

# interfaces
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/f4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/j<",
        "TT;",
        "Ljava/lang/Object;",
        "Lio/reactivex/k<",
        "TT;>;>;",
        "Lth/b;"
    }
.end annotation


# instance fields
.field final g:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "TB;>;"
        }
    .end annotation
.end field

.field final h:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TB;+",
            "Lio/reactivex/p<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final i:I

.field final j:Lth/a;

.field k:Lth/b;

.field final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lth/b;",
            ">;"
        }
    .end annotation
.end field

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lei/d<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final n:Ljava/util/concurrent/atomic/AtomicLong;

.field final o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/reactivex/r;Lio/reactivex/p;Lvh/o;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;>;",
            "Lio/reactivex/p<",
            "TB;>;",
            "Lvh/o<",
            "-TB;+",
            "Lio/reactivex/p<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/a;

    invoke-direct {v0}, Lio/reactivex/internal/queue/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/j;-><init>(Lio/reactivex/r;Lyh/f;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/f4$c;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/f4$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/f4$c;->g:Lio/reactivex/p;

    .line 6
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/f4$c;->h:Lvh/o;

    .line 7
    iput p4, p0, Lio/reactivex/internal/operators/observable/f4$c;->i:I

    .line 8
    new-instance p2, Lth/a;

    invoke-direct {p2}, Lth/a;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/f4$c;->j:Lth/a;

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/f4$c;->m:Ljava/util/List;

    const-wide/16 p2, 0x1

    .line 10
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->k:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    :cond_0
    return-void
.end method

.method g(Lio/reactivex/internal/operators/observable/f4$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/f4$a<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->j:Lth/a;

    invoke-virtual {v0, p1}, Lth/a;->c(Lth/b;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    new-instance v1, Lio/reactivex/internal/operators/observable/f4$d;

    iget-object p1, p1, Lio/reactivex/internal/operators/observable/f4$a;->b:Lei/d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/f4$d;-><init>(Lei/d;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lyh/g;->offer(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/f4$c;->i()V

    :cond_0
    return-void
.end method

.method h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->j:Lth/a;

    invoke-virtual {v0}, Lth/a;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method i()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    check-cast v0, Lio/reactivex/internal/queue/a;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/f4$c;->m:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 4
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/observers/j;->e:Z

    .line 5
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/f4$c;->h()V

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lei/d;

    .line 9
    invoke-virtual {v3, v0}, Lei/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lei/d;

    .line 11
    invoke-virtual {v1}, Lei/d;->onComplete()V

    goto :goto_3

    .line 12
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_4
    if-eqz v7, :cond_5

    neg-int v4, v4

    .line 13
    invoke-virtual {p0, v4}, Lio/reactivex/internal/observers/j;->w(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 14
    :cond_5
    instance-of v5, v6, Lio/reactivex/internal/operators/observable/f4$d;

    if-eqz v5, :cond_8

    .line 15
    check-cast v6, Lio/reactivex/internal/operators/observable/f4$d;

    .line 16
    iget-object v5, v6, Lio/reactivex/internal/operators/observable/f4$d;->a:Lei/d;

    if-eqz v5, :cond_6

    .line 17
    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 18
    iget-object v5, v6, Lio/reactivex/internal/operators/observable/f4$d;->a:Lei/d;

    invoke-virtual {v5}, Lei/d;->onComplete()V

    .line 19
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/f4$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 20
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/f4$c;->h()V

    return-void

    .line 21
    :cond_6
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/f4$c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_0

    .line 22
    :cond_7
    iget v5, p0, Lio/reactivex/internal/operators/observable/f4$c;->i:I

    invoke-static {v5}, Lei/d;->e(I)Lei/d;

    move-result-object v5

    .line 23
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v1, v5}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    .line 25
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/f4$c;->h:Lvh/o;

    iget-object v6, v6, Lio/reactivex/internal/operators/observable/f4$d;->b:Ljava/lang/Object;

    invoke-interface {v7, v6}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The ObservableSource supplied is null"

    invoke-static {v6, v7}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/reactivex/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    new-instance v7, Lio/reactivex/internal/operators/observable/f4$a;

    invoke-direct {v7, p0, v5}, Lio/reactivex/internal/operators/observable/f4$a;-><init>(Lio/reactivex/internal/operators/observable/f4$c;Lei/d;)V

    .line 27
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/f4$c;->j:Lth/a;

    invoke-virtual {v5, v7}, Lth/a;->b(Lth/b;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 28
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/f4$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 29
    invoke-interface {v6, v7}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    .line 30
    invoke-static {v5}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 31
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/f4$c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    invoke-interface {v1, v5}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 33
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lei/d;

    .line 34
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lei/d;->onNext(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method j(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->k:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->j:Lth/a;

    invoke-virtual {v0}, Lth/a;->dispose()V

    .line 3
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/f4$c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method k(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    new-instance v1, Lio/reactivex/internal/operators/observable/f4$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lio/reactivex/internal/operators/observable/f4$d;-><init>(Lei/d;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lyh/g;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/f4$c;->i()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/j;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/observers/j;->e:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/f4$c;->i()V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->j:Lth/a;

    invoke-virtual {v0}, Lth/a;->dispose()V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/observers/j;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/observers/j;->f:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/internal/observers/j;->e:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/f4$c;->i()V

    .line 7
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->j:Lth/a;

    invoke-virtual {v0}, Lth/a;->dispose()V

    .line 9
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lei/d;

    .line 3
    invoke-virtual {v1, p1}, Lei/d;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/j;->w(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lyh/g;->offer(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/f4$c;->i()V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->k:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/f4$c;->k:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/f4$c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Lio/reactivex/internal/operators/observable/f4$b;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/observable/f4$b;-><init>(Lio/reactivex/internal/operators/observable/f4$c;)V

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->l:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f4$c;->g:Lio/reactivex/p;

    invoke-interface {v0, p1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    :cond_1
    return-void
.end method

.method public v(Lio/reactivex/r;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method
