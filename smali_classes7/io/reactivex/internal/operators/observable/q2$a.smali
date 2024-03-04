.class final Lio/reactivex/internal/operators/observable/q2$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/q2$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Lth/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xb23eb3635d55cf6L


# instance fields
.field final a:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final c:Lio/reactivex/internal/util/AtomicThrowable;

.field final d:Lei/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lei/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lio/reactivex/internal/operators/observable/q2$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/q2$a<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lth/b;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile h:Z


# direct methods
.method constructor <init>(Lio/reactivex/r;Lei/c;Lio/reactivex/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;",
            "Lei/c<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/reactivex/p<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q2$a;->a:Lio/reactivex/r;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/q2$a;->d:Lei/c;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/q2$a;->g:Lio/reactivex/p;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q2$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q2$a;->c:Lio/reactivex/internal/util/AtomicThrowable;

    .line 7
    new-instance p1, Lio/reactivex/internal/operators/observable/q2$a$a;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/observable/q2$a$a;-><init>(Lio/reactivex/internal/operators/observable/q2$a;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q2$a;->e:Lio/reactivex/internal/operators/observable/q2$a$a;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q2$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->a:Lio/reactivex/r;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/q2$a;->c:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/g;->b(Lio/reactivex/r;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->a:Lio/reactivex/r;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/q2$a;->c:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/g;->d(Lio/reactivex/r;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method c()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/q2$a;->d()V

    return-void
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/q2$a;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->h:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->h:Z

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->g:Lio/reactivex/p;

    invoke-interface {v0, p0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    .line 6
    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->e:Lio/reactivex/internal/operators/observable/q2$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lth/b;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lth/b;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->h:Z

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/q2$a;->d:Lei/c;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->e:Lio/reactivex/internal/operators/observable/q2$a$a;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->a:Lio/reactivex/r;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/q2$a;->c:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/g;->d(Lio/reactivex/r;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->a:Lio/reactivex/r;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/q2$a;->c:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/g;->f(Lio/reactivex/r;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/AtomicThrowable;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q2$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    return-void
.end method
