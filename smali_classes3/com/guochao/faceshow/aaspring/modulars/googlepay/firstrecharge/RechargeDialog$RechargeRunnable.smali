.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RechargeRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0016\u0010\u0008\u001a\u00020\u00072\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;",
        "Ljava/lang/Runnable;",
        "(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V",
        "data",
        "",
        "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
        "run",
        "",
        "setData",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getAppSkuLocal()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getAppSkuLocal()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getAppSkuLocal()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->data:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->data:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;

    .line 7
    invoke-virtual {v3}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->setDefaultPrice()V

    .line 8
    invoke-virtual {v3}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->getSign()Ljava/lang/String;

    move-result-object v3

    const-string v4, "datum.sign"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->data:Ljava/util/List;

    invoke-static {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->access$saveAppSkuLocal(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Ljava/util/List;Z)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->q0(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->data:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->access$realSkuResponse(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public final setData(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$RechargeRunnable;->data:Ljava/util/List;

    return-void
.end method
