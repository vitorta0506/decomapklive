.class public final Lio/reactivex/internal/operators/observable/a4;
.super Lio/reactivex/t;
.source "SourceFile"

# interfaces
.implements Lyh/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/a4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
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
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/t;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/a4;->a:Lio/reactivex/p;

    .line 3
    invoke-static {p2}, Lxh/a;->e(I)Ljava/util/concurrent/Callable;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/a4;->b:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/p;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lio/reactivex/t;-><init>()V

    .line 5
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/a4;->a:Lio/reactivex/p;

    .line 6
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/a4;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public b()Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/z3;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/a4;->a:Lio/reactivex/p;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/a4;->b:Ljava/util/concurrent/Callable;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/observable/z3;-><init>(Lio/reactivex/p;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public e(Lio/reactivex/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/u<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a4;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {v0, v1}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/a4;->a:Lio/reactivex/p;

    new-instance v2, Lio/reactivex/internal/operators/observable/a4$a;

    invoke-direct {v2, p1, v0}, Lio/reactivex/internal/operators/observable/a4$a;-><init>(Lio/reactivex/u;Ljava/util/Collection;)V

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
