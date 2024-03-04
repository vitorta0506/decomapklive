.class public final Lio/reactivex/internal/operators/observable/y3;
.super Lio/reactivex/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/y3$a;
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

.field final c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/y3;->b:J

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/y3;->c:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/y3;->a:Lio/reactivex/s;

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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/y3$a;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/y3$a;-><init>(Lio/reactivex/r;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/y3;->a:Lio/reactivex/s;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/y3;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/y3;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/reactivex/s;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lth/b;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/y3$a;->b(Lth/b;)V

    return-void
.end method
