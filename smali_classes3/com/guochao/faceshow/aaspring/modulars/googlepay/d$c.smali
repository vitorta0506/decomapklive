.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->K0(Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->a:Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->b:Ljava/lang/String;

    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->c:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 3
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1203d0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->c:I

    if-nez v1, :cond_0

    const-string v1, "\u6b63\u5e38\u5b8c\u6210\u8ba2\u5355\u5931\u8d25"

    goto :goto_0

    :cond_0
    const-string v1, "\u8fdb\u5165app\u91cd\u8bd5\u5b8c\u6210\u8ba2\u5355\u5931\u8d25"

    :goto_0
    const-string v2, "params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_after_server_fail:Ljava/lang/String;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lu7/c;->c()Lu7/c;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->a:Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->a:Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSignture()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->a:Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSigntureData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lu7/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->C(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->C(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    .line 5
    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;->onPayResponse()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->o()V

    .line 7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "item_id"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    const-string v0, "nickname"

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "item_name"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "content_type"

    const-string v0, "googlepay"

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->b:Ljava/lang/String;

    const-string v0, "sceneType"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v0, "a_app_purchase"

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 14
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_after_server_success:Ljava/lang/String;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$c;->c:I

    if-nez v1, :cond_1

    const-string v1, "\u6b63\u5e38\u5b8c\u6210\u8ba2\u5355\u6210\u529f"

    goto :goto_1

    :cond_1
    const-string v1, "\u8fdb\u5165app\u91cd\u8bd5\u5b8c\u6210\u8ba2\u5355\u6210\u529f"

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    invoke-static {}, Lb8/e;->h()V

    return-void
.end method
