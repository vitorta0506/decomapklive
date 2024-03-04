.class public final Lio/reactivex/internal/operators/observable/h2;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/h2$b;,
        Lio/reactivex/internal/operators/observable/h2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;"
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
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/h2;->b:Lvh/o;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lei/a;->e()Lei/a;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/h2;->b:Lvh/o;

    invoke-interface {v1, v0}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The selector returned a null ObservableSource"

    invoke-static {v1, v2}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v2, Lio/reactivex/internal/operators/observable/h2$b;

    invoke-direct {v2, p1}, Lio/reactivex/internal/operators/observable/h2$b;-><init>(Lio/reactivex/r;)V

    .line 4
    invoke-interface {v1, v2}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/h2$a;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/h2$a;-><init>(Lei/a;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p1, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/r;)V

    return-void
.end method
