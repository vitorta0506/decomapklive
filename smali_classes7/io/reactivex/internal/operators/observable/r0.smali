.class public final Lio/reactivex/internal/operators/observable/r0;
.super Lio/reactivex/t;
.source "SourceFile"

# interfaces
.implements Lyh/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/r0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/t<",
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

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;JTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/t;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/r0;->a:Lio/reactivex/p;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/r0;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/r0;->c:Ljava/lang/Object;

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

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/r0;->a:Lio/reactivex/p;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/r0;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/r0;->c:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/p0;-><init>(Lio/reactivex/p;JLjava/lang/Object;Z)V

    invoke-static {v6}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method

.method public e(Lio/reactivex/u;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/u<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r0;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/r0$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/r0;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/r0;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/r0$a;-><init>(Lio/reactivex/u;JLjava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
