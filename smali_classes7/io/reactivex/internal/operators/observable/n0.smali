.class public final Lio/reactivex/internal/operators/observable/n0;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/n0$a;
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
.field final b:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lvh/a;

.field final e:Lvh/a;


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lvh/g;Lvh/g;Lvh/a;Lvh/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lvh/g<",
            "-TT;>;",
            "Lvh/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lvh/a;",
            "Lvh/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/n0;->b:Lvh/g;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/n0;->c:Lvh/g;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/n0;->d:Lvh/a;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/n0;->e:Lvh/a;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v7, Lio/reactivex/internal/operators/observable/n0$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/n0;->b:Lvh/g;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/n0;->c:Lvh/g;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/n0;->d:Lvh/a;

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/n0;->e:Lvh/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/n0$a;-><init>(Lio/reactivex/r;Lvh/g;Lvh/g;Lvh/a;Lvh/a;)V

    invoke-interface {v0, v7}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
