.class public final Lio/reactivex/internal/operators/observable/h4;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/h4$c;,
        Lio/reactivex/internal/operators/observable/h4$a;,
        Lio/reactivex/internal/operators/observable/h4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;",
        "Lio/reactivex/k<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:J

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/s;

.field final f:J

.field final g:I

.field final h:Z


# direct methods
.method public constructor <init>(Lio/reactivex/p;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            "JIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/h4;->b:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/h4;->c:J

    .line 4
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/h4;->d:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p7, p0, Lio/reactivex/internal/operators/observable/h4;->e:Lio/reactivex/s;

    .line 6
    iput-wide p8, p0, Lio/reactivex/internal/operators/observable/h4;->f:J

    .line 7
    iput p10, p0, Lio/reactivex/internal/operators/observable/h4;->g:I

    .line 8
    iput-boolean p11, p0, Lio/reactivex/internal/operators/observable/h4;->h:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v1, Lio/reactivex/observers/d;

    invoke-direct {v1, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/r;)V

    .line 2
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/h4;->b:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/h4;->c:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 3
    iget-wide v7, p0, Lio/reactivex/internal/operators/observable/h4;->f:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v7, v4

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v7, Lio/reactivex/internal/operators/observable/h4$b;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/h4;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/h4;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/h4;->e:Lio/reactivex/s;

    iget v6, p0, Lio/reactivex/internal/operators/observable/h4;->g:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/observable/h4$b;-><init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;I)V

    invoke-interface {p1, v7}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v10, Lio/reactivex/internal/operators/observable/h4$a;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/h4;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/h4;->e:Lio/reactivex/s;

    iget v6, p0, Lio/reactivex/internal/operators/observable/h4;->g:I

    iget-boolean v9, p0, Lio/reactivex/internal/operators/observable/h4;->h:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/reactivex/internal/operators/observable/h4$a;-><init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;IJZ)V

    invoke-interface {p1, v10}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v9, Lio/reactivex/internal/operators/observable/h4$c;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/h4;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/h4;->e:Lio/reactivex/s;

    .line 7
    invoke-virtual {v0}, Lio/reactivex/s;->b()Lio/reactivex/s$c;

    move-result-object v7

    iget v8, p0, Lio/reactivex/internal/operators/observable/h4;->g:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/reactivex/internal/operators/observable/h4$c;-><init>(Lio/reactivex/r;JJLjava/util/concurrent/TimeUnit;Lio/reactivex/s$c;I)V

    .line 8
    invoke-interface {p1, v9}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
