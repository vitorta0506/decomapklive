.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

.field final synthetic c:I

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->c:I

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
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->setRegisterTime(J)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/guochao/faceshow/BaseAppContext;->normalLogined:Z

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->q(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->x(Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->c:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "item_id"

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "item_name"

    .line 9
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_type"

    .line 10
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p2

    const-string v2, "sign_up"

    invoke-virtual {p2, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 12
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->p()V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iput-boolean v0, p2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->i:Z

    .line 14
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->c:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 p2, 0x3

    :cond_1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/bean/UserBean;->setRegType(I)V

    .line 15
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lb8/d;->a(Lb8/a;Z)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseRecommendTypeActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x8000

    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    .line 18
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "data"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->k:Landroid/os/Handler;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->j:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c48

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    const v1, 0x7f120087

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    .line 3
    invoke-virtual {p1}, Lg7/a;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    .line 5
    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c49

    if-ne v0, v1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    const v0, 0x7f120086

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_8

    const-string v0, ""

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c51

    if-ne v0, v1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    const v0, 0x7f12079a

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    .line 13
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x1

    const-string v1, "type"

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    const/16 v1, 0x2727

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c4c

    if-ne v0, v1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;)V

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c52

    if-ne v0, v1, :cond_4

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/16 v1, 0x3f2

    if-ne v0, v1, :cond_5

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    const v0, 0x7f1205a1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 23
    :cond_5
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    if-nez v0, :cond_7

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    const v1, 0x7f1208e7

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 25
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->d:Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->d(Landroid/content/Context;Lg7/a;)V

    :catch_0
    :cond_8
    :goto_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity$h;->a(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
