.class public final Lio/reactivex/internal/operators/observable/v0;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/v0$a;,
        Lio/reactivex/internal/operators/observable/v0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lvh/o;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/v0;->b:Lvh/o;

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/v0;->c:Z

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/observable/v0;->d:I

    .line 5
    iput p5, p0, Lio/reactivex/internal/operators/observable/v0;->e:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TU;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/v0;->b:Lvh/o;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableScalarXMap;->b(Lio/reactivex/p;Lio/reactivex/r;Lvh/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v7, Lio/reactivex/internal/operators/observable/v0$b;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/v0;->b:Lvh/o;

    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/v0;->c:Z

    iget v5, p0, Lio/reactivex/internal/operators/observable/v0;->d:I

    iget v6, p0, Lio/reactivex/internal/operators/observable/v0;->e:I

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/v0$b;-><init>(Lio/reactivex/r;Lvh/o;ZII)V

    invoke-interface {v0, v7}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
