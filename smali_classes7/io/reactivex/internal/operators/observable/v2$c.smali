.class abstract Lio/reactivex/internal/operators/observable/v2$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "TT;>;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Lth/b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x30d108f96c89b153L


# instance fields
.field final a:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/s;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lth/b;",
            ">;"
        }
    .end annotation
.end field

.field f:Lth/b;


# direct methods
.method constructor <init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/v2$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/v2$c;->a:Lio/reactivex/r;

    .line 4
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/v2$c;->b:J

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/v2$c;->c:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/v2$c;->d:Lio/reactivex/s;

    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v2$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method abstract c()V
.end method

.method d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/v2$c;->a:Lio/reactivex/r;

    invoke-interface {v1, v0}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v2$c;->b()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v2$c;->f:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v2$c;->f:Lth/b;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v2$c;->b()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v2$c;->c()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v2$c;->b()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v2$c;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v2$c;->f:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/v2$c;->f:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/v2$c;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v2$c;->d:Lio/reactivex/s;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/v2$c;->b:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/v2$c;->c:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/s;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lth/b;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v2$c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    :cond_0
    return-void
.end method
