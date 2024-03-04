.class public final Lio/reactivex/internal/operators/observable/m2;
.super Lio/reactivex/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/t<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field

.field final c:Lvh/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Ljava/util/concurrent/Callable;Lvh/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lvh/c<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/t;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/m2;->a:Lio/reactivex/p;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/m2;->b:Ljava/util/concurrent/Callable;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/m2;->c:Lvh/c;

    return-void
.end method


# virtual methods
.method protected e(Lio/reactivex/u;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/u<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m2;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The seedSupplier returned a null value"

    invoke-static {v0, v1}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m2;->a:Lio/reactivex/p;

    new-instance v2, Lio/reactivex/internal/operators/observable/l2$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/m2;->c:Lvh/c;

    invoke-direct {v2, p1, v3, v0}, Lio/reactivex/internal/operators/observable/l2$a;-><init>(Lio/reactivex/u;Lvh/c;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/u;)V

    return-void
.end method
