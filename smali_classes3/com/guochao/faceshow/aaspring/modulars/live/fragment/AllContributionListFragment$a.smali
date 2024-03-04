.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/RankListResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-boolean v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->d:Z

    if-nez v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->notifyDataLoaded(Z)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 17
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListResult;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListResult;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 3
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->d:Z

    .line 4
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v3

    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getDefaultPage()I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 5
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 6
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/RankListResult;

    .line 7
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v6, v6, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x3

    if-le v3, v5, :cond_3

    .line 10
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->b:Ljava/util/List;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_3
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v6, v3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->b:Ljava/util/List;

    invoke-virtual {v3, v6}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setDatas(Ljava/util/List;)V

    .line 12
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->notifyDataLoaded(Z)V

    .line 13
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v6, 0x7f0a0811

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 14
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v6, 0x7f0a0812

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 15
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v6, v6, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v7, 0x7f0a0813

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 16
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v15, 0x4

    if-lt v7, v4, :cond_4

    .line 17
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v9, 0x7f0a0532

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 19
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v10, 0x7f0a07e7

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroid/widget/TextView;

    .line 20
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v11, 0x7f0a0464

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroid/widget/ImageView;

    .line 21
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v12, 0x7f0a064b

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/guochao/faceshow/aaspring/views/LevelView;

    .line 22
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v13, 0x7f0a08b2

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 23
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v13, 0x7f0a0271

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/widget/TextView;

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/guochao/faceshow/aaspring/beans/RankListResult;

    .line 25
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-static/range {v7 .. v14}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/LevelView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/RankListResult;)V

    goto :goto_1

    .line 26
    :cond_4
    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_5

    .line 28
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v9, 0x7f0a0533

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 30
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v9, 0x7f0a07e8

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/widget/TextView;

    .line 31
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v9, 0x7f0a0465

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Landroid/widget/ImageView;

    .line 32
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v9, 0x7f0a064c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/guochao/faceshow/aaspring/views/LevelView;

    .line 33
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v9, 0x7f0a08b3

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 34
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v9, 0x7f0a0272

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 35
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/guochao/faceshow/aaspring/beans/RankListResult;

    .line 36
    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    move-object v10, v3

    const/4 v4, 0x4

    move-object v15, v7

    invoke-static/range {v9 .. v16}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/LevelView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/RankListResult;)V

    goto :goto_2

    :cond_5
    const/4 v4, 0x4

    .line 37
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v5, :cond_6

    .line 39
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v3, 0x7f0a0531

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 41
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v3, 0x7f0a07e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 42
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v3, 0x7f0a0463

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    .line 43
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v3, 0x7f0a064a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/guochao/faceshow/aaspring/views/LevelView;

    .line 44
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v3, 0x7f0a08b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 45
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const v3, 0x7f0a0270

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    .line 46
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/guochao/faceshow/aaspring/beans/RankListResult;

    .line 47
    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    move-object v10, v6

    invoke-static/range {v9 .. v16}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/LevelView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/RankListResult;)V

    goto :goto_3

    .line 48
    :cond_6
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :goto_3
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    .line 50
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addHeaderView(Landroid/view/View;I)V

    goto :goto_5

    .line 51
    :cond_7
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-boolean v4, v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->d:Z

    if-nez v4, :cond_8

    .line 52
    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 54
    :cond_8
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 56
    :goto_4
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->notifyDataLoaded(Z)V

    :goto_5
    return-void
.end method
