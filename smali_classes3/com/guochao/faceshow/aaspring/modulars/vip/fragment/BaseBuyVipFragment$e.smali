.class Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipGuideParentFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->c:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;->mVipSwitcherView:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    iget v2, v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 8
    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mVipBg:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f0f0633

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mVipBg:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
