.class public final Lio/reactivex/internal/operators/observable/d4;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/d4$b;,
        Lio/reactivex/internal/operators/observable/d4$a;
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

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/p;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;JJI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/d4;->b:J

    .line 3
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/d4;->c:J

    .line 4
    iput p6, p0, Lio/reactivex/internal/operators/observable/d4;->d:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 9
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
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/d4;->b:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/d4;->c:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/d4$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/d4;->b:J

    iget v4, p0, Lio/reactivex/internal/operators/observable/d4;->d:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/d4$a;-><init>(Lio/reactivex/r;JI)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v8, Lio/reactivex/internal/operators/observable/d4$b;

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/d4;->b:J

    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/d4;->c:J

    iget v7, p0, Lio/reactivex/internal/operators/observable/d4;->d:I

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/observable/d4$b;-><init>(Lio/reactivex/r;JJI)V

    invoke-interface {v0, v8}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    :goto_0
    return-void
.end method
