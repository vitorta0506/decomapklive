.class public abstract Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$b;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field public c:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

.field public mViewPager2:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->a:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->b:I

    return-void
.end method

.method private P1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->mViewPager2:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->a:I

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->b:I

    invoke-direct {v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$b;-><init>(Landroidx/fragment/app/FragmentManager;II)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->mViewPager2:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->mViewPager2:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->mViewPager2:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public Q1(Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->c:Lcom/guochao/faceshow/aaspring/views/VipSwitcherView;

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d02a1

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->P1()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->a:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseVipGuideParentFragment;->b:I

    :cond_0
    return-void
.end method
