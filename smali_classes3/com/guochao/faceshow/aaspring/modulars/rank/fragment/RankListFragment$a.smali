.class Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/RankListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->showEmptyView()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/RankListBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/RankListBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean;-><init>()V

    .line 3
    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;-><init>()V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->setRankInfo(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->setRows(Ljava/util/List;)V

    .line 5
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->getRows()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->getRankInfo()Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean;->getRankInfo()Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;)V

    .line 8
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->showEmptyView()V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->o:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    invoke-static {v1, v2, v3, p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Landroid/view/View;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    .line 17
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Ljava/util/List;)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded()V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RankListBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$a;->onResponse(Lcom/guochao/faceshow/aaspring/beans/RankListBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
