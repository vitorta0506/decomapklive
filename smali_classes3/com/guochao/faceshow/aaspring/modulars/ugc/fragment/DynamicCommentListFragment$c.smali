.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->A0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/Comment;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic c:I

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;Lcom/guochao/faceshow/aaspring/beans/Comment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->c:I

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

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getUserId()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "13"

    invoke-static {p1, p2, p3, v0}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->b:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->c:I

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->y0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/Comment;)V

    goto :goto_0

    .line 4
    :sswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    const/4 p2, 0x0

    const p3, 0x7f120106

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    goto :goto_0

    .line 5
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getRealComment(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/Comment;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "copy"

    invoke-static {p2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    const-string p3, "clipboard"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$c;->d:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    const p3, 0x7f1201e7

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
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
