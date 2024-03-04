.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0002J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "isRefreshing",
        "",
        "isSlideToBottom",
        "rv",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "newState",
        "",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private final isRefreshing()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->swipeContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const-string v1, "viewBinding.recyclerContentArea.swipeContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2
    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/FragmentMultiLiveListBinding;->recyclerContentArea:Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/LiveRoomListFragmentBinding;->swipeContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    return v0
.end method

.method private final isSlideToBottom(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    if-lt v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->checkDynamicLive(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ly8/a;->b()Ly8/a;

    move-result-object v0

    invoke-virtual {v0}, Ly8/a;->d()V

    .line 4
    :goto_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7;->isSlideToBottom(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->access$getMCurrentPage$p(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreStatus()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p1

    sget-object v1, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v1, :cond_1

    if-eq p2, v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7;->isRefreshing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$initView$7;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreToLoading()V

    :cond_1
    return-void
.end method
