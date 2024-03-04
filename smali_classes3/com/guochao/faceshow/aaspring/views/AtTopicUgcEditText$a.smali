.class Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->f(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->g(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->h(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;Z)Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->i(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->i(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;->a()V

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->a:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->j(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->c(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->k(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x4d

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120948

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->o0(Landroid/app/Activity;ILjava/lang/String;)V

    .line 10
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->c(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->l(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->i(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->i(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;->b()V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->m(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;Z)Z

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->k(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Landroid/app/Activity;

    move-result-object p1

    const/16 v1, 0x4e

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->r0(Landroid/app/Activity;ZI)V

    .line 15
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->i(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->i(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;->a()V

    :cond_6
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    const/4 p2, 0x0

    if-nez p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p1, p3}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->d(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;Z)Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->c(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->b:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->e(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->a:Z

    goto :goto_1

    .line 4
    :cond_1
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;->a:Z

    :goto_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
