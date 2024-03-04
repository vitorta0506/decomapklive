.class public final Lio/reactivex/internal/operators/observable/v;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:I

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lvh/o;Lio/reactivex/internal/util/ErrorMode;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/v;->b:Lvh/o;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/v;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/observable/v;->d:I

    .line 5
    iput p5, p0, Lio/reactivex/internal/operators/observable/v;->e:I

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v7, Lio/reactivex/internal/operators/observable/v$a;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/v;->b:Lvh/o;

    iget v4, p0, Lio/reactivex/internal/operators/observable/v;->d:I

    iget v5, p0, Lio/reactivex/internal/operators/observable/v;->e:I

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/v;->c:Lio/reactivex/internal/util/ErrorMode;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/v$a;-><init>(Lio/reactivex/r;Lvh/o;IILio/reactivex/internal/util/ErrorMode;)V

    invoke-interface {v0, v7}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
