.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->g0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/mine/model/WithdrawalBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/model/WithdrawalBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;Lcom/guochao/faceshow/mine/model/WithdrawalBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$a;->a:Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string v0, "userFB"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$a;->a:Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->getF()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$a;->a:Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    iget v0, v0, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->price:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "money"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$a;->a:Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->getWithdraw_id()I

    move-result v0

    const-string v1, "payMode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;)Z

    move-result v0

    const-string v1, "inChina"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1202fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method
