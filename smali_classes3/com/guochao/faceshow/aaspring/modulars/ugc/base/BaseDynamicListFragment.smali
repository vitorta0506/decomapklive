.class public abstract Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Laa/e;
.implements Lp7/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;",
        ">;",
        "Laa/e;",
        "Lp7/f;"
    }
.end annotation


# static fields
.field public static final DEFAULT_PAGE_SIZE:I = 0x14

.field private static final REQUEST_PLAY_VIDEO:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "DynamicList"


# instance fields
.field protected mCurrentDynamicHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

.field protected mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

.field mDynamicImageZoomHelper:Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

.field protected mEmptyView:Landroid/view/View;

.field protected mFriendId:I

.field private mLastPlayPosition:I

.field mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mLove:Lcom/guochao/faceshow/views/Love;

.field mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private mVideoPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mLastPlayPosition:I

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mVideoPlayers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->findNextPlay(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;)Lcom/guochao/faceshow/views/Love;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mLove:Lcom/guochao/faceshow/views/Love;

    return-object p0
.end method

.method private findNextPlay(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->autoPlayVideos()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->stopCurrentPlay()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->preLoadVideos(I)V

    const/4 v0, 0x0

    if-ltz p1, :cond_6

    :goto_0
    if-gt p1, p2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->b0(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->stopCurrentPlay()V

    goto :goto_2

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mLastPlayPosition:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->c0()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->d0()V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->stopCurrentPlay()V

    .line 13
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mLastPlayPosition:I

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->stopCurrentPlay()V

    .line 16
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->d0()V

    .line 17
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    .line 18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mLastPlayPosition:I

    goto :goto_2

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->stopCurrentPlay()V

    :goto_2
    return-void
.end method

.method private preLoadVideos(I)V
    .locals 6

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getAutoCacheCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 5
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getItemViewType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getInstance()Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->cacheVideo(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;

    move-result-object v3

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mVideoPlayers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mVideoPlayers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getInstance()Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    move-result-object p1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mVideoPlayers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->stop(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mVideoPlayers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mVideoPlayers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public addDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/AppContentFilter;->filterList(Ljava/util/List;)V

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    return-void
.end method

.method public autoPlayVideos()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->convertItem(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    return-void
.end method

.method public convertItem(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->o(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    return-void
.end method

.method protected filter(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/AppContentFilter;->filterList(Ljava/util/List;)V

    return-object p1
.end method

.method public getImageRecyclerViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getItemViewType()I

    move-result p1

    return p1
.end method

.method public hideSoftKeyboard()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->initView(Landroid/view/View;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/views/Love;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/views/Love;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mLove:Lcom/guochao/faceshow/views/Love;

    .line 3
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mLove:Lcom/guochao/faceshow/views/Love;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/OnItemTouchListenerImp;

    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$b;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;)V

    invoke-direct {v1, v2, v3}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/OnItemTouchListenerImp;-><init>(Landroidx/core/view/GestureDetectorCompat;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public notifyDataLoaded(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->showEmptyView()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->stopCurrentPlay()V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->autoPlayVideos()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    const/16 p2, 0x1f4

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->d0()V

    :cond_0
    return-void
.end method

.method public onAvatarClicked(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public onBlackStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 4
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded()V

    return-void
.end method

.method public onCommentButtonClicked(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentDynamicHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mFriendId:I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Ly9/a;->a(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->setOnDynamicOperationListener(Laa/e;)V

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDeleteDynamic(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->e0()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->stopCurrentPlay()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onDynamicCommentEvent(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/DynamicCommentEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/DynamicCommentEvent;->getDynamicCommentId()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mFriendId:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentDynamicHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/DynamicCommentEvent;->getCommentType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->I(I)V

    :cond_0
    return-void
.end method

.method public onFocusEvent(Ly7/e;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ly7/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;Ly7/e;)V

    sget p1, Lib/b;->a:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onFocusStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 3
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserAttentStatus()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserAttentStatus(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded()V

    return-void
.end method

.method public onImageClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;ILandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mDynamicImageZoomHelper:Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mDynamicImageZoomHelper:Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mDynamicImageZoomHelper:Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->startZoom(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;ILandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onItemClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    return-void
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    return-void
.end method

.method public synthetic onLikeClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Laa/d;->a(Laa/e;Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;I)V

    return-void
.end method

.method public onResendClicked(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 2

    const p1, 0x7f12094b

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$f;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    return-void
.end method

.method public onVideoClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-eqz v2, :cond_0

    if-eq v2, p1, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->e0()V

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v3, v4, :cond_2

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getItemViewType()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 9
    new-instance v5, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {v5}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;-><init>()V

    .line 10
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setUgcId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getVideoId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setUserImg(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getNickName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setUserNickName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoUrl(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getImg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoImg(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setUserId(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLiveState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setLiveState(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setAvatar(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setHeight(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setWidth(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLikeNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoCollectionNum(I)V

    .line 22
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getCommentNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoCommentNum(I)V

    .line 23
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoIntroductionContent(Ljava/lang/String;)V

    .line 24
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 25
    :cond_2
    sput-object v1, Lcom/guochao/faceshow/utils/Tool;->mDataList:Ljava/util/List;

    const/4 v0, 0x0

    .line 26
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUgcId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    const p2, 0x7f0a0ddf

    .line 29
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v5

    invoke-static {p2, v1, v3, v2, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p2

    .line 31
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    .line 32
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "private"

    const/4 v3, 0x1

    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->r:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v2}, Lcom/tencent/rtmp/TXVodPlayer;->getCurrentPlaybackTime()F

    move-result v2

    const-string v3, "current"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "position"

    .line 35
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    iget-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->w:Z

    const-string v2, "playing"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    iget-boolean p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->v:Z

    const-string v0, "pause"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x1f4

    .line 38
    invoke-virtual {p2}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onVideoPlayButtonClicked(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->e0()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    return-void
.end method

.method public bridge synthetic onViewRecycled(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onViewRecycled(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->onViewRecycled(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    .line 4
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->e0()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onViewRecycled(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onViewRecycled(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V

    return-void
.end method

.method protected resetList(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 5
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    :cond_2
    invoke-static {}, Lba/a;->r()Lba/a;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;)V

    invoke-virtual {p1, v1}, Lba/a;->t(Laa/b;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    .line 12
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->toDynamic(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 14
    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 16
    sget-object p1, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/AppContentFilter;->filterList(Ljava/util/List;)V

    return-object v0
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/AppContentFilter;->filterList(Ljava/util/List;)V

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setDatas(Ljava/util/List;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->setUserVisibleHint(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->d0()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->e0()V

    :goto_0
    return-void
.end method

.method public showEmptyView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02f5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mEmptyView:Landroid/view/View;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 6
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addHeaderView(Landroid/view/View;I)V

    const/16 v0, 0x8

    .line 13
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public stopCurrentPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->e0()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mLastPlayPosition:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    :cond_0
    return-void
.end method
