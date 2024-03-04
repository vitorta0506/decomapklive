.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;Z)Z

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget-boolean p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f12047e

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1204fc

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ld9/c;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    iget-boolean p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;->d:Z

    invoke-interface {p1, p2}, Ld9/c;->setFreeLinkMic(Z)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
