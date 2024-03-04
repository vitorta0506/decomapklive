.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ld9/c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createCallingBtnOpenMessage(Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;Z)Z

    return-void
.end method

.method public onErrorCallback()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;Z)Z

    return-void
.end method
