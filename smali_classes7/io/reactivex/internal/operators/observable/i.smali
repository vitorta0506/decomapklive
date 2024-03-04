.class public final Lio/reactivex/internal/operators/observable/i;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lvh/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/q<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lvh/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lvh/q<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/i;->b:Lvh/q;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/i$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/i;->b:Lvh/q;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/i$a;-><init>(Lio/reactivex/r;Lvh/q;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
