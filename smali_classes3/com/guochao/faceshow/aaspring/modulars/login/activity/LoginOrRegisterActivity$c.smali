.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->q0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;->getExistUser()I

    move-result p1

    .line 3
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "mail_port_result_2737"

    const-string v1, "content_type"

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 4
    new-instance p2, Landroid/content/Intent;

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    invoke-direct {p2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x2

    const-string v3, "LoginType"

    .line 5
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    iget p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d:I

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "\u767b\u5f55"

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    iget p2, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d:I

    if-eq p2, v2, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->checkInterceptLoginType(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 11
    :cond_2
    new-instance p2, Landroid/content/Intent;

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-direct {p2, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "\u6ce8\u518c"

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    :cond_3
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->EMAIL:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->z(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;->a(Lcom/guochao/faceshow/aaspring/modulars/login/bean/LoginOrRegisterBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
