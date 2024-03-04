.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    const v2, 0x7f0f0393

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->d(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->e(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1204fe

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    const v2, 0x7f0f0391

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->d(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->e(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120500

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->c()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "2"

    goto :goto_1

    :cond_1
    const-string v2, "1"

    :goto_1
    invoke-interface {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setVoiceStatus(Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;Z)Z

    return-void
.end method

.method public onErrorCallback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;Z)Z

    return-void
.end method
