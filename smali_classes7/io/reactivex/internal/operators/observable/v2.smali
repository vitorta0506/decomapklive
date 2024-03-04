.class public final Lio/reactivex/internal/operators/observable/v2;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/v2$a;,
        Lio/reactivex/internal/operators/observable/v2$b;,
        Lio/reactivex/internal/operators/observable/v2$c;
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
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/v2;->b:J

    .line 3
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/v2;->c:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/v2;->d:Lio/reactivex/s;

    .line 5
    iput-boolean p6, p0, Lio/reactivex/internal/operators/observable/v2;->e:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v1, Lio/reactivex/observers/d;

    invoke-direct {v1, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/r;)V

    .line 2
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/v2;->e:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v6, Lio/reactivex/internal/operators/observable/v2$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/v2;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/v2;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/v2;->d:Lio/reactivex/s;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/v2$a;-><init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    invoke-interface {p1, v6}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v6, Lio/reactivex/internal/operators/observable/v2$b;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/v2;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/v2;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/v2;->d:Lio/reactivex/s;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/v2$b;-><init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    invoke-interface {p1, v6}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    :goto_0
    return-void
.end method
