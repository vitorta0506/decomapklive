.class public final Lio/reactivex/internal/operators/observable/q1;
.super Lio/reactivex/k;
.source "SourceFile"

# interfaces
.implements Lyh/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k<",
        "TT;>;",
        "Lyh/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q1;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q1;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/q1;->a:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;-><init>(Lio/reactivex/r;Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->run()V

    return-void
.end method
