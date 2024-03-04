.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->et_phone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x6

    if-lt p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->next:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->next:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
