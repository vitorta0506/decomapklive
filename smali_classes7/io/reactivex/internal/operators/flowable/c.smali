.class final Lio/reactivex/internal/operators/flowable/c;
.super Luh/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Luh/a<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field final c:Lio/reactivex/internal/operators/flowable/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/d<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/reactivex/internal/operators/flowable/d<",
            "TT;TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Luh/a;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/c;->c:Lio/reactivex/internal/operators/flowable/d;

    return-void
.end method

.method public static i(Ljava/lang/Object;ILio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;Z)Lio/reactivex/internal/operators/flowable/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber<",
            "*TK;TT;>;Z)",
            "Lio/reactivex/internal/operators/flowable/c<",
            "TK;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/flowable/d;

    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/internal/operators/flowable/d;-><init>(ILio/reactivex/internal/operators/flowable/FlowableGroupBy$GroupBySubscriber;Ljava/lang/Object;Z)V

    .line 2
    new-instance p1, Lio/reactivex/internal/operators/flowable/c;

    invoke-direct {p1, p0, v0}, Lio/reactivex/internal/operators/flowable/c;-><init>(Ljava/lang/Object;Lio/reactivex/internal/operators/flowable/d;)V

    return-object p1
.end method


# virtual methods
.method protected h(Lil/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lil/b<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/c;->c:Lio/reactivex/internal/operators/flowable/d;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/d;->a(Lil/b;)V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/c;->c:Lio/reactivex/internal/operators/flowable/d;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/d;->onComplete()V

    return-void
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/c;->c:Lio/reactivex/internal/operators/flowable/d;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/d;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/c;->c:Lio/reactivex/internal/operators/flowable/d;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/d;->onNext(Ljava/lang/Object;)V

    return-void
.end method
