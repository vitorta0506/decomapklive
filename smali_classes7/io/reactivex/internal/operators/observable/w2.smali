.class public final Lio/reactivex/internal/operators/observable/w2;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/w2$a;,
        Lio/reactivex/internal/operators/observable/w2$b;,
        Lio/reactivex/internal/operators/observable/w2$d;,
        Lio/reactivex/internal/operators/observable/w2$c;
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
.field final b:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "*>;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lio/reactivex/p;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lio/reactivex/p<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/w2;->b:Lio/reactivex/p;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/w2;->c:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/d;

    invoke-direct {v0, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/r;)V

    .line 2
    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/w2;->c:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/w2$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/w2;->b:Lio/reactivex/p;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/w2$a;-><init>(Lio/reactivex/r;Lio/reactivex/p;)V

    invoke-interface {p1, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/w2$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/w2;->b:Lio/reactivex/p;

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/w2$b;-><init>(Lio/reactivex/r;Lio/reactivex/p;)V

    invoke-interface {p1, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    :goto_0
    return-void
.end method
