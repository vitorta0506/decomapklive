.class Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etLoginPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etConfirmPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x14

    if-gt p1, v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->btnOk:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->btnOk:Landroid/widget/TextView;

    const/4 v0, 0x0

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
