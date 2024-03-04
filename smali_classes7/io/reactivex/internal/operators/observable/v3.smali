.class public final Lio/reactivex/internal/operators/observable/v3;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/v3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;",
        "Ldi/b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/s;

.field final c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/p;Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/v3;->b:Lio/reactivex/s;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/v3;->c:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Ldi/b<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/v3$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/v3;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/v3;->b:Lio/reactivex/s;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/v3$a;-><init>(Lio/reactivex/r;Ljava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
