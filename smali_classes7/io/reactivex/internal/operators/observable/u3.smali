.class public final Lio/reactivex/internal/operators/observable/u3;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/u3$a;
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
.method public constructor <init>(Lio/reactivex/k;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/u3;->b:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/u3;->c:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/u3;->d:Lio/reactivex/s;

    .line 5
    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/u3;->e:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v8, Lio/reactivex/internal/operators/observable/u3$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/u3;->b:J

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/u3;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/u3;->d:Lio/reactivex/s;

    invoke-virtual {v1}, Lio/reactivex/s;->b()Lio/reactivex/s$c;

    move-result-object v6

    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/u3;->e:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/u3$a;-><init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s$c;Z)V

    invoke-interface {v0, v8}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
