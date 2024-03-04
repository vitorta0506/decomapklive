.class public final Lio/reactivex/internal/operators/observable/a0;
.super Lio/reactivex/t;
.source "SourceFile"

# interfaces
.implements Lyh/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/a0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/t<",
        "Ljava/lang/Long;",
        ">;",
        "Lyh/a<",
        "Ljava/lang/Long;",
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


# direct methods
.method public constructor <init>(Lio/reactivex/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/t;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/a0;->a:Lio/reactivex/p;

    return-void
.end method


# virtual methods
.method public b()Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/z;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/a0;->a:Lio/reactivex/p;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/z;-><init>(Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public e(Lio/reactivex/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/u<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/a0;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/a0$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/observable/a0$a;-><init>(Lio/reactivex/u;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
