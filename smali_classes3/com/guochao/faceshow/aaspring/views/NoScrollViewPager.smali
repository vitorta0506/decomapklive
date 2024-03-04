.class public Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;
.super Lcom/duolingo/open/rtlviewpager/RtlViewPager;
.source "SourceFile"


# instance fields
.field private c:Z

.field d:I

.field e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;->c:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 4
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;->d:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v3

    .line 6
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_1

    .line 7
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;->d:I

    if-ge v1, v3, :cond_1

    .line 8
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 12
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;->e:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_4

    .line 13
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;->c:Z

    return v0

    .line 14
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;->d:I

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;->e:I

    .line 16
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;->c:Z

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 18
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;->c:Z

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public setScrollable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/NoScrollViewPager;->c:Z

    return-void
.end method
