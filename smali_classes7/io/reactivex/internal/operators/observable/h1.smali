.class public final Lio/reactivex/internal/operators/observable/h1;
.super Lio/reactivex/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/h1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TS;>;"
        }
    .end annotation
.end field

.field final b:Lvh/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/c<",
            "TS;",
            "Lio/reactivex/d<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field final c:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lvh/c;Lvh/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "Lvh/c<",
            "TS;",
            "Lio/reactivex/d<",
            "TT;>;TS;>;",
            "Lvh/g<",
            "-TS;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/h1;->a:Ljava/util/concurrent/Callable;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/h1;->b:Lvh/c;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/h1;->c:Lvh/g;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h1;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/observable/h1$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/h1;->b:Lvh/c;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/h1;->c:Lvh/g;

    invoke-direct {v1, p1, v2, v3, v0}, Lio/reactivex/internal/operators/observable/h1$a;-><init>(Lio/reactivex/r;Lvh/c;Lvh/g;Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1, v1}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 4
    invoke-virtual {v1}, Lio/reactivex/internal/operators/observable/h1$a;->c()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/r;)V

    return-void
.end method
