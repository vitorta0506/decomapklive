.class Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-virtual {v0, p1}, Lcom/rd/PageIndicatorView;->onPageScrollStateChanged(I)V

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a()I

    move-result v0

    rem-int v0, p1, v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-virtual {v1, v0, p2, p3}, Lcom/rd/PageIndicatorView;->onPageScrolled(IFI)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/rd/PageIndicatorView;->onPageSelected(I)V

    return-void
.end method
