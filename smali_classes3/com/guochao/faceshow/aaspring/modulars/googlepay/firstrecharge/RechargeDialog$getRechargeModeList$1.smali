.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->getRechargeModeList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "+",
        "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0016J,\u0010\u000b\u001a\u00020\u00062\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0012\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "",
        "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
        "Lg7/a;",
        "exp",
        "",
        "onFailure",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "onResponse",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $appSkuLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;->$appSkuLocal:Ljava/util/List;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;->$appSkuLocal:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->access$realSkuResponse(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/RecharfeModeBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    instance-of p2, p2, Lcom/guochao/faceshow/mine/view/fragment/RechargeBuzzCoinFragment;

    if-eqz p2, :cond_1

    .line 4
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->recharge_list_success:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v0, "fast_recharge_list_success_3000"

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;->$appSkuLocal:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;->$appSkuLocal:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->getPrice()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->getSign()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;

    .line 11
    invoke-virtual {v3}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->getSign()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->getSign()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/mine/model/RecharfeModeBean;->setPrice(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->access$saveAppSkuLocal(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Ljava/util/List;Z)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;->$appSkuLocal:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->access$dispatchRechargeResponse(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;Z)V

    return-void

    .line 15
    :cond_5
    :goto_2
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$getRechargeModeList$1;->onFailure(Lg7/a;)V

    return-void
.end method
