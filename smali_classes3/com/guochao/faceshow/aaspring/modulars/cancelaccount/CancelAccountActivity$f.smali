.class Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->o0(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

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

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 4
    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->setId(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget p1, p1, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->regType:I

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->setReasonType(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->k0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;)V

    :cond_2
    :goto_0
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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "check failed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    const v0, 0x7f120195

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;->a:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string v0, "\u4e09\u65b9\u6388\u6743\u6821\u9a8c\u5931\u8d25"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;->a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
