.class public final Lio/reactivex/internal/operators/observable/i4;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/i4$b;,
        Lio/reactivex/internal/operators/observable/i4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lvh/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lvh/c;Lio/reactivex/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lvh/c<",
            "-TT;-TU;+TR;>;",
            "Lio/reactivex/p<",
            "+TU;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/i4;->b:Lvh/c;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/i4;->c:Lio/reactivex/p;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/observers/d;

    invoke-direct {v0, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/r;)V

    .line 2
    new-instance p1, Lio/reactivex/internal/operators/observable/i4$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/i4;->b:Lvh/c;

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/observable/i4$a;-><init>(Lio/reactivex/r;Lvh/c;)V

    .line 3
    invoke-virtual {v0, p1}, Lio/reactivex/observers/d;->onSubscribe(Lth/b;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/i4;->c:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/i4$b;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/observable/i4$b;-><init>(Lio/reactivex/internal/operators/observable/i4;Lio/reactivex/internal/operators/observable/i4$a;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {v0, p1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
