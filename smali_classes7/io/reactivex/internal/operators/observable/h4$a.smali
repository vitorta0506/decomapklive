.class final Lio/reactivex/internal/operators/observable/h4$a;
.super Lio/reactivex/internal/observers/j;
.source "SourceFile"

# interfaces
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/h4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/h4$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;

.field final i:Lio/reactivex/s;

.field final j:I

.field final k:Z

.field final l:J

.field final m:Lio/reactivex/s$c;

.field n:J

.field o:J

.field p:Lth/b;

.field q:Lei/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lei/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile r:Z

.field final s:Lio/reactivex/internal/disposables/SequentialDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;IJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "IJZ)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/queue/a;

    invoke-direct {v0}, Lio/reactivex/internal/queue/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/observers/j;-><init>(Lio/reactivex/r;Lyh/f;)V

    .line 2
    new-instance p1, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h4$a;->s:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/h4$a;->g:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/h4$a;->h:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/h4$a;->i:Lio/reactivex/s;

    .line 6
    iput p6, p0, Lio/reactivex/internal/operators/observable/h4$a;->j:I

    .line 7
    iput-wide p7, p0, Lio/reactivex/internal/operators/observable/h4$a;->l:J

    .line 8
    iput-boolean p9, p0, Lio/reactivex/internal/operators/observable/h4$a;->k:Z

    if-eqz p9, :cond_0

    .line 9
    invoke-virtual {p5}, Lio/reactivex/s;->b()Lio/reactivex/s$c;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h4$a;->m:Lio/reactivex/s$c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h4$a;->m:Lio/reactivex/s$c;

    :goto_0
    return-void
.end method

.method static synthetic g(Lio/reactivex/internal/operators/observable/h4$a;)Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/internal/observers/j;->d:Z

    return p0
.end method

.method static synthetic h(Lio/reactivex/internal/operators/observable/h4$a;)Lyh/f;
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/observers/j;->d:Z

    return-void
.end method

.method i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$a;->s:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$a;->m:Lio/reactivex/s$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lth/b;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/observers/j;->d:Z

    return v0
.end method

.method j()V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    check-cast v0, Lio/reactivex/internal/queue/a;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/h4$a;->q:Lei/d;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 4
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/h4$a;->r:Z

    if-eqz v5, :cond_1

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/h4$a;->p:Lth/b;

    invoke-interface {v1}, Lth/b;->dispose()V

    .line 6
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->clear()V

    .line 7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/h4$a;->i()V

    return-void

    .line 8
    :cond_1
    iget-boolean v5, p0, Lio/reactivex/internal/observers/j;->e:Z

    .line 9
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 10
    :goto_1
    instance-of v8, v6, Lio/reactivex/internal/operators/observable/h4$a$a;

    if-eqz v5, :cond_5

    if-nez v7, :cond_3

    if-eqz v8, :cond_5

    :cond_3
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/h4$a;->q:Lei/d;

    .line 12
    invoke-virtual {v0}, Lio/reactivex/internal/queue/a;->clear()V

    .line 13
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->f:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v2, v0}, Lei/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v2}, Lei/d;->onComplete()V

    .line 16
    :goto_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/h4$a;->i()V

    return-void

    :cond_5
    if-eqz v7, :cond_6

    neg-int v4, v4

    .line 17
    invoke-virtual {p0, v4}, Lio/reactivex/internal/observers/j;->w(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_6
    const-wide/16 v9, 0x0

    if-eqz v8, :cond_8

    .line 18
    check-cast v6, Lio/reactivex/internal/operators/observable/h4$a$a;

    .line 19
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/h4$a;->k:Z

    if-eqz v5, :cond_7

    iget-wide v7, p0, Lio/reactivex/internal/operators/observable/h4$a;->o:J

    iget-wide v5, v6, Lio/reactivex/internal/operators/observable/h4$a$a;->a:J

    cmp-long v11, v7, v5

    if-nez v11, :cond_0

    .line 20
    :cond_7
    invoke-virtual {v2}, Lei/d;->onComplete()V

    .line 21
    iput-wide v9, p0, Lio/reactivex/internal/operators/observable/h4$a;->n:J

    .line 22
    iget v2, p0, Lio/reactivex/internal/operators/observable/h4$a;->j:I

    invoke-static {v2}, Lei/d;->e(I)Lei/d;

    move-result-object v2

    .line 23
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/h4$a;->q:Lei/d;

    .line 24
    invoke-interface {v1, v2}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 25
    :cond_8
    invoke-static {v6}, Lio/reactivex/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lei/d;->onNext(Ljava/lang/Object;)V

    .line 26
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/h4$a;->n:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 27
    iget-wide v11, p0, Lio/reactivex/internal/operators/observable/h4$a;->l:J

    cmp-long v13, v5, v11

    if-ltz v13, :cond_9

    .line 28
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/h4$a;->o:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/h4$a;->o:J

    .line 29
    iput-wide v9, p0, Lio/reactivex/internal/operators/observable/h4$a;->n:J

    .line 30
    invoke-virtual {v2}, Lei/d;->onComplete()V

    .line 31
    iget v2, p0, Lio/reactivex/internal/operators/observable/h4$a;->j:I

    invoke-static {v2}, Lei/d;->e(I)Lei/d;

    move-result-object v2

    .line 32
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/h4$a;->q:Lei/d;

    .line 33
    iget-object v5, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    invoke-interface {v5, v2}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    .line 34
    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/h4$a;->k:Z

    if-eqz v5, :cond_0

    .line 35
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/h4$a;->s:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lth/b;

    .line 36
    invoke-interface {v5}, Lth/b;->dispose()V

    .line 37
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/h4$a;->m:Lio/reactivex/s$c;

    new-instance v7, Lio/reactivex/internal/operators/observable/h4$a$a;

    iget-wide v8, p0, Lio/reactivex/internal/operators/observable/h4$a;->o:J

    invoke-direct {v7, v8, v9, p0}, Lio/reactivex/internal/operators/observable/h4$a$a;-><init>(JLio/reactivex/internal/operators/observable/h4$a;)V

    iget-wide v10, p0, Lio/reactivex/internal/operators/observable/h4$a;->g:J

    iget-object v12, p0, Lio/reactivex/internal/operators/observable/h4$a;->h:Ljava/util/concurrent/TimeUnit;

    move-wide v8, v10

    invoke-virtual/range {v6 .. v12}, Lio/reactivex/s$c;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lth/b;

    move-result-object v6

    .line 38
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/h4$a;->s:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 39
    invoke-interface {v6}, Lth/b;->dispose()V

    goto/16 :goto_0

    .line 40
    :cond_9
    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/h4$a;->n:J

    goto/16 :goto_0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/observers/j;->e:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/h4$a;->j()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/observers/j;->f:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/observers/j;->e:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/h4$a;->j()V

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/h4$a;->r:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$a;->q:Lei/d;

    .line 4
    invoke-virtual {v0, p1}, Lei/d;->onNext(Ljava/lang/Object;)V

    .line 5
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/h4$a;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 6
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/h4$a;->l:J

    cmp-long p1, v1, v5

    if-ltz p1, :cond_1

    .line 7
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/h4$a;->o:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/h4$a;->o:J

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/h4$a;->n:J

    .line 9
    invoke-virtual {v0}, Lei/d;->onComplete()V

    .line 10
    iget p1, p0, Lio/reactivex/internal/operators/observable/h4$a;->j:I

    invoke-static {p1}, Lei/d;->e(I)Lei/d;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h4$a;->q:Lei/d;

    .line 12
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    .line 13
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/h4$a;->k:Z

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/h4$a;->s:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lth/b;

    .line 15
    invoke-interface {p1}, Lth/b;->dispose()V

    .line 16
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$a;->m:Lio/reactivex/s$c;

    new-instance v1, Lio/reactivex/internal/operators/observable/h4$a$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/h4$a;->o:J

    invoke-direct {v1, v2, v3, p0}, Lio/reactivex/internal/operators/observable/h4$a$a;-><init>(JLio/reactivex/internal/operators/observable/h4$a;)V

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/h4$a;->g:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/h4$a;->h:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/s$c;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lth/b;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$a;->s:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    goto :goto_0

    .line 18
    :cond_1
    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/h4$a;->n:J

    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 19
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/j;->w(I)I

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 20
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/observers/j;->c:Lyh/f;

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lyh/g;->offer(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p0}, Lio/reactivex/internal/observers/j;->b()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 22
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/h4$a;->j()V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$a;->p:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h4$a;->p:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/observers/j;->b:Lio/reactivex/r;

    .line 4
    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 5
    iget-boolean v0, p0, Lio/reactivex/internal/observers/j;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/observable/h4$a;->j:I

    invoke-static {v0}, Lei/d;->e(I)Lei/d;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/h4$a;->q:Lei/d;

    .line 8
    invoke-interface {p1, v0}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    .line 9
    new-instance v2, Lio/reactivex/internal/operators/observable/h4$a$a;

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/h4$a;->o:J

    invoke-direct {v2, v0, v1, p0}, Lio/reactivex/internal/operators/observable/h4$a$a;-><init>(JLio/reactivex/internal/operators/observable/h4$a;)V

    .line 10
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/h4$a;->k:Z

    if-eqz p1, :cond_1

    .line 11
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/h4$a;->m:Lio/reactivex/s$c;

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/h4$a;->g:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/h4$a;->h:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/s$c;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lth/b;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/h4$a;->i:Lio/reactivex/s;

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/h4$a;->g:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/h4$a;->h:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lio/reactivex/s;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lth/b;

    move-result-object p1

    .line 13
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4$a;->s:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lth/b;)Z

    :cond_2
    return-void
.end method
