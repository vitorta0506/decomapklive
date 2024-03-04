.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
        "Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)Lkotlin/Unit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getDefaultPage()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;->list:Ljava/util/ArrayList;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;->list:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, p1, Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object p1, p1, Lcom/guochao/faceshow/bean/MusicTypeTopicList$Page;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getDefaultPage()I

    move-result v1

    if-eq p1, v1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->Q2(I)V

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->R2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;)V

    .line 19
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 20
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_6

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->R2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;)V

    .line 24
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 25
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
