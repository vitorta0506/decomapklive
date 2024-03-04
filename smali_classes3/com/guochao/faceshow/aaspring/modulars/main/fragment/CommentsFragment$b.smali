.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->A0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/Comment;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic c:I

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;Lcom/guochao/faceshow/aaspring/beans/Comment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/BottomMenuBean;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->b1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-string p1, "3"

    goto :goto_0

    :cond_0
    const-string p1, "11"

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getUserId()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0, p1}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :sswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->c:I

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->y0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V

    goto :goto_1

    .line 5
    :sswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    const/4 p2, 0x0

    const p3, 0x7f120106

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    goto :goto_1

    .line 6
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getRealComment(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/Comment;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "copy"

    invoke-static {p2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    const-string p3, "clipboard"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    const p3, 0x7f1201e7

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0266 -> :sswitch_3
        0x7f0a02a3 -> :sswitch_2
        0x7f0a0969 -> :sswitch_1
        0x7f0a0971 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCancel(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V
    .locals 0

    return-void
.end method
