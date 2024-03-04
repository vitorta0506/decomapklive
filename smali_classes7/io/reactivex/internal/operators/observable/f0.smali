.class public final Lio/reactivex/internal/operators/observable/f0;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/f0$a;
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

.field final e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/p;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/f0;->b:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/f0;->c:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/f0;->d:Lio/reactivex/s;

    .line 5
    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/f0;->e:Z

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
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/f0;->e:Z

    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/observers/d;

    invoke-direct {v0, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/r;)V

    move-object v2, v0

    .line 3
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/f0;->d:Lio/reactivex/s;

    invoke-virtual {p1}, Lio/reactivex/s;->b()Lio/reactivex/s$c;

    move-result-object v6

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v0, Lio/reactivex/internal/operators/observable/f0$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/f0;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/f0;->c:Ljava/util/concurrent/TimeUnit;

    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/f0;->e:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/f0$a;-><init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s$c;Z)V

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
