.class public final Lio/reactivex/internal/operators/observable/o0;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
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
.field private final b:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "-",
            "Lth/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lvh/a;


# direct methods
.method public constructor <init>(Lio/reactivex/k;Lvh/g;Lvh/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;",
            "Lvh/g<",
            "-",
            "Lth/b;",
            ">;",
            "Lvh/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/o0;->b:Lvh/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/o0;->c:Lvh/a;

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

    new-instance v1, Lio/reactivex/internal/observers/g;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/o0;->b:Lvh/g;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/o0;->c:Lvh/a;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/observers/g;-><init>(Lio/reactivex/r;Lvh/g;Lvh/a;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
