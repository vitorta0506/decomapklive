.class final Lio/reactivex/internal/operators/observable/b2$a;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "TT;>;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b45d4a143741ca0L


# instance fields
.field final a:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/s$c;

.field final c:Z

.field final d:I

.field e:Lyh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyh/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field f:Lth/b;

.field g:Ljava/lang/Throwable;

.field volatile h:Z

.field volatile i:Z

.field j:I

.field k:Z


# direct methods
.method constructor <init>(Lio/reactivex/r;Lio/reactivex/s$c;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;",
            "Lio/reactivex/s$c;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->a:Lio/reactivex/r;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/b2$a;->b:Lio/reactivex/s$c;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/b2$a;->c:Z

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/observable/b2$a;->d:I

    return-void
.end method


# virtual methods
.method b(ZZLio/reactivex/r;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex/r<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->e:Lyh/g;

    invoke-interface {p1}, Lyh/g;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->g:Ljava/lang/Throwable;

    .line 4
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->c:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    .line 5
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/b2$a;->i:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p3, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p3}, Lio/reactivex/r;->onComplete()V

    .line 8
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->b:Lio/reactivex/s$c;

    invoke-interface {p1}, Lth/b;->dispose()V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 9
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/b2$a;->i:Z

    .line 10
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/b2$a;->e:Lyh/g;

    invoke-interface {p2}, Lyh/g;->clear()V

    .line 11
    invoke-interface {p3, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    .line 12
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->b:Lio/reactivex/s$c;

    invoke-interface {p1}, Lth/b;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 13
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/b2$a;->i:Z

    .line 14
    invoke-interface {p3}, Lio/reactivex/r;->onComplete()V

    .line 15
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->b:Lio/reactivex/s$c;

    invoke-interface {p1}, Lth/b;->dispose()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method c()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :cond_0
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/b2$a;->i:Z

    if-eqz v2, :cond_1

    return-void

    .line 2
    :cond_1
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/b2$a;->h:Z

    .line 3
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/b2$a;->g:Ljava/lang/Throwable;

    .line 4
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/b2$a;->c:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 5
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->i:Z

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->a:Lio/reactivex/r;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/b2$a;->g:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->b:Lio/reactivex/s$c;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void

    .line 8
    :cond_2
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/b2$a;->a:Lio/reactivex/r;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    .line 9
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->i:Z

    .line 10
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/b2$a;->a:Lio/reactivex/r;

    invoke-interface {v1, v0}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    .line 13
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->b:Lio/reactivex/s$c;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void

    :cond_4
    neg-int v1, v1

    .line 14
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->e:Lyh/g;

    invoke-interface {v0}, Lyh/g;->clear()V

    return-void
.end method

.method d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->e:Lyh/g;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/b2$a;->a:Lio/reactivex/r;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 3
    :cond_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/b2$a;->h:Z

    invoke-interface {v0}, Lyh/g;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, Lio/reactivex/internal/operators/observable/b2$a;->b(ZZLio/reactivex/r;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/b2$a;->h:Z

    .line 5
    :try_start_0
    invoke-interface {v0}, Lyh/g;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 6
    :goto_1
    invoke-virtual {p0, v4, v6, v1}, Lio/reactivex/internal/operators/observable/b2$a;->b(ZZLio/reactivex/r;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    if-eqz v6, :cond_4

    neg-int v3, v3

    .line 7
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 8
    :cond_4
    invoke-interface {v1, v5}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 9
    invoke-static {v3}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 10
    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/b2$a;->i:Z

    .line 11
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/b2$a;->f:Lth/b;

    invoke-interface {v2}, Lth/b;->dispose()V

    .line 12
    invoke-interface {v0}, Lyh/g;->clear()V

    .line 13
    invoke-interface {v1, v3}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    .line 14
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->b:Lio/reactivex/s$c;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->i:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->f:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->b:Lio/reactivex/s$c;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 5
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->e:Lyh/g;

    invoke-interface {v0}, Lyh/g;->clear()V

    :cond_0
    return-void
.end method

.method f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->b:Lio/reactivex/s$c;

    invoke-virtual {v0, p0}, Lio/reactivex/s$c;->c(Ljava/lang/Runnable;)Lth/b;

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->i:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->e:Lyh/g;

    invoke-interface {v0}, Lyh/g;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->h:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/b2$a;->f()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->g:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->h:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/b2$a;->f()V

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->e:Lyh/g;

    invoke-interface {v0, p1}, Lyh/g;->offer(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/b2$a;->f()V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->f:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->f:Lth/b;

    .line 3
    instance-of v0, p1, Lyh/b;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lyh/b;

    const/4 v0, 0x7

    .line 5
    invoke-interface {p1, v0}, Lyh/c;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->j:I

    .line 7
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->e:Lyh/g;

    .line 8
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/b2$a;->h:Z

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/b2$a;->f()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11
    iput v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->j:I

    .line 12
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->e:Lyh/g;

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Lio/reactivex/internal/queue/b;

    iget v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->d:I

    invoke-direct {p1, v0}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->e:Lyh/g;

    .line 15
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    :cond_2
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->e:Lyh/g;

    invoke-interface {v0}, Lyh/g;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/b2$a;->k:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/b2$a;->k:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/b2$a;->c()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/b2$a;->d()V

    :goto_0
    return-void
.end method
