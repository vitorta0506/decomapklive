.class Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->e:I

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    const v2, 0x7f12022d

    const v3, 0x7f120800

    const v4, 0x7f1206d9

    const v5, 0x7f1206d8

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "payPassword"

    const v9, 0x7f1304b9

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120ae5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setPayPalAccount(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setPayPalName(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->d0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1, v8}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    new-instance p1, Lcom/guochao/faceshow/views/e;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$e;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$e;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;)V

    invoke-direct {p1, v0, v9, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/e$a;)V

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    goto/16 :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 14
    new-instance p1, Lcom/guochao/faceshow/views/n;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$f;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$f;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;)V

    invoke-direct {p1, v0, v9, v1, v2}, Lcom/guochao/faceshow/views/n;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/n$b;)V

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/n;->show()V

    goto/16 :goto_0

    .line 16
    :cond_4
    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankCardNo:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120ad2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccountHolder:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120ad6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->g:Lcom/guochao/faceshow/mine/model/BankBean;

    if-nez v0, :cond_7

    .line 21
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120ad8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 22
    :cond_7
    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankAddress:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120ad4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 24
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankCardNo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setBankAccount(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->g:Lcom/guochao/faceshow/mine/model/BankBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/BankBean;->getBank_id()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setBankId(I)V

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccountHolder:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setAccountHolder(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setOpenBankAddress(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->d0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1, v8}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    new-instance p1, Lcom/guochao/faceshow/views/e;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$c;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$c;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;)V

    invoke-direct {p1, v0, v9, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/e$a;)V

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    .line 32
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    goto/16 :goto_0

    .line 33
    :cond_9
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 34
    new-instance p1, Lcom/guochao/faceshow/views/n;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$d;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;)V

    invoke-direct {p1, v0, v9, v1, v2}, Lcom/guochao/faceshow/views/n;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/n$b;)V

    .line 35
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/n;->show()V

    goto/16 :goto_0

    .line 36
    :cond_a
    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 37
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120acf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 38
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 40
    :cond_c
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setAliPayAccount(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setAliPayName(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->d0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    .line 43
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p1, v8}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 45
    new-instance p1, Lcom/guochao/faceshow/views/e;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$a;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;)V

    invoke-direct {p1, v0, v9, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/e$a;)V

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    .line 46
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    goto :goto_0

    .line 47
    :cond_d
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 48
    new-instance p1, Lcom/guochao/faceshow/views/n;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;)V

    invoke-direct {p1, v0, v9, v1, v2}, Lcom/guochao/faceshow/views/n;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/n$b;)V

    .line 49
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/n;->show()V

    goto :goto_0

    .line 50
    :cond_e
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120ae2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_f
    :goto_0
    return-void
.end method
