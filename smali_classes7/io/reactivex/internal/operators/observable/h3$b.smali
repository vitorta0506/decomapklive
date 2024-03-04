.class final Lio/reactivex/internal/operators/observable/h3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/h3;
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
        "Ljava/lang/Object;",
        "Lio/reactivex/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field c:Lth/b;

.field volatile d:Z

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/r;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;",
            "Lio/reactivex/internal/disposables/ArrayCompositeDisposable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h3$b;->a:Lio/reactivex/r;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/h3$b;->b:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$b;->b:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$b;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$b;->b:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$b;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/h3$b;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$b;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/h3$b;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/h3$b;->e:Z

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$b;->a:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onNext(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$b;->c:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h3$b;->c:Lth/b;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$b;->b:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILth/b;)Z

    :cond_0
    return-void
.end method
