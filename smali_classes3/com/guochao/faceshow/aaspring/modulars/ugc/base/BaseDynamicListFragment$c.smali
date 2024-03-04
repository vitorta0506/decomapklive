.class Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onFocusEvent(Ly7/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly7/e;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;Ly7/e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;->a:Ly7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;->a:Ly7/e;

    invoke-virtual {v2}, Ly7/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserAttentStatus()I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;->a:Ly7/e;

    invoke-virtual {v3}, Ly7/e;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x2

    .line 7
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserAttentStatus(I)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x2

    .line 8
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserAttentStatus(I)V

    .line 9
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
