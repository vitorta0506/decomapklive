.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->c2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->Z()V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->c2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;)Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onResume()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onCancel()V

    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onDelete()V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$q;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onCancel()V

    return-void
.end method
