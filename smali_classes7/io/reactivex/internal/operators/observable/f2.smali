.class public final Lio/reactivex/internal/operators/observable/f2;
.super Lbi/a;
.source "SourceFile"

# interfaces
.implements Lwh/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/f2$a;,
        Lio/reactivex/internal/operators/observable/f2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbi/a<",
        "TT;>;",
        "Lwh/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/f2$b<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lbi/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/f2;->a:Lio/reactivex/p;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/f2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public b(Lth/b;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lio/reactivex/internal/operators/observable/f2$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lvh/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-",
            "Lth/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/f2$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/f2$b;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/observable/f2$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/f2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/observable/f2$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/f2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 5
    :cond_2
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/f2$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/f2$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, Lvh/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/f2;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p1}, Lio/reactivex/internal/util/f;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
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
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/observable/f2$b;

    if-nez v0, :cond_1

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/observable/f2$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/f2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Lio/reactivex/internal/operators/observable/f2$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 3
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/f2;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :cond_1
    new-instance v1, Lio/reactivex/internal/operators/observable/f2$a;

    invoke-direct {v1, p1, v0}, Lio/reactivex/internal/operators/observable/f2$a;-><init>(Lio/reactivex/r;Lio/reactivex/internal/operators/observable/f2$b;)V

    .line 5
    invoke-interface {p1, v1}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/f2$b;->a(Lio/reactivex/internal/operators/observable/f2$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/f2$a;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/f2$b;->b(Lio/reactivex/internal/operators/observable/f2$a;)V

    :cond_2
    return-void

    .line 9
    :cond_3
    iget-object v0, v0, Lio/reactivex/internal/operators/observable/f2$b;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {p1, v0}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-interface {p1}, Lio/reactivex/r;->onComplete()V

    :goto_1
    return-void
.end method
