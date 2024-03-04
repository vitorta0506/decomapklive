.class public Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lbg/g;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/view/View;

.field private l:Lcom/yanzhenjie/recyclerview/swipe/b;

.field private m:Lcom/yanzhenjie/recyclerview/swipe/d;

.field private n:Lcom/yanzhenjie/recyclerview/swipe/a;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/widget/OverScroller;

.field private s:Landroid/view/VelocityTracker;

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->a:I

    .line 5
    iput p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->b:I

    .line 6
    iput p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->c:I

    const/high16 p3, 0x3f000000    # 0.5f

    .line 7
    iput p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->d:F

    const/16 p3, 0xc8

    .line 8
    iput p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->e:I

    const/4 p3, 0x1

    .line 9
    iput-boolean p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->q:Z

    .line 10
    sget-object p3, Lcom/yanzhenjie/recyclerview/swipe/R$styleable;->recycler_swipe_SwipeMenuLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lcom/yanzhenjie/recyclerview/swipe/R$styleable;->recycler_swipe_SwipeMenuLayout_leftViewId:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->a:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->a:I

    .line 12
    sget p2, Lcom/yanzhenjie/recyclerview/swipe/R$styleable;->recycler_swipe_SwipeMenuLayout_contentViewId:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->b:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->b:I

    .line 13
    sget p2, Lcom/yanzhenjie/recyclerview/swipe/R$styleable;->recycler_swipe_SwipeMenuLayout_rightViewId:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->c:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->c:I

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->f:I

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->t:I

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->u:I

    .line 19
    new-instance p1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r:Landroid/widget/OverScroller;

    return-void
.end method

.method private c(Landroid/view/MotionEvent;I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/a;->g()I

    move-result v0

    .line 4
    div-int/lit8 v1, v0, 0x2

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 6
    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->b(F)F

    move-result v2

    mul-float v2, v2, v1

    add-float/2addr v1, v2

    if-lez p2, :cond_0

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 7
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v3

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 9
    :goto_0
    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->e:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private n(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/swipe/a;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->d:F

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->f:I

    if-gt p1, v0, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->f:I

    if-le p1, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->o()V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->q()V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->o()V

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->q()V

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->o()V

    :cond_5
    :goto_1
    return-void
.end method

.method private r(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/yanzhenjie/recyclerview/swipe/a;->b(Landroid/widget/OverScroller;II)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method b(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, v0, Lcom/yanzhenjie/recyclerview/swipe/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->scrollTo(II)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->scrollTo(II)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->l:Lcom/yanzhenjie/recyclerview/swipe/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/swipe/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->l:Lcom/yanzhenjie/recyclerview/swipe/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->l:Lcom/yanzhenjie/recyclerview/swipe/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/b;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOpenPercent()F
    .locals 1

    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->d:F

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->l:Lcom/yanzhenjie/recyclerview/swipe/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/swipe/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/swipe/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/d;->j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/swipe/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/d;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->q:Z

    return v0
.end method

.method public o()V
    .locals 1

    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->e:I

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->p(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->a:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->l:Lcom/yanzhenjie/recyclerview/swipe/b;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/yanzhenjie/recyclerview/swipe/b;

    invoke-direct {v1, v0}, Lcom/yanzhenjie/recyclerview/swipe/b;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->l:Lcom/yanzhenjie/recyclerview/swipe/b;

    .line 5
    :cond_0
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->c:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/swipe/d;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/yanzhenjie/recyclerview/swipe/d;

    invoke-direct {v1, v0}, Lcom/yanzhenjie/recyclerview/swipe/d;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/swipe/d;

    .line 8
    :cond_1
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->b:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->k:Landroid/view/View;

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->k:Landroid/view/View;

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    const/16 v1, 0x11

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "You may not have set the ContentView."

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->k:Landroid/view/View;

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_1
    return v2

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->i:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->j:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->f:I

    if-le v1, v4, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le v0, p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/yanzhenjie/recyclerview/swipe/a;->h(IF)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->o()V

    return v3

    :cond_6
    return v2

    .line 12
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->g:I

    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->i:I

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->j:I

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->k:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->k:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p2

    .line 4
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->k:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p4

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p5

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p5, p3

    .line 7
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->k:Landroid/view/View;

    add-int/2addr p1, p4

    add-int/2addr p2, p5

    invoke-virtual {p3, p4, p5, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->l:Lcom/yanzhenjie/recyclerview/swipe/b;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/a;->f()Landroid/view/View;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p2

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p3

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p5

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p5, p4

    neg-int p2, p2

    const/4 p4, 0x0

    add-int/2addr p3, p5

    .line 14
    invoke-virtual {p1, p2, p5, p4, p3}, Landroid/view/View;->layout(IIII)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/swipe/d;

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/a;->f()Landroid/view/View;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p2

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p3

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p5

    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p5, p4

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidthAndState()I

    move-result p4

    add-int/2addr p2, p4

    add-int/2addr p3, p5

    .line 22
    invoke-virtual {p1, p4, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->k:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 4
    iget-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->k:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->l:Lcom/yanzhenjie/recyclerview/swipe/b;

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/a;->f()Landroid/view/View;

    move-result-object v0

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, p2

    .line 8
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 9
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 10
    invoke-virtual {v0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/swipe/d;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/swipe/a;->f()Landroid/view/View;

    move-result-object v0

    if-nez p2, :cond_3

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, p2

    .line 14
    :goto_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 15
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    :cond_4
    if-lez p2, :cond_5

    .line 17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->s:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->s:Landroid/view/VelocityTracker;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iput-boolean v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->p:Z

    .line 5
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto/16 :goto_3

    .line 7
    :cond_2
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->i:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 8
    iget v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->j:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n(II)V

    goto/16 :goto_3

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->m()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_3

    .line 11
    :cond_4
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 12
    iget v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->h:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    .line 13
    iget-boolean v4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->p:Z

    if-nez v4, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->f:I

    if-le v4, v5, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v4, v1, :cond_5

    .line 14
    iput-boolean v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->p:Z

    .line 15
    :cond_5
    iget-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->p:Z

    if-eqz v1, :cond_13

    .line 16
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->o:Z

    if-eqz v1, :cond_a

    :cond_6
    if-gez v0, :cond_8

    .line 17
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->l:Lcom/yanzhenjie/recyclerview/swipe/b;

    if-eqz v1, :cond_7

    .line 18
    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    goto :goto_0

    .line 19
    :cond_7
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/swipe/d;

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    goto :goto_0

    .line 20
    :cond_8
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->m:Lcom/yanzhenjie/recyclerview/swipe/d;

    if-eqz v1, :cond_9

    .line 21
    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    goto :goto_0

    .line 22
    :cond_9
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->l:Lcom/yanzhenjie/recyclerview/swipe/b;

    iput-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    .line 23
    :cond_a
    :goto_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->g:I

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->h:I

    .line 26
    iput-boolean v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->o:Z

    goto/16 :goto_3

    .line 27
    :cond_b
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->i:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 28
    iget v4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->j:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 29
    iput-boolean v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->p:Z

    .line 30
    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->s:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->u:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 31
    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-int v3, v3

    .line 32
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 33
    iget v6, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->t:I

    if-le v5, v6, :cond_f

    .line 34
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    if-eqz v0, :cond_10

    .line 35
    invoke-direct {p0, p1, v5}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->c(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 36
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    instance-of v4, v4, Lcom/yanzhenjie/recyclerview/swipe/d;

    if-eqz v4, :cond_d

    if-gez v3, :cond_c

    .line 37
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r(I)V

    goto :goto_1

    .line 38
    :cond_c
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->p(I)V

    goto :goto_1

    :cond_d
    if-lez v3, :cond_e

    .line 39
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r(I)V

    goto :goto_1

    .line 40
    :cond_e
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->p(I)V

    .line 41
    :goto_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 42
    :cond_f
    invoke-direct {p0, v0, v4}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n(II)V

    .line 43
    :cond_10
    :goto_2
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 44
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->s:Landroid/view/VelocityTracker;

    .line 46
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->i:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->f:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_11

    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->j:I

    int-to-float v0, v0

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->f:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_11

    .line 48
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->g()Z

    move-result v0

    if-nez v0, :cond_11

    .line 49
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 50
    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 51
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 52
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->g:I

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->h:I

    .line 54
    :cond_13
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/yanzhenjie/recyclerview/swipe/a;->a(Landroid/widget/OverScroller;II)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->e:I

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->r(I)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->n:Lcom/yanzhenjie/recyclerview/swipe/a;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/swipe/a;->d(II)Lcom/yanzhenjie/recyclerview/swipe/a$a;

    move-result-object p1

    .line 4
    iget-boolean p2, p1, Lcom/yanzhenjie/recyclerview/swipe/a$a;->c:Z

    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->o:Z

    .line 5
    iget p2, p1, Lcom/yanzhenjie/recyclerview/swipe/a$a;->a:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 6
    iget p2, p1, Lcom/yanzhenjie/recyclerview/swipe/a$a;->a:I

    iget p1, p1, Lcom/yanzhenjie/recyclerview/swipe/a$a;->b:I

    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOpenPercent(F)V
    .locals 0

    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->d:F

    return-void
.end method

.method public setScrollerDuration(I)V
    .locals 0

    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->e:I

    return-void
.end method

.method public setSwipeEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuLayout;->q:Z

    return-void
.end method
