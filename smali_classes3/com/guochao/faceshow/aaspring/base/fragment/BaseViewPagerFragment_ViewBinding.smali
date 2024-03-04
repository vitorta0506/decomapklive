.class public Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;

    .line 3
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a0e05

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    const-class v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v1, 0x7f0a0b26

    const-string v2, "field \'mTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseViewPagerFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
