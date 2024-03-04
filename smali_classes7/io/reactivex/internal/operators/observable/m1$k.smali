.class final Lio/reactivex/internal/operators/observable/m1$k;
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
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Lio/reactivex/k<",
        "TT;>;",
        "Lio/reactivex/p<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/s;


# direct methods
.method constructor <init>(Lvh/o;Lio/reactivex/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvh/o<",
            "-",
            "Lio/reactivex/k<",
            "TT;>;+",
            "Lio/reactivex/p<",
            "TR;>;>;",
            "Lio/reactivex/s;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/m1$k;->a:Lvh/o;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/m1$k;->b:Lio/reactivex/s;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/k;)Lio/reactivex/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;)",
            "Lio/reactivex/p<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m1$k;->a:Lvh/o;

    invoke-interface {v0, p1}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The selector returned a null ObservableSource"

    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/p;

    .line 2
    invoke-static {p1}, Lio/reactivex/k;->wrap(Lio/reactivex/p;)Lio/reactivex/k;

    move-result-object p1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m1$k;->b:Lio/reactivex/s;

    invoke-virtual {p1, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

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

    check-cast p1, Lio/reactivex/k;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/m1$k;->a(Lio/reactivex/k;)Lio/reactivex/p;

    move-result-object p1

    return-object p1
.end method
