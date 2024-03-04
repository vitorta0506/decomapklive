.class public Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;
.super Lcom/duolingo/open/rtlviewpager/RtlViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager$a;
    }
.end annotation


# instance fields
.field c:I

.field d:F

.field e:F

.field f:Z

.field g:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager$a;


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

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->c:I

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

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->c:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->c:I

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 5
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->f:Z

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->d:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->d:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 8
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->c:I

    int-to-float v1, v1

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v1, v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->f:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->g:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager$a;

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0, p0}, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager$a;->a(Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;)V

    .line 11
    :cond_4
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->f:Z

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->d:F

    .line 13
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->e:F

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->d:F

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->e:F

    .line 16
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->f:Z

    .line 17
    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getOnSwipeBackListener()Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager$a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->g:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager$a;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->d:F

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->e:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->f:Z

    .line 5
    :goto_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnSwipeBackListener(Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;->g:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager$a;

    return-void
.end method
