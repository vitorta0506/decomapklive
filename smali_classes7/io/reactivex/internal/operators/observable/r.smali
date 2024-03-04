.class public final Lio/reactivex/internal/operators/observable/r;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TU;>;"
        }
    .end annotation
.end field

.field final c:Lvh/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/b<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Ljava/util/concurrent/Callable;Lvh/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "Lvh/b<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/r;->b:Ljava/util/concurrent/Callable;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/r;->c:Lvh/b;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initialSupplier returned a null value"

    invoke-static {v0, v1}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v2, Lio/reactivex/internal/operators/observable/r$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/r;->c:Lvh/b;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/observable/r$a;-><init>(Lio/reactivex/r;Ljava/lang/Object;Lvh/b;)V

    invoke-interface {v1, v2}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/r;)V

    return-void
.end method
