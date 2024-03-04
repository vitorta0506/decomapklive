.class public final Lio/reactivex/internal/operators/observable/x1;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/x1$a;
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
.field final b:Lio/reactivex/c;


# direct methods
.method public constructor <init>(Lio/reactivex/k;Lio/reactivex/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;",
            "Lio/reactivex/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/x1;->b:Lio/reactivex/c;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/x1$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/x1$a;-><init>(Lio/reactivex/r;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/x1;->b:Lio/reactivex/c;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/x1$a;->c:Lio/reactivex/internal/operators/observable/x1$a$a;

    invoke-interface {p1, v0}, Lio/reactivex/c;->a(Lio/reactivex/b;)V

    return-void
.end method
