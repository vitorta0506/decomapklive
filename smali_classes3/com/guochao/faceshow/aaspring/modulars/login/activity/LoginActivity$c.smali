.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->m0(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/bean/UserBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/bean/UserBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/guochao/faceshow/BaseAppContext;->normalLogined:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getLogoutReason()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d:I

    const-string v2, "last_login_type"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    iget v3, v3, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d:I

    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    const-string v2, "mail_sigin_success_2737"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->EMAIL:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->z(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    iget v3, v3, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d:I

    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    const-string v2, "phone_sigin_success_2737"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->PHONE:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->z(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    .line 13
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceCast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    iget v0, v0, Lcom/guochao/faceshow/bean/UserBean;->logoutStatus:I

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c$a;

    invoke-direct {v2, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    invoke-static {v1, p1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->g(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Lcom/guochao/faceshow/bean/UserBean;ILcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/LoginCancelAccountDialog$b;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->e(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    :cond_1
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->d(Landroid/content/Context;Lg7/a;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;->a(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
