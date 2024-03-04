.class final Lio/reactivex/internal/operators/observable/n2$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Lth/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x66f7ddf0554a95a7L


# instance fields
.field final a:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/observable/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/n2<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/operators/observable/n2$a;

.field d:Lth/b;


# direct methods
.method constructor <init>(Lio/reactivex/r;Lio/reactivex/internal/operators/observable/n2;Lio/reactivex/internal/operators/observable/n2$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/observable/n2<",
            "TT;>;",
            "Lio/reactivex/internal/operators/observable/n2$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/n2$b;->a:Lio/reactivex/r;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/n2$b;->b:Lio/reactivex/internal/operators/observable/n2;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/n2$b;->c:Lio/reactivex/internal/operators/observable/n2$a;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2$b;->d:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2$b;->b:Lio/reactivex/internal/operators/observable/n2;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/n2$b;->c:Lio/reactivex/internal/operators/observable/n2$a;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/n2;->c(Lio/reactivex/internal/operators/observable/n2$a;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2$b;->d:Lth/b;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2$b;->b:Lio/reactivex/internal/operators/observable/n2;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/n2$b;->c:Lio/reactivex/internal/operators/observable/n2$a;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/n2;->f(Lio/reactivex/internal/operators/observable/n2$a;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2$b;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2$b;->b:Lio/reactivex/internal/operators/observable/n2;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/n2$b;->c:Lio/reactivex/internal/operators/observable/n2$a;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/n2;->f(Lio/reactivex/internal/operators/observable/n2$a;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2$b;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
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

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2$b;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2$b;->d:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/n2$b;->d:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/n2$b;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method
