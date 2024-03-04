.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x186a5

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v1, 0x7f1206dc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x186a6

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v1, 0x7f1206db

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    const v0, 0x186a7

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v2, 0x7f12098b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v2, 0x7f1206e0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const v1, 0x7f120adf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
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
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Ljava/lang/String;)V

    return-void
.end method
