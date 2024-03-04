.class final Lio/reactivex/internal/operators/observable/m1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvh/o<",
        "TT;",
        "Lio/reactivex/p<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lvh/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/p<",
            "TU;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/m1$f;->a:Lvh/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lio/reactivex/p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/p<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m1$f;->a:Lvh/o;

    invoke-interface {v0, p1}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The itemDelay returned a null ObservableSource"

    invoke-static {v0, v1}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/p;

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/observable/m3;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v0, v2, v3}, Lio/reactivex/internal/operators/observable/m3;-><init>(Lio/reactivex/p;J)V

    invoke-static {p1}, Lxh/a;->l(Ljava/lang/Object;)Lvh/o;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/k;->defaultIfEmpty(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/m1$f;->a(Ljava/lang/Object;)Lio/reactivex/p;

    move-result-object p1

    return-object p1
.end method
