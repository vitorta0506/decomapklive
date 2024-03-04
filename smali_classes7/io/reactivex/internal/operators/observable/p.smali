.class public final Lio/reactivex/internal/operators/observable/p;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/p$a;,
        Lio/reactivex/internal/operators/observable/p$c;,
        Lio/reactivex/internal/operators/observable/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/s;

.field final f:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final g:I

.field final h:Z


# direct methods
.method public constructor <init>(Lio/reactivex/p;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;Ljava/util/concurrent/Callable;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/p;->b:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/p;->c:J

    .line 4
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/p;->d:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/p;->e:Lio/reactivex/s;

    .line 6
    iput-object p8, p0, Lio/reactivex/internal/operators/observable/p;->f:Ljava/util/concurrent/Callable;

    .line 7
    iput p9, p0, Lio/reactivex/internal/operators/observable/p;->g:I

    .line 8
    iput-boolean p10, p0, Lio/reactivex/internal/operators/observable/p;->h:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/p;->b:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/p;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lio/reactivex/internal/operators/observable/p;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v8, Lio/reactivex/internal/operators/observable/p$b;

    new-instance v2, Lio/reactivex/observers/d;

    invoke-direct {v2, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/r;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/p;->f:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/p;->b:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/p;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/p;->e:Lio/reactivex/s;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/p$b;-><init>(Lio/reactivex/r;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    invoke-interface {v0, v8}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/p;->e:Lio/reactivex/s;

    invoke-virtual {v0}, Lio/reactivex/s;->b()Lio/reactivex/s$c;

    move-result-object v9

    .line 4
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/p;->b:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/p;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v10, Lio/reactivex/internal/operators/observable/p$a;

    new-instance v2, Lio/reactivex/observers/d;

    invoke-direct {v2, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/r;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/p;->f:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/p;->b:J

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/p;->d:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, Lio/reactivex/internal/operators/observable/p;->g:I

    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/p;->h:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/reactivex/internal/operators/observable/p$a;-><init>(Lio/reactivex/r;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/s$c;)V

    invoke-interface {v0, v10}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v10, Lio/reactivex/internal/operators/observable/p$c;

    new-instance v2, Lio/reactivex/observers/d;

    invoke-direct {v2, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/r;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/p;->f:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/p;->b:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/observable/p;->c:J

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/p;->d:Ljava/util/concurrent/TimeUnit;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/reactivex/internal/operators/observable/p$c;-><init>(Lio/reactivex/r;Ljava/util/concurrent/Callable;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s$c;)V

    invoke-interface {v0, v10}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
