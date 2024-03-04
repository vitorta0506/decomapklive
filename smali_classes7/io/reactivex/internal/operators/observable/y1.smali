.class public final Lio/reactivex/internal/operators/observable/y1;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/y1$a;
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
.field final b:Lio/reactivex/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/i<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/k;Lio/reactivex/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;",
            "Lio/reactivex/i<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/y1;->b:Lio/reactivex/i;

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
    new-instance v0, Lio/reactivex/internal/operators/observable/y1$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/y1$a;-><init>(Lio/reactivex/r;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/y1;->b:Lio/reactivex/i;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/y1$a;->c:Lio/reactivex/internal/operators/observable/y1$a$a;

    invoke-interface {p1, v0}, Lio/reactivex/i;->a(Lio/reactivex/h;)V

    return-void
.end method
