.class Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etVerificationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->btnNext:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->btnNext:Landroid/widget/TextView;

    const v0, 0x7f080113

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->btnNext:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->btnNext:Landroid/widget/TextView;

    const v0, 0x7f08006f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->btnNext:Landroid/widget/TextView;

    const v0, 0x7f080112

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

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
