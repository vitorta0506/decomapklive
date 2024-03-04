.class Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity$a;->a:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity$a;->a:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwdReal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    const v1, 0x7f0a0357

    if-ne v0, v1, :cond_7

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v1, v2, :cond_6

    const-string/jumbo v2, "\u25cf"

    if-nez v1, :cond_0

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity$a;->a:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    iget-object v3, v3, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd1:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-ne v1, v7, :cond_1

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity$a;->a:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    iget-object v3, v3, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd2:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-ne v1, v6, :cond_2

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity$a;->a:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    iget-object v3, v3, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd3:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-ne v1, v5, :cond_3

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity$a;->a:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    iget-object v3, v3, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd4:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne v1, v4, :cond_4

    .line 9
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity$a;->a:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    iget-object v3, v3, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd5:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_5

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity$a;->a:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    iget-object v3, v3, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd6:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_6
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity$a;->a:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    array-length v2, p1

    const/4 v8, 0x6

    new-array v9, v8, [Landroid/widget/TextView;

    iget-object v10, v1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd1:Landroid/widget/TextView;

    aput-object v10, v9, v0

    iget-object v0, v1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd2:Landroid/widget/TextView;

    aput-object v0, v9, v7

    iget-object v0, v1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd3:Landroid/widget/TextView;

    aput-object v0, v9, v6

    iget-object v0, v1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd4:Landroid/widget/TextView;

    aput-object v0, v9, v5

    iget-object v0, v1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd5:Landroid/widget/TextView;

    aput-object v0, v9, v4

    iget-object v0, v1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwd6:Landroid/widget/TextView;

    aput-object v0, v9, v3

    invoke-virtual {v1, v2, v9}, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->b0(I[Landroid/widget/TextView;)V

    .line 12
    array-length p1, p1

    if-ne p1, v8, :cond_7

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity$a;->a:Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/PaymentPasswordRememberActivity;->etPwdReal:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    :cond_7
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
