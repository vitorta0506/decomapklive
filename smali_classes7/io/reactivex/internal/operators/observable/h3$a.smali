.class final Lio/reactivex/internal/operators/observable/h3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/h3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/r<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field final b:Lio/reactivex/internal/operators/observable/h3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/h3$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/observers/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observers/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field d:Lth/b;

.field final synthetic e:Lio/reactivex/internal/operators/observable/h3;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/h3;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;Lio/reactivex/internal/operators/observable/h3$b;Lio/reactivex/observers/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/disposables/ArrayCompositeDisposable;",
            "Lio/reactivex/internal/operators/observable/h3$b<",
            "TT;>;",
            "Lio/reactivex/observers/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h3$a;->e:Lio/reactivex/internal/operators/observable/h3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/h3$a;->a:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/h3$a;->b:Lio/reactivex/internal/operators/observable/h3$b;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/h3$a;->c:Lio/reactivex/observers/d;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$a;->b:Lio/reactivex/internal/operators/observable/h3$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/observable/h3$b;->d:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$a;->a:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$a;->c:Lio/reactivex/observers/d;

    invoke-virtual {v0, p1}, Lio/reactivex/observers/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/h3$a;->d:Lth/b;

    invoke-interface {p1}, Lth/b;->dispose()V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/h3$a;->b:Lio/reactivex/internal/operators/observable/h3$b;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/reactivex/internal/operators/observable/h3$b;->d:Z

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$a;->d:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h3$a;->d:Lth/b;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h3$a;->a:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILth/b;)Z

    :cond_0
    return-void
.end method
