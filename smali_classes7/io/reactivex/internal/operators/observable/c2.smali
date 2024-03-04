.class public final Lio/reactivex/internal/operators/observable/c2;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/c2$a;
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
.field final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lvh/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lvh/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/p<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/c2;->b:Lvh/o;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/c2;->c:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/c2$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/c2;->b:Lvh/o;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/c2;->c:Z

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/observable/c2$a;-><init>(Lio/reactivex/r;Lvh/o;Z)V

    .line 2
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/c2$a;->d:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-interface {p1, v1}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
