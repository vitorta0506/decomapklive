.class final Lio/reactivex/internal/operators/observable/c$a;
.super Lio/reactivex/observers/b;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/c;
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
        "Lio/reactivex/observers/b<",
        "Lio/reactivex/j<",
        "TT;>;>;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Semaphore;

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/reactivex/observers/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/c$a;->b:Ljava/util/concurrent/Semaphore;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/c$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/c$a;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a;->a:Lio/reactivex/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/reactivex/j;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a;->a:Lio/reactivex/j;

    invoke-virtual {v0}, Lio/reactivex/j;->d()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/f;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a;->a:Lio/reactivex/j;

    if-nez v0, :cond_3

    .line 4
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/c;->b()V

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/j;

    .line 7
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/c$a;->a:Lio/reactivex/j;

    .line 8
    invoke-virtual {v0}, Lio/reactivex/j;->g()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/j;->d()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/f;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {p0}, Lio/reactivex/observers/b;->dispose()V

    .line 11
    invoke-static {v0}, Lio/reactivex/j;->b(Ljava/lang/Throwable;)Lio/reactivex/j;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/c$a;->a:Lio/reactivex/j;

    .line 12
    invoke-static {v0}, Lio/reactivex/internal/util/f;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a;->a:Lio/reactivex/j;

    invoke-virtual {v0}, Lio/reactivex/j;->h()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/c$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/c$a;->a:Lio/reactivex/j;

    invoke-virtual {v0}, Lio/reactivex/j;->e()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/c$a;->a:Lio/reactivex/j;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/reactivex/j;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/c$a;->a(Lio/reactivex/j;)V

    return-void
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
