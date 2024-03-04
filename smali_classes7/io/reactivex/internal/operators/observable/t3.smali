.class public final Lio/reactivex/internal/operators/observable/t3;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/t3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/s;


# direct methods
.method public constructor <init>(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/t3;->b:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/t3;->c:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/t3;->d:Lio/reactivex/s;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v7, Lio/reactivex/internal/operators/observable/t3$a;

    new-instance v2, Lio/reactivex/observers/d;

    invoke-direct {v2, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/r;)V

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/t3;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/t3;->c:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/t3;->d:Lio/reactivex/s;

    .line 2
    invoke-virtual {p1}, Lio/reactivex/s;->b()Lio/reactivex/s$c;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/t3$a;-><init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s$c;)V

    .line 3
    invoke-interface {v0, v7}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
