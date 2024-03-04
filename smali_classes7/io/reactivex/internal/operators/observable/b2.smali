.class public final Lio/reactivex/internal/operators/observable/b2;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/b2$a;
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
.field final b:Lio/reactivex/s;

.field final c:Z

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lio/reactivex/s;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lio/reactivex/s;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/b2;->b:Lio/reactivex/s;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/b2;->c:Z

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/observable/b2;->d:I

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/b2;->b:Lio/reactivex/s;

    instance-of v1, v0, Lio/reactivex/internal/schedulers/j;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {v0, p1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/s;->b()Lio/reactivex/s$c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v2, Lio/reactivex/internal/operators/observable/b2$a;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/b2;->c:Z

    iget v4, p0, Lio/reactivex/internal/operators/observable/b2;->d:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/observable/b2$a;-><init>(Lio/reactivex/r;Lio/reactivex/s$c;ZI)V

    invoke-interface {v1, v2}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    :goto_0
    return-void
.end method
