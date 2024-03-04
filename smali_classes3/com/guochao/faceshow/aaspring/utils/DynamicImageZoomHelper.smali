.class public Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;
.super Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;
.source "SourceFile"


# instance fields
.field mDynamicBean:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

.field mDynamicFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicFile;",
            ">;"
        }
    .end annotation
.end field

.field private mHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->mDynamicFiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->mDynamicBean:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->mDynamicFiles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a2(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/DynamicFile;ZI)Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->setOnScaleListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;)V

    .line 3
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->setOnPhotoTapListener(Lh1/f;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->d2(Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->mDynamicFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResetThumbView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0

    .line 4
    :cond_1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->getResetThumbView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onScaled(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->mHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->q()V

    :cond_0
    return-void
.end method

.method public startZoom(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;ILandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->mHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getDynamicFile()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->mDynamicFiles:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->mDynamicBean:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 4
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->removeCurrentViewPager()V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->makeViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 10
    new-instance p2, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p4

    invoke-direct {p2, p0, p4}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;Landroidx/fragment/app/FragmentManager;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPagerAdapter:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-lez p3, :cond_1

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f1209da

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr p3, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p4

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->mDynamicFiles:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v3

    invoke-virtual {p2, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x1020002

    invoke-virtual {p3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p5, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startZoom(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mTextView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    new-array p1, v1, [I

    .line 19
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    instance-of p3, p2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p3, :cond_2

    .line 21
    check-cast p2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p2, p4}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    .line 22
    :cond_2
    new-instance p2, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper$1;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz p2, :cond_3

    .line 25
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setOnBackButtonPressedHandler(Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;)V

    .line 26
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewSave:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 27
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method
