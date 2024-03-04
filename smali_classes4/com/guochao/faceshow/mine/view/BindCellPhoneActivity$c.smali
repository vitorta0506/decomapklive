.class Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etVerificationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x7f0801c5

    const/4 v3, 0x1

    const v4, 0x7f080074

    const/4 v5, 0x0

    const/16 v6, 0xb

    if-ne v1, v6, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 14
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 23
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
