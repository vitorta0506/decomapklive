.class public final Lio/reactivex/internal/operators/observable/g;
.super Lio/reactivex/t;
.source "SourceFile"

# interfaces
.implements Lyh/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/t<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lyh/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "TT;>;"
        }
    .end annotation
.end field

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
    invoke-direct {p0}, Lio/reactivex/t;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/g;->a:Lio/reactivex/p;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/g;->b:Lvh/q;

    return-void
.end method


# virtual methods
.method public b()Lio/reactivex/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/g;->a:Lio/reactivex/p;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/g;->b:Lvh/q;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/observable/f;-><init>(Lio/reactivex/p;Lvh/q;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lio/reactivex/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/u<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/g;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/g$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/g;->b:Lvh/q;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/g$a;-><init>(Lio/reactivex/u;Lvh/q;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
