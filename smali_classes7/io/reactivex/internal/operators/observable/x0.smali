.class public final Lio/reactivex/internal/operators/observable/x0;
.super Lio/reactivex/a;
.source "SourceFile"

# interfaces
.implements Lyh/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/x0$a;
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

.field final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;"
        }
    .end annotation
.end field

.field final c:Z


# direct methods
.method public constructor <init>(Lio/reactivex/p;Lvh/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/x0;->a:Lio/reactivex/p;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/x0;->b:Lvh/o;

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/observable/x0;->c:Z

    return-void
.end method


# virtual methods
.method public b()Lio/reactivex/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/w0;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/x0;->a:Lio/reactivex/p;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/x0;->b:Lvh/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/x0;->c:Z

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/internal/operators/observable/w0;-><init>(Lio/reactivex/p;Lvh/o;Z)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lio/reactivex/b;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/x0;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/x0$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/x0;->b:Lvh/o;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/x0;->c:Z

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/x0$a;-><init>(Lio/reactivex/b;Lvh/o;Z)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
