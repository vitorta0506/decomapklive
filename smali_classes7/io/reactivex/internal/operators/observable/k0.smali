.class public final Lio/reactivex/internal/operators/observable/k0;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/k0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field final c:Lvh/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/d<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lvh/o;Lvh/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lvh/o<",
            "-TT;TK;>;",
            "Lvh/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/k0;->b:Lvh/o;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/k0;->c:Lvh/d;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/k0$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/k0;->b:Lvh/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/k0;->c:Lvh/d;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/k0$a;-><init>(Lio/reactivex/r;Lvh/o;Lvh/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
