.class Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->etCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->etPhone:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 3
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object p3, p3, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->etPhone:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eqz p4, :cond_2

    const/16 p4, 0xb

    if-ne p2, p4, :cond_0

    .line 5
    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->rlSend:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->rlSend:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 8
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v2, :cond_1

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    if-lt p2, v2, :cond_3

    .line 11
    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 12
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object p4, p4, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->rlSend:Landroid/widget/FrameLayout;

    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object p4, p4, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->rlSend:Landroid/widget/FrameLayout;

    invoke-virtual {p4, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :goto_1
    if-lt p2, v2, :cond_4

    .line 14
    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v2, :cond_4

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    return-void
.end method
