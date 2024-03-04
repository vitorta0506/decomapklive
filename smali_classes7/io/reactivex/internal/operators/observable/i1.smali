.class public final Lio/reactivex/internal/operators/observable/i1;
.super Lio/reactivex/internal/operators/observable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/i1$c;,
        Lio/reactivex/internal/operators/observable/i1$d;,
        Lio/reactivex/internal/operators/observable/i1$a;,
        Lio/reactivex/internal/operators/observable/i1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/a<",
        "TT",
        "Left;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "+TTRight;>;"
        }
    .end annotation
.end field

.field final c:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/p<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field final d:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TTRight;+",
            "Lio/reactivex/p<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field final e:Lvh/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/k<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lio/reactivex/p;Lvh/o;Lvh/o;Lvh/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT",
            "Left;",
            ">;",
            "Lio/reactivex/p<",
            "+TTRight;>;",
            "Lvh/o<",
            "-TT",
            "Left;",
            "+",
            "Lio/reactivex/p<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "Lvh/o<",
            "-TTRight;+",
            "Lio/reactivex/p<",
            "TTRightEnd;>;>;",
            "Lvh/c<",
            "-TT",
            "Left;",
            "-",
            "Lio/reactivex/k<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/a;-><init>(Lio/reactivex/p;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/i1;->b:Lio/reactivex/p;

    .line 3
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/i1;->c:Lvh/o;

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/i1;->d:Lvh/o;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/i1;->e:Lvh/c;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/i1$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/i1;->c:Lvh/o;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/i1;->d:Lvh/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/i1;->e:Lvh/c;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/internal/operators/observable/i1$a;-><init>(Lio/reactivex/r;Lvh/o;Lvh/o;Lvh/c;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    new-instance p1, Lio/reactivex/internal/operators/observable/i1$d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/reactivex/internal/operators/observable/i1$d;-><init>(Lio/reactivex/internal/operators/observable/i1$b;Z)V

    .line 4
    iget-object v1, v0, Lio/reactivex/internal/operators/observable/i1$a;->c:Lth/a;

    invoke-virtual {v1, p1}, Lth/a;->b(Lth/b;)Z

    .line 5
    new-instance v1, Lio/reactivex/internal/operators/observable/i1$d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/reactivex/internal/operators/observable/i1$d;-><init>(Lio/reactivex/internal/operators/observable/i1$b;Z)V

    .line 6
    iget-object v0, v0, Lio/reactivex/internal/operators/observable/i1$a;->c:Lth/a;

    invoke-virtual {v0, v1}, Lth/a;->b(Lth/b;)Z

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/p;

    invoke-interface {v0, p1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/i1;->b:Lio/reactivex/p;

    invoke-interface {p1, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
