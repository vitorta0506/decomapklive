.class public final Lio/reactivex/internal/operators/observable/q2;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/q2$a;
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
            "Lio/reactivex/k<",
            "Ljava/lang/Object;",
            ">;+",
            "Lio/reactivex/p<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lvh/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "Ljava/lang/Object;",
            ">;+",
            "Lio/reactivex/p<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/q2;->b:Lvh/o;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lei/a;->e()Lei/a;

    move-result-object v0

    invoke-virtual {v0}, Lei/c;->c()Lei/c;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/q2;->b:Lvh/o;

    invoke-interface {v1, v0}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The handler returned a null ObservableSource"

    invoke-static {v1, v2}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v2, Lio/reactivex/internal/operators/observable/q2$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/observable/q2$a;-><init>(Lio/reactivex/r;Lei/c;Lio/reactivex/p;)V

    .line 4
    invoke-interface {p1, v2}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 5
    iget-object p1, v2, Lio/reactivex/internal/operators/observable/q2$a;->e:Lio/reactivex/internal/operators/observable/q2$a$a;

    invoke-interface {v1, p1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    .line 6
    invoke-virtual {v2}, Lio/reactivex/internal/operators/observable/q2$a;->d()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/r;)V

    return-void
.end method
