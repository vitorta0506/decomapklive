.class public abstract Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field public mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b0()Landroidx/viewpager/widget/PagerAdapter;
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->b0()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    :cond_1
    return-void
.end method
