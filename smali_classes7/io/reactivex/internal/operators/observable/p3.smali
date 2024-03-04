.class public final Lio/reactivex/internal/operators/observable/p3;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/p3$a;
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

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/s;

.field final f:I

.field final g:Z


# direct methods
.method public constructor <init>(Lio/reactivex/p;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/p3;->b:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/p3;->c:J

    .line 4
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/p3;->d:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/p3;->e:Lio/reactivex/s;

    .line 6
    iput p8, p0, Lio/reactivex/internal/operators/observable/p3;->f:I

    .line 7
    iput-boolean p9, p0, Lio/reactivex/internal/operators/observable/p3;->g:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v11, Lio/reactivex/internal/operators/observable/p3$a;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/p3;->b:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/p3;->c:J

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/p3;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/p3;->e:Lio/reactivex/s;

    iget v9, p0, Lio/reactivex/internal/operators/observable/p3;->f:I

    iget-boolean v10, p0, Lio/reactivex/internal/operators/observable/p3;->g:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lio/reactivex/internal/operators/observable/p3$a;-><init>(Lio/reactivex/r;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;IZ)V

    invoke-interface {v0, v11}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
