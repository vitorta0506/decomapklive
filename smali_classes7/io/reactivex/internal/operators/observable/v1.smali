.class public final Lio/reactivex/internal/operators/observable/v1;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/v1$a;
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
        "TT;",
        "Lio/reactivex/p<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/p<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/p<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lvh/o;Lvh/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;",
            "Lvh/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/p<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lio/reactivex/p<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/v1;->b:Lvh/o;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/v1;->c:Lvh/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/v1;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/p<",
            "+TR;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/v1$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/v1;->b:Lvh/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/v1;->c:Lvh/o;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/v1;->d:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/v1$a;-><init>(Lio/reactivex/r;Lvh/o;Lvh/o;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
