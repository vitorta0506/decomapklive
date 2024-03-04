.class Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etVerificationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v1, 0x6

    if-lt p1, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->btnNext:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->btnNext:Landroid/view/View;

    const v0, 0x7f080113

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->btnNext:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->btnNext:Landroid/view/View;

    const v0, 0x7f080112

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

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
