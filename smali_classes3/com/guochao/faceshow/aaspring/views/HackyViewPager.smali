.class public Lcom/guochao/faceshow/aaspring/views/HackyViewPager;
.super Lcom/duolingo/open/rtlviewpager/RtlViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/HackyViewPager$a;
    }
.end annotation


# instance fields
.field private c:I

.field d:F

.field e:F

.field f:Z

.field g:Lcom/guochao/faceshow/aaspring/views/HackyViewPager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->c:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->d:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->d:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 8
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->d:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->c:I

    int-to-float v2, v2

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v2, v2, v4

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->f:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_5

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->g:Lcom/guochao/faceshow/aaspring/views/HackyViewPager$a;

    if-eqz v0, :cond_5

    .line 10
    invoke-interface {v0, p0}, Lcom/guochao/faceshow/aaspring/views/HackyViewPager$a;->onSwipeRight(Lcom/guochao/faceshow/aaspring/views/HackyViewPager;)V

    .line 11
    :cond_5
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->f:Z

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->d:F

    .line 13
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->e:F

    goto :goto_2

    .line 14
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->d:F

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->e:F

    .line 16
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->f:Z

    .line 17
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getOnSwipeBackListener()Lcom/guochao/faceshow/aaspring/views/HackyViewPager$a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->g:Lcom/guochao/faceshow/aaspring/views/HackyViewPager$a;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "HackyViewPager"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->d:F

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->e:F

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->f:Z

    .line 5
    :goto_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "hacky viewpager error2"

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    const-string p1, "hacky viewpager error1"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setOnSwipeBackListener(Lcom/guochao/faceshow/aaspring/views/HackyViewPager$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HackyViewPager;->g:Lcom/guochao/faceshow/aaspring/views/HackyViewPager$a;

    return-void
.end method
