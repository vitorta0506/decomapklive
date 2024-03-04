.class public final Lio/reactivex/internal/operators/observable/q0;
.super Lio/reactivex/g;
.source "SourceFile"

# interfaces
.implements Lyh/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/q0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/g<",
        "TT;>;",
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

.field final b:J


# direct methods
.method public constructor <init>(Lio/reactivex/p;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/g;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q0;->a:Lio/reactivex/p;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/q0;->b:J

    return-void
.end method


# virtual methods
.method public b()Lio/reactivex/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lio/reactivex/internal/operators/observable/p0;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/q0;->a:Lio/reactivex/p;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/q0;->b:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/p0;-><init>(Lio/reactivex/p;JLjava/lang/Object;Z)V

    invoke-static {v6}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public d(Lio/reactivex/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/h<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q0;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/q0$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/q0;->b:J

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/observable/q0$a;-><init>(Lio/reactivex/h;J)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
