.class public final Lio/reactivex/internal/operators/observable/x3;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/x3$d;,
        Lio/reactivex/internal/operators/observable/x3$a;,
        Lio/reactivex/internal/operators/observable/x3$b;,
        Lio/reactivex/internal/operators/observable/x3$e;,
        Lio/reactivex/internal/operators/observable/x3$c;
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

.field final e:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/k;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Lio/reactivex/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "Lio/reactivex/p<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/x3;->b:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/x3;->c:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/x3;->d:Lio/reactivex/s;

    .line 5
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/x3;->e:Lio/reactivex/p;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x3;->e:Lio/reactivex/p;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/x3$c;

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/x3;->b:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/x3;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/x3;->d:Lio/reactivex/s;

    invoke-virtual {v3}, Lio/reactivex/s;->b()Lio/reactivex/s$c;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/reactivex/internal/operators/observable/x3$c;-><init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s$c;)V

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/observable/x3$c;->c(J)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/x3$b;

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/x3;->b:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/x3;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/x3;->d:Lio/reactivex/s;

    invoke-virtual {v3}, Lio/reactivex/s;->b()Lio/reactivex/s$c;

    move-result-object v8

    iget-object v9, p0, Lio/reactivex/internal/operators/observable/x3;->e:Lio/reactivex/p;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lio/reactivex/internal/operators/observable/x3$b;-><init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s$c;Lio/reactivex/p;)V

    .line 7
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/observable/x3$b;->c(J)V

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    :goto_0
    return-void
.end method
