.class public final Lio/reactivex/internal/operators/observable/l1;
.super Lio/reactivex/a;
.source "SourceFile"

# interfaces
.implements Lyh/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/l1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;",
        "Lyh/a<",
        "TT;>;"
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
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/l1;->a:Lio/reactivex/p;

    return-void
.end method


# virtual methods
.method public b()Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/k1;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/l1;->a:Lio/reactivex/p;

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/k1;-><init>(Lio/reactivex/p;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public c(Lio/reactivex/b;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/l1;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/l1$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/observable/l1$a;-><init>(Lio/reactivex/b;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
