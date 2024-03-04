.class public final Lio/reactivex/internal/operators/observable/m;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/m$b;,
        Lio/reactivex/internal/operators/observable/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
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
            "TU;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field final d:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TOpen;+",
            "Lio/reactivex/p<",
            "+TClose;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lio/reactivex/p;Lvh/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lio/reactivex/p<",
            "+TOpen;>;",
            "Lvh/o<",
            "-TOpen;+",
            "Lio/reactivex/p<",
            "+TClose;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/m;->c:Lio/reactivex/p;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/m;->d:Lvh/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/m;->b:Ljava/util/concurrent/Callable;

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
    new-instance v0, Lio/reactivex/internal/operators/observable/m$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/m;->c:Lio/reactivex/p;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/m;->d:Lvh/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/m;->b:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/internal/operators/observable/m$a;-><init>(Lio/reactivex/r;Lio/reactivex/p;Lvh/o;Ljava/util/concurrent/Callable;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
