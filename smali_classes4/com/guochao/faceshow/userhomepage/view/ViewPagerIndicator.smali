.class public Lcom/guochao/faceshow/userhomepage/view/ViewPagerIndicator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/ViewPagerIndicator;->a:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    rem-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/ViewPagerIndicator;->a:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/guochao/faceshow/userhomepage/view/ViewPagerIndicator;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/ViewPagerIndicator;->a:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/guochao/faceshow/userhomepage/view/ViewPagerIndicator;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/view/ViewPagerIndicator;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/ViewPagerIndicator;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/ViewPagerIndicator;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/view/ViewPagerIndicator;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_2
    iput p1, p0, Lcom/guochao/faceshow/userhomepage/view/ViewPagerIndicator;->d:I

    return-void
.end method
