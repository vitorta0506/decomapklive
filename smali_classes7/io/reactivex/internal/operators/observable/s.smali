.class public final Lio/reactivex/internal/operators/observable/s;
.super Lio/reactivex/t;
.source "SourceFile"

# interfaces
.implements Lyh/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/t<",
        "TU;>;",
        "Lyh/a<",
        "TU;>;"
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
    invoke-direct {p0}, Lio/reactivex/t;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/s;->a:Lio/reactivex/p;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/s;->b:Ljava/util/concurrent/Callable;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/s;->c:Lvh/b;

    return-void
.end method


# virtual methods
.method public b()Lio/reactivex/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/r;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/s;->a:Lio/reactivex/p;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/s;->b:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/s;->c:Lvh/b;

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/observable/r;-><init>(Lio/reactivex/p;Ljava/util/concurrent/Callable;Lvh/b;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lio/reactivex/u;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/u<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The initialSupplier returned a null value"

    invoke-static {v0, v1}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/s;->a:Lio/reactivex/p;

    new-instance v2, Lio/reactivex/internal/operators/observable/s$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/s;->c:Lvh/b;

    invoke-direct {v2, p1, v0, v3}, Lio/reactivex/internal/operators/observable/s$a;-><init>(Lio/reactivex/u;Ljava/lang/Object;Lvh/b;)V

    invoke-interface {v1, v2}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/u;)V

    return-void
.end method
