.class public final Lio/reactivex/internal/operators/observable/j3;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/j3$b;,
        Lio/reactivex/internal/operators/observable/j3$a;
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
.field final b:Lio/reactivex/s;


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lio/reactivex/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lio/reactivex/s;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/j3;->b:Lio/reactivex/s;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/j3$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/j3$a;-><init>(Lio/reactivex/r;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/j3;->b:Lio/reactivex/s;

    new-instance v1, Lio/reactivex/internal/operators/observable/j3$b;

    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/observable/j3$b;-><init>(Lio/reactivex/internal/operators/observable/j3;Lio/reactivex/internal/operators/observable/j3$a;)V

    invoke-virtual {p1, v1}, Lio/reactivex/s;->d(Ljava/lang/Runnable;)Lth/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/j3$a;->a(Lth/b;)V

    return-void
.end method
