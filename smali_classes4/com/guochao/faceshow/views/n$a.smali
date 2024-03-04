.class Lcom/guochao/faceshow/views/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/n;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/n;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/n;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

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
    iget-object v0, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v0}, Lcom/guochao/faceshow/views/n;->a(Lcom/guochao/faceshow/views/n;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    const v1, 0x7f0a0357

    if-ne v0, v1, :cond_7

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string/jumbo v0, "\u2022"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p1

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v2, v3, :cond_6

    if-nez v2, :cond_0

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v3}, Lcom/guochao/faceshow/views/n;->b(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-ne v2, v8, :cond_1

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v3}, Lcom/guochao/faceshow/views/n;->c(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-ne v2, v7, :cond_2

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v3}, Lcom/guochao/faceshow/views/n;->d(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-ne v2, v6, :cond_3

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v3}, Lcom/guochao/faceshow/views/n;->e(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne v2, v5, :cond_4

    .line 9
    iget-object v3, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v3}, Lcom/guochao/faceshow/views/n;->f(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-ne v2, v4, :cond_5

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v3}, Lcom/guochao/faceshow/views/n;->g(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    array-length v2, p1

    const/4 v3, 0x6

    new-array v9, v3, [Landroid/widget/TextView;

    invoke-static {v0}, Lcom/guochao/faceshow/views/n;->b(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;

    move-result-object v10

    aput-object v10, v9, v1

    iget-object v1, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v1}, Lcom/guochao/faceshow/views/n;->c(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v9, v8

    iget-object v1, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v1}, Lcom/guochao/faceshow/views/n;->d(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v9, v7

    iget-object v1, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v1}, Lcom/guochao/faceshow/views/n;->e(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v9, v6

    iget-object v1, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v1}, Lcom/guochao/faceshow/views/n;->f(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v9, v5

    iget-object v1, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v1}, Lcom/guochao/faceshow/views/n;->g(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;

    move-result-object v1

    aput-object v1, v9, v4

    invoke-virtual {v0, v2, v9}, Lcom/guochao/faceshow/views/n;->k(I[Landroid/widget/TextView;)V

    .line 12
    array-length p1, p1

    if-ne p1, v3, :cond_7

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {p1}, Lcom/guochao/faceshow/views/n;->h(Lcom/guochao/faceshow/views/n;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v0}, Lcom/guochao/faceshow/views/n;->a(Lcom/guochao/faceshow/views/n;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {p1}, Lcom/guochao/faceshow/views/n;->i(Lcom/guochao/faceshow/views/n;)Lcom/guochao/faceshow/views/n$b;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {p1}, Lcom/guochao/faceshow/views/n;->a(Lcom/guochao/faceshow/views/n;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {p1}, Lcom/guochao/faceshow/views/n;->a(Lcom/guochao/faceshow/views/n;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v3, :cond_7

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {p1}, Lcom/guochao/faceshow/views/n;->i(Lcom/guochao/faceshow/views/n;)Lcom/guochao/faceshow/views/n$b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/views/n$a;->a:Lcom/guochao/faceshow/views/n;

    invoke-static {v0}, Lcom/guochao/faceshow/views/n;->a(Lcom/guochao/faceshow/views/n;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v8, v1}, Lcom/guochao/faceshow/views/n$b;->onConfirm(Landroid/app/Dialog;ZLjava/lang/String;)V

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
