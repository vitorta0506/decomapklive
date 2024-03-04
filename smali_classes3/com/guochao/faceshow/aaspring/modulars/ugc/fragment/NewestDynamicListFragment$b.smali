.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->U1(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 2
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$b;->a:I

    if-le v0, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$d;

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-interface {v2, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$d;->n(ILcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;Z)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    return-void
.end method
