.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->A0()V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    const v0, 0x7f120022

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_pwd:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->y(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_phone:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->w(Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    const/16 v0, 0x2727

    invoke-virtual {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
