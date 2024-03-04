.class public final Lio/reactivex/internal/operators/observable/e4;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/e4$a;,
        Lio/reactivex/internal/operators/observable/e4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;",
        "Lio/reactivex/k<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "TB;>;"
        }
    .end annotation
.end field

.field final c:I


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lio/reactivex/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lio/reactivex/p<",
            "TB;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/e4;->b:Lio/reactivex/p;

    .line 3
    iput p3, p0, Lio/reactivex/internal/operators/observable/e4;->c:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/e4$b;

    iget v1, p0, Lio/reactivex/internal/operators/observable/e4;->c:I

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/observable/e4$b;-><init>(Lio/reactivex/r;I)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/e4;->b:Lio/reactivex/p;

    iget-object v1, v0, Lio/reactivex/internal/operators/observable/e4$b;->c:Lio/reactivex/internal/operators/observable/e4$a;

    invoke-interface {p1, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
