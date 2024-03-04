.class public final Lio/reactivex/internal/operators/observable/w3;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/w3$a;,
        Lio/reactivex/internal/operators/observable/w3$b;,
        Lio/reactivex/internal/operators/observable/w3$c;,
        Lio/reactivex/internal/operators/observable/w3$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
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
            "TU;>;"
        }
    .end annotation
.end field

.field final c:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/k;Lio/reactivex/p;Lvh/o;Lio/reactivex/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;",
            "Lio/reactivex/p<",
            "TU;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TV;>;>;",
            "Lio/reactivex/p<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/w3;->b:Lio/reactivex/p;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/w3;->c:Lvh/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/w3;->d:Lio/reactivex/p;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/w3;->d:Lio/reactivex/p;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/w3$c;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/w3;->c:Lvh/o;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/observable/w3$c;-><init>(Lio/reactivex/r;Lvh/o;)V

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/w3;->b:Lio/reactivex/p;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/w3$c;->c(Lio/reactivex/p;)V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/observable/w3$b;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/w3;->c:Lvh/o;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/w3;->d:Lio/reactivex/p;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/observable/w3$b;-><init>(Lio/reactivex/r;Lvh/o;Lio/reactivex/p;)V

    .line 7
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/w3;->b:Lio/reactivex/p;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/w3$b;->c(Lio/reactivex/p;)V

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {p1, v0}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    :goto_0
    return-void
.end method
