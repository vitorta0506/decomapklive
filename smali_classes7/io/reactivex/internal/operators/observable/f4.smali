.class public final Lio/reactivex/internal/operators/observable/f4;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/f4$a;,
        Lio/reactivex/internal/operators/observable/f4$b;,
        Lio/reactivex/internal/operators/observable/f4$d;,
        Lio/reactivex/internal/operators/observable/f4$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT;",
        "Lio/reactivex/k<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "TB;>;"
        }
    .end annotation
.end field

.field final c:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TB;+",
            "Lio/reactivex/p<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lio/reactivex/p;Lvh/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lio/reactivex/p<",
            "TB;>;",
            "Lvh/o<",
            "-TB;+",
            "Lio/reactivex/p<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/f4;->b:Lio/reactivex/p;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/f4;->c:Lvh/o;

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/observable/f4;->d:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/f4$c;

    new-instance v2, Lio/reactivex/observers/d;

    invoke-direct {v2, p1}, Lio/reactivex/observers/d;-><init>(Lio/reactivex/r;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/f4;->b:Lio/reactivex/p;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/f4;->c:Lvh/o;

    iget v4, p0, Lio/reactivex/internal/operators/observable/f4;->d:I

    invoke-direct {v1, v2, p1, v3, v4}, Lio/reactivex/internal/operators/observable/f4$c;-><init>(Lio/reactivex/r;Lio/reactivex/p;Lvh/o;I)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
