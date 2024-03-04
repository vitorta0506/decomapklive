.class final Lio/reactivex/internal/operators/observable/x0$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lth/b;
.implements Lio/reactivex/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/x0$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lth/b;",
        "Lio/reactivex/r<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x752c1ce874ed53bfL


# instance fields
.field final a:Lio/reactivex/b;

.field final b:Lio/reactivex/internal/util/AtomicThrowable;

.field final c:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:Lth/a;

.field f:Lth/b;

.field volatile g:Z


# direct methods
.method constructor <init>(Lio/reactivex/b;Lvh/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/b;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/x0$a;->a:Lio/reactivex/b;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/x0$a;->c:Lvh/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/x0$a;->d:Z

    .line 5
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/x0$a;->b:Lio/reactivex/internal/util/AtomicThrowable;

    .line 6
    new-instance p1, Lth/a;

    invoke-direct {p1}, Lth/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/x0$a;->e:Lth/a;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/internal/operators/observable/x0$a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/x0$a<",
            "TT;>.a;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->e:Lth/a;

    invoke-virtual {v0, p1}, Lth/a;->c(Lth/b;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/x0$a;->onComplete()V

    return-void
.end method

.method b(Lio/reactivex/internal/operators/observable/x0$a$a;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/x0$a<",
            "TT;>.a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->e:Lth/a;

    invoke-virtual {v0, p1}, Lth/a;->c(Lth/b;)Z

    .line 2
    invoke-virtual {p0, p2}, Lio/reactivex/internal/operators/observable/x0$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->g:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->f:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->e:Lth/a;

    invoke-virtual {v0}, Lth/a;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->f:Lth/b;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->b:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/x0$a;->a:Lio/reactivex/b;

    invoke-interface {v1, v0}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->a:Lio/reactivex/b;

    invoke-interface {v0}, Lio/reactivex/b;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->b:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/x0$a;->d:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/x0$a;->b:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->a:Lio/reactivex/b;

    invoke-interface {v0, p1}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/x0$a;->dispose()V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/x0$a;->b:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->a:Lio/reactivex/b;

    invoke-interface {v0, p1}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
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
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->c:Lvh/o;

    invoke-interface {v0, p1}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/observable/x0$a$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/x0$a$a;-><init>(Lio/reactivex/internal/operators/observable/x0$a;)V

    .line 4
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/x0$a;->g:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/x0$a;->e:Lth/a;

    invoke-virtual {v1, v0}, Lth/a;->b(Lth/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Lio/reactivex/c;->a(Lio/reactivex/b;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->f:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 8
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/x0$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0$a;->f:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/x0$a;->f:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/x0$a;->a:Lio/reactivex/b;

    invoke-interface {p1, p0}, Lio/reactivex/b;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method
