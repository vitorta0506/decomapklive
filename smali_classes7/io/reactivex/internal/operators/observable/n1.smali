.class public final Lio/reactivex/internal/operators/observable/n1;
.super Lio/reactivex/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/n1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/k<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/s;

.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/n1;->b:J

    .line 3
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/n1;->c:J

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/n1;->d:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/n1;->a:Lio/reactivex/s;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lio/reactivex/internal/operators/observable/n1$a;

    invoke-direct {v7, p1}, Lio/reactivex/internal/operators/observable/n1$a;-><init>(Lio/reactivex/r;)V

    .line 2
    invoke-interface {p1, v7}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n1;->a:Lio/reactivex/s;

    .line 4
    instance-of p1, v0, Lio/reactivex/internal/schedulers/j;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lio/reactivex/s;->b()Lio/reactivex/s$c;

    move-result-object v0

    .line 6
    invoke-virtual {v7, v0}, Lio/reactivex/internal/operators/observable/n1$a;->b(Lth/b;)V

    .line 7
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/n1;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/n1;->c:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/n1;->d:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/s$c;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lth/b;

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/n1;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/n1;->c:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/n1;->d:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/s;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lth/b;

    move-result-object p1

    .line 9
    invoke-virtual {v7, p1}, Lio/reactivex/internal/operators/observable/n1$a;->b(Lth/b;)V

    :goto_0
    return-void
.end method
