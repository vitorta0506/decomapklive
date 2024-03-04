.class public final Lio/reactivex/internal/operators/observable/h3;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/h3$a;,
        Lio/reactivex/internal/operators/observable/h3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lio/reactivex/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lio/reactivex/p<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/h3;->b:Lio/reactivex/p;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/d;

    invoke-direct {v0, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/r;)V

    .line 2
    new-instance p1, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;-><init>(I)V

    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/observers/d;->onSubscribe(Lth/b;)V

    .line 4
    new-instance v1, Lio/reactivex/internal/operators/observable/h3$b;

    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/operators/observable/h3$b;-><init>(Lio/reactivex/r;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;)V

    .line 5
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/h3;->b:Lio/reactivex/p;

    new-instance v3, Lio/reactivex/internal/operators/observable/h3$a;

    invoke-direct {v3, p0, p1, v1, v0}, Lio/reactivex/internal/operators/observable/h3$a;-><init>(Lio/reactivex/internal/operators/observable/h3;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;Lio/reactivex/internal/operators/observable/h3$b;Lio/reactivex/observers/d;)V

    invoke-interface {v2, v3}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    .line 6
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
