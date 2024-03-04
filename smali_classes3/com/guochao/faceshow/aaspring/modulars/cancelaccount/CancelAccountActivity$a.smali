.class Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->p0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
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
            "Ljava/lang/Integer;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->setId(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget p1, p1, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->regType:I

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->setReasonType(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->k0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)Lf8/h;

    move-result-object p1

    invoke-virtual {p1}, Lf8/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    const v0, 0x7f120022

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)Lf8/c;

    move-result-object p1

    invoke-virtual {p1}, Lf8/a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    const v0, 0x7f120021

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    :cond_1
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

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;->a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
