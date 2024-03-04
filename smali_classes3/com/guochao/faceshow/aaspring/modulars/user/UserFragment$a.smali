.class Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;->f2(Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;)V
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

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;->a:Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;->d2(Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;Z)Z

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "params"

    const-string v2, "\u8fdb\u5165\u4e2a\u4eba\u4e2d\u5fc3\u91cd\u8bd5\u5b8c\u6210\u8ba2\u5355\u5931\u8d25"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_after_server_fail:Ljava/lang/String;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
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

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;->a:Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;->a:Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSignture()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;->a:Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSigntureData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lu7/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->e()Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;->a:Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSignture()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->k(Ljava/lang/String;)V

    .line 4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "item_id"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "nickname"

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "item_name"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "content_type"

    const-string v0, "googlepay"

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p2

    const-string v0, "a_app_purchase"

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 10
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_after_server_success:Ljava/lang/String;

    const-string v0, "\u8fdb\u5165\u4e2a\u4eba\u4e2d\u5fc3\u91cd\u8bd5\u5b8c\u6210\u8ba2\u5355\u6210\u529f"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {v0, p2, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    invoke-static {}, Lb8/e;->h()V

    .line 13
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->o()V

    return-void
.end method
