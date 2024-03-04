.class final Lio/reactivex/internal/operators/observable/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/g0$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/r<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/disposables/SequentialDisposable;

.field final b:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field c:Z

.field final synthetic d:Lio/reactivex/internal/operators/observable/g0;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/g0;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/disposables/SequentialDisposable;",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/g0$a;->d:Lio/reactivex/internal/operators/observable/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/g0$a;->a:Lio/reactivex/internal/disposables/SequentialDisposable;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/g0$a;->b:Lio/reactivex/r;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/g0$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/g0$a;->c:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/g0$a;->d:Lio/reactivex/internal/operators/observable/g0;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/g0;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/g0$a$a;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/observable/g0$a$a;-><init>(Lio/reactivex/internal/operators/observable/g0$a;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/g0$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/g0$a;->c:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/g0$a;->b:Lio/reactivex/r;

    invoke-interface {v0, p1}, Lio/reactivex/r;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/g0$a;->onComplete()V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/g0$a;->a:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->update(Lth/b;)Z

    return-void
.end method
