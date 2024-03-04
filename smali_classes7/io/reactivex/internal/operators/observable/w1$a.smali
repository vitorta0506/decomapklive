.class final Lio/reactivex/internal/operators/observable/w1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/w1;
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
        "Ljava/lang/Object;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Lth/b;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field b:Lth/b;


# direct methods
.method constructor <init>(Lio/reactivex/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/j<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/w1$a;->a:Lio/reactivex/r;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$a;->b:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$a;->b:Lth/b;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    invoke-static {}, Lio/reactivex/j;->a()Lio/reactivex/j;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/w1$a;->a:Lio/reactivex/r;

    invoke-interface {v1, v0}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$a;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/reactivex/j;->b(Ljava/lang/Throwable;)Lio/reactivex/j;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$a;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/w1$a;->a:Lio/reactivex/r;

    invoke-interface {p1}, Lio/reactivex/r;->onComplete()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$a;->a:Lio/reactivex/r;

    invoke-static {p1}, Lio/reactivex/j;->c(Ljava/lang/Object;)Lio/reactivex/j;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w1$a;->b:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/w1$a;->b:Lth/b;

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/w1$a;->a:Lio/reactivex/r;

    invoke-interface {p1, p0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method
