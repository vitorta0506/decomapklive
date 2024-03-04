.class Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$i;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$i;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$i;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$i;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$i;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->l0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$i;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$i;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    const v1, 0x7f1201b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showCenterToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$i;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$i;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->b:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->B0(Ljava/lang/String;)V

    return-void
.end method
