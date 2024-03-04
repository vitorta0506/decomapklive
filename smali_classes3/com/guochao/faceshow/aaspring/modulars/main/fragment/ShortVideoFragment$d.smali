.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/aaspring/beans/VideoList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 8
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoList;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/VideoList;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoList;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 6
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    .line 8
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 12
    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->a:I

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getDefaultPage()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 15
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 16
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoList;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 18
    :cond_4
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoList;->getList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoList;->getList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 20
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_1

    .line 21
    :cond_5
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 22
    :goto_1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object v5, v4, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v5}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->Q2(I)V

    .line 23
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoList;->getList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 24
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoList;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v4, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 25
    :goto_2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->a:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getDefaultPage()I

    move-result v3

    if-eq p1, v3, :cond_6

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->Q2(I)V

    .line 27
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 28
    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v3, 0x7f0a0bc2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v6, 0x7f0a03f3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;

    invoke-direct {v7, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;)V

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->start(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 30
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iput-boolean v1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->t:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iput-boolean v1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->t:Z

    .line 33
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    .line 34
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    goto :goto_4

    .line 38
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    :goto_4
    return-void
.end method
