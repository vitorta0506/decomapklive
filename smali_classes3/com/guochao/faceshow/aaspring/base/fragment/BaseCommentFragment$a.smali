.class Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xf0

    if-le p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    const v1, 0x7f1200a0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->e:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->e:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
