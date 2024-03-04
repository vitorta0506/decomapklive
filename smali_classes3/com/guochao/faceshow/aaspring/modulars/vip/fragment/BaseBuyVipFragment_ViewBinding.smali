.class public Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    const v0, 0x7f0a03dd

    const-string v1, "field \'firstItemLay\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->firstItemLay:Landroid/view/View;

    const v0, 0x7f0a0a30

    const-string v1, "field \'secondItemLay\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->secondItemLay:Landroid/view/View;

    const v0, 0x7f0a0b8a

    const-string v1, "field \'thirdItemLay\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->thirdItemLay:Landroid/view/View;

    .line 6
    const-class v0, Lcom/opensource/svgaplayer/SVGAImageView;

    const v1, 0x7f0a0807

    const-string v2, "field \'mSVGAImageViewNext\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mSVGAImageViewNext:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 7
    const-class v0, Lcom/guochao/faceshow/views/ObservableScrollView;

    const v1, 0x7f0a0a03

    const-string v2, "field \'mScrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/ObservableScrollView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mScrollView:Lcom/guochao/faceshow/views/ObservableScrollView;

    const v0, 0x7f0a0e12

    const-string v1, "field \'mVipBg\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mVipBg:Landroid/view/View;

    .line 9
    const-class v0, Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x7f0a0e0f

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    const-class v0, Lcom/rd/PageIndicatorView;

    const v1, 0x7f0a0540

    const-string v2, "field \'mPageIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rd/PageIndicatorView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    const v0, 0x7f0a0801

    const-string v1, "field \'mViewNext\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNext:Landroid/view/View;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0805

    const-string v2, "field \'mViewNextBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNextBtn:Landroid/widget/TextView;

    const v0, 0x7f0a02cd

    const-string v1, "field \'mViewNextDisableHint\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNextDisableHint:Landroid/view/View;

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0808

    const-string v2, "field \'mTextViewNextHint1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mTextViewNextHint1:Landroid/widget/TextView;

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0809

    const-string v2, "field \'mTextViewNextHint2\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mTextViewNextHint2:Landroid/widget/TextView;

    .line 16
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0771

    const-string v2, "field \'mViewGroupMenus\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewGroupMenus:Landroid/view/ViewGroup;

    .line 17
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0649

    const-string v2, "field \'mLevelUpToVVipView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mLevelUpToVVipView:Landroid/widget/TextView;

    const v0, 0x7f0a018d

    const-string v1, "field \'btnLay\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->btnLay:Landroid/view/View;

    const v0, 0x7f0a00ad

    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mAnimTop:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->firstItemLay:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->secondItemLay:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->thirdItemLay:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mSVGAImageViewNext:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mScrollView:Lcom/guochao/faceshow/views/ObservableScrollView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mVipBg:Landroid/view/View;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNext:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNextBtn:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewNextDisableHint:Landroid/view/View;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mTextViewNextHint1:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mTextViewNextHint2:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewGroupMenus:Landroid/view/ViewGroup;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mLevelUpToVVipView:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->btnLay:Landroid/view/View;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mAnimTop:Landroid/view/View;

    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
