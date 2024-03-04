.class public abstract Lbi/a;
.super Lio/reactivex/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    return-void
.end method

.method private d()Lbi/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/internal/operators/observable/g2;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/reactivex/internal/operators/observable/f2;

    move-object v1, p0

    check-cast v1, Lio/reactivex/internal/operators/observable/g2;

    .line 3
    invoke-interface {v1}, Lio/reactivex/internal/operators/observable/g2;->a()Lio/reactivex/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/f2;-><init>(Lio/reactivex/p;)V

    .line 4
    invoke-static {v0}, Lci/a;->k(Lbi/a;)Lbi/a;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract c(Lvh/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/g<",
            "-",
            "Lth/b;",
            ">;)V"
        }
    .end annotation
.end method

.method public e()Lio/reactivex/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/n2;

    invoke-direct {p0}, Lbi/a;->d()Lbi/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/n2;-><init>(Lbi/a;)V

    invoke-static {v0}, Lci/a;->o(Lio/reactivex/k;)Lio/reactivex/k;

    move-result-object v0

    return-object v0
.end method
