.class public abstract Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;
.implements Lh1/f;
.implements Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;,
        Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$Zoomable;
    }
.end annotation


# instance fields
.field protected final mActivity:Landroidx/fragment/app/FragmentActivity;

.field protected mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mLargeView:Landroid/view/View;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mRunnable:Ljava/lang/Runnable;

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mViewPagerAdapter:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

.field mViewSave:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mViewZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$7;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$7;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$8;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$8;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mRunnable:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f0a0454

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->getLayoutId()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    .line 8
    instance-of v0, p1, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz v0, :cond_0

    const v0, 0x7f0a0255

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const v0, 0x1020002

    .line 10
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    :goto_0
    if-eqz p1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->setOnDragFinishListener(Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$a;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->setOnDragListener(Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;)V

    .line 16
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$3;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->setResetAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$4;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$4;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->setZoomUpAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->init()V

    return-void
.end method


# virtual methods
.method public abstract createItem(I)Landroidx/fragment/app/Fragment;
.end method

.method public abstract getItemCount()I
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d02d5

    return v0
.end method

.method public getResetThumbView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method protected makeViewPager()Landroidx/viewpager/widget/ViewPager;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    const v2, 0x141aa

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    return-object v0
.end method

.method public onBack()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->isScaleUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->resetZoom()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->getItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f1209da

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPagerAdapter:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 4
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$Zoomable;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$Zoomable;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$Zoomable;->scaled()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->setGestureEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPhotoTap(Landroid/widget/ImageView;FF)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->resetZoom()V

    return-void
.end method

.method public bridge synthetic onScaled(Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/k;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onScaled(ZFI)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    if-eq p3, p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    if-eqz p2, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 4
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->setGestureEnabled(Z)V

    :cond_2
    return-void
.end method

.method protected onShowActionArea()V
    .locals 0

    return-void
.end method

.method protected removeCurrentViewPager()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_0

    .line 4
    move-object v0, v2

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 5
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetZoom()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mActivity:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewSave:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->getResetThumbView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->resetZoom()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewZoomHelper:Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->resetZoom(Landroid/view/View;)V

    .line 9
    :cond_3
    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 10
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    aput v5, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 11
    new-instance v3, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$5;

    invoke-direct {v3, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$5;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;Landroid/graphics/drawable/ColorDrawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    new-instance v3, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$6;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$6;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 13
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mLargeView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_4

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public save(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPagerAdapter:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$ViewPagerAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$Zoomable;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$Zoomable;

    .line 5
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$Zoomable;->save(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method showIndex()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
