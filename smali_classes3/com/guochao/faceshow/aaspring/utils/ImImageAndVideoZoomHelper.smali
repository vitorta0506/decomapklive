.class public Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;
.super Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper$OnPrefetchListener;
    }
.end annotation


# instance fields
.field final mMediaMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;"
        }
    .end annotation
.end field

.field mOnPrefetchListener:Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper$OnPrefetchListener;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mZoomOut:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper$OnPrefetchListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mMediaMessages:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mOnPrefetchListener:Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper$OnPrefetchListener;

    return-void
.end method


# virtual methods
.method public createItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mMediaMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->P1(I)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->setOnPhotoTapListener(Lh1/f;)V

    .line 5
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->setOnScaleListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;)V

    return-object p1

    .line 6
    :cond_0
    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->U1(I)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->setOnPhotoTapListener(Lh1/f;)V

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p1}, Landroidx/fragment/app/Fragment;-><init>()V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mMediaMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResetThumbView()Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->i0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 7
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    :goto_0
    if-gt v3, v2, :cond_5

    .line 8
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 9
    instance-of v5, v4, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;

    if-eqz v5, :cond_2

    .line 10
    move-object v5, v4

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;

    iget-object v6, v5, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-ne v0, v6, :cond_2

    .line 11
    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/ImageMessageHolder;->mImageView:Landroid/widget/ImageView;

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 12
    :goto_1
    instance-of v6, v4, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    if-eqz v6, :cond_3

    .line 13
    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    iget-object v6, v4, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-ne v0, v6, :cond_3

    .line 14
    iget-object v5, v4, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mImageViewThumb:Landroid/widget/ImageView;

    :cond_3
    if-eqz v5, :cond_4

    move-object v1, v5

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->onPageSelected(I)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mOnPrefetchListener:Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper$OnPrefetchListener;

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    .line 3
    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper$OnPrefetchListener;->onShouldPrefetch(I)V

    :cond_0
    return-void
.end method

.method public onPrefetchMessage(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mZoomOut:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 5
    instance-of v4, v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    if-nez v4, :cond_1

    instance-of v4, v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    if-eqz v4, :cond_2

    .line 6
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mMediaMessages:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mMediaMessages:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->O0(Ljava/util/List;)V

    .line 9
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;Landroidx/fragment/app/FragmentManager;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPagerAdapter:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPagerAdapter:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

    invoke-virtual {p1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "ZoomHelper"

    const-string v1, "error"

    .line 14
    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onScaled(Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/k;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public resetZoom()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->resetZoom()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mZoomOut:Z

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPagerAdapter:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    .line 7
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    if-eqz v2, :cond_2

    .line 8
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->stopPlay()V

    .line 9
    :cond_2
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lz8/c;->E(Z)V

    return-void
.end method

.method showIndex()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/util/List;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;",
            "Landroid/view/View;",
            "I",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mMediaMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mMediaMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 6
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->removeCurrentViewPager()V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->makeViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 9
    new-instance p4, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p4, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;Landroidx/fragment/app/FragmentManager;)V

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPagerAdapter:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

    invoke-virtual {p1, p4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-lez p3, :cond_1

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mTextView:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f1209da

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->getItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p4, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, p2, p4, v1}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startZoom(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mTextView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {p1, p2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-array p1, v2, [I

    .line 18
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    instance-of p4, p2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p4, :cond_2

    .line 20
    check-cast p2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    .line 21
    :cond_2
    new-instance p2, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper$1;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p2, :cond_3

    .line 24
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setOnBackButtonPressedHandler(Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;)V

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewSave:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 26
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_4
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->onPageSelected(I)V

    .line 28
    iput-boolean v5, p0, Lcom/guochao/faceshow/aaspring/utils/ImImageAndVideoZoomHelper;->mZoomOut:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
