.class Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "@"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->rlVerificationCodeSend:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->rlVerificationCodeSend:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 5
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->etVerificationCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->btnBind:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->btnBind:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

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
