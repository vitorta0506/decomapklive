.class final Lio/reactivex/internal/operators/observable/r2$e;
.super Lio/reactivex/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lbi/a<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field private final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TU;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lvh/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lbi/a<",
            "TU;>;>;",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TU;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/r2$e;->a:Ljava/util/concurrent/Callable;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/r2$e;->b:Lvh/o;

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
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r2$e;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The connectableFactory returned a null ConnectableObservable"

    invoke-static {v0, v1}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbi/a;

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/r2$e;->b:Lvh/o;

    invoke-interface {v1, v0}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The selector returned a null ObservableSource"

    invoke-static {v1, v2}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    new-instance v2, Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;

    invoke-direct {v2, p1}, Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;-><init>(Lio/reactivex/r;)V

    .line 4
    invoke-interface {v1, v2}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    .line 5
    new-instance p1, Lio/reactivex/internal/operators/observable/r2$c;

    invoke-direct {p1, v2}, Lio/reactivex/internal/operators/observable/r2$c;-><init>(Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;)V

    invoke-virtual {v0, p1}, Lbi/a;->c(Lvh/g;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/r;)V

    return-void
.end method
