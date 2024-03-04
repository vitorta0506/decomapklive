.class Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)I

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->btnOk:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x14

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->btnOk:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->btnOk:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
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
