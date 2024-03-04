.class Lcom/tbruyelle/rxpermissions2/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions2/a$c;->a(Lio/reactivex/k;)Lio/reactivex/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/util/List<",
        "Lte/a;",
        ">;",
        "Lio/reactivex/p<",
        "Lte/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tbruyelle/rxpermissions2/a$c;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions2/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/tbruyelle/rxpermissions2/a$c$a;->a:Lcom/tbruyelle/rxpermissions2/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lio/reactivex/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lte/a;",
            ">;)",
            "Lio/reactivex/p<",
            "Lte/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/k;->empty()Lio/reactivex/k;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lte/a;

    invoke-direct {v0, p1}, Lte/a;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

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

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions2/a$c$a;->a(Ljava/util/List;)Lio/reactivex/p;

    move-result-object p1

    return-object p1
.end method
