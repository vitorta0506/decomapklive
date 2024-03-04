.class Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->q0(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
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
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const v1, 0x7f120b0d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const v0, 0x7f1209c2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->m0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const v0, 0x7f1206f6

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const v0, 0x7f1206f5

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

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
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getCode()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 3
    new-instance p1, Lg7/a;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getCode()I

    move-result p2

    invoke-direct {p1, v0, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->onFailure(Lg7/a;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->a:Ljava/lang/String;

    const-string v1, "phone"

    invoke-static {p1, v1, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->k0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->j(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->l0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)I

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const p2, 0x7f1206f4

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const p2, 0x7f1206f7

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 11
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setIsBindMobile(I)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->a:Ljava/lang/String;

    invoke-static {p1, v1, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->a:Ljava/lang/String;

    iput-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :goto_1
    return-void
.end method
