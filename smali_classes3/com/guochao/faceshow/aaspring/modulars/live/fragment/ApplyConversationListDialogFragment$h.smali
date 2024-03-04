.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    const v0, 0x7f120159

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyList;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/ApplyConversationListDialogFragment;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method
