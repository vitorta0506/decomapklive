.class public final Lio/reactivex/internal/operators/observable/p2;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/p2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lvh/e;


# direct methods
.method public constructor <init>(Lio/reactivex/k;Lvh/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;",
            "Lvh/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/p2;->b:Lvh/e;

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
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    new-instance v1, Lio/reactivex/internal/operators/observable/p2$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/p2;->b:Lvh/e;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-direct {v1, p1, v2, v0, v3}, Lio/reactivex/internal/operators/observable/p2$a;-><init>(Lio/reactivex/r;Lvh/e;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/p;)V

    .line 4
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/p2$a;->a()V

    return-void
.end method
