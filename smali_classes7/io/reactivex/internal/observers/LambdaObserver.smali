.class public final Lio/reactivex/internal/observers/LambdaObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lth/b;",
        ">;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Lth/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x64a12a8486b15cccL


# instance fields
.field final onComplete:Lvh/a;

.field final onError:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final onSubscribe:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "-",
            "Lth/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvh/g;Lvh/g;Lvh/a;Lvh/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-TT;>;",
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lvh/a;",
            "Lvh/g<",
            "-",
            "Lth/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/observers/LambdaObserver;->onNext:Lvh/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/observers/LambdaObserver;->onError:Lvh/g;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/observers/LambdaObserver;->onComplete:Lvh/a;

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/observers/LambdaObserver;->onSubscribe:Lvh/g;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public hasCustomOnError()Z
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onError:Lvh/g;

    sget-object v1, Lxh/a;->f:Lvh/g;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisposed()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/observers/LambdaObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onComplete:Lvh/a;

    invoke-interface {v0}, Lvh/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    invoke-static {v0}, Lci/a;->s(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/observers/LambdaObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onError:Lvh/g;

    invoke-interface {v0, p1}, Lvh/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 5
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lci/a;->s(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/observers/LambdaObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onNext:Lvh/g;

    invoke-interface {v0, p1}, Lvh/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 5
    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/LambdaObserver;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/observers/LambdaObserver;->onSubscribe:Lvh/g;

    invoke-interface {v0, p0}, Lvh/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-interface {p1}, Lth/b;->dispose()V

    .line 5
    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/LambdaObserver;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
