.class public final Lio/reactivex/internal/operators/observable/z2;
.super Lio/reactivex/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/z2$b;,
        Lio/reactivex/internal/operators/observable/z2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lvh/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lio/reactivex/p;Lvh/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lio/reactivex/p<",
            "+TT;>;",
            "Lvh/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/z2;->a:Lio/reactivex/p;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/z2;->b:Lio/reactivex/p;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/z2;->c:Lvh/d;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/observable/z2;->d:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/r;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/observable/z2$a;

    iget v2, p0, Lio/reactivex/internal/operators/observable/z2;->d:I

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/z2;->a:Lio/reactivex/p;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/z2;->b:Lio/reactivex/p;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/z2;->c:Lvh/d;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/z2$a;-><init>(Lio/reactivex/r;ILio/reactivex/p;Lio/reactivex/p;Lvh/d;)V

    .line 2
    invoke-interface {p1, v6}, Lio/reactivex/r;->onSubscribe(Lth/b;)V

    .line 3
    invoke-virtual {v6}, Lio/reactivex/internal/operators/observable/z2$a;->d()V

    return-void
.end method
