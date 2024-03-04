.class public abstract Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field protected mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract P1(Landroidx/viewpager/widget/ViewPager;)Landroidx/viewpager/widget/PagerAdapter;
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0296

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;->P1(Landroidx/viewpager/widget/ViewPager;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method
