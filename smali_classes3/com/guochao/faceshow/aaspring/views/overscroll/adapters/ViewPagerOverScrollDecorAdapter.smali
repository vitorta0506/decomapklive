.class public Lcom/guochao/faceshow/aaspring/views/overscroll/adapters/ViewPagerOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/a;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field protected final a:Landroidx/viewpager/widget/ViewPager;

.field protected b:I

.field protected c:F


# virtual methods
.method public a()Z
    .locals 3

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->b:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->a:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->b:I

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/overscroll/adapters/ViewPagerOverScrollDecorAdapter;->c:F

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
