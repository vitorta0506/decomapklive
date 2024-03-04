.class public abstract Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;,
        Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$c;,
        Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/Scroller;

.field protected b:I

.field protected c:I

.field d:Z

.field e:Z

.field f:I

.field g:I

.field h:Z

.field i:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;

.field j:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;

.field private k:Z

.field private l:I

.field private m:I

.field n:Z

.field o:Z

.field private p:J

.field q:F

.field r:F

.field s:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->c:I

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->d:Z

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->e:Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->k:Z

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->m:I

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->l:I

    return p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->m:I

    return p1
.end method

.method private getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->j:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->l:I

    return v0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$c;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->l:I

    return v0
.end method

.method private k(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 3
    :cond_1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->m:I

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_7

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getItemCount()I

    move-result v4

    if-lt v1, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->d:Z

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gez v4, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v4, v4, v6

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    .line 10
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    mul-float v2, v2, v6

    .line 11
    :goto_1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->i:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;

    if-eqz v4, :cond_6

    .line 12
    invoke-interface {v4, v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;->b(II)V

    .line 13
    :cond_6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->e:Z

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    float-to-int p1, v2

    invoke-virtual {v0, v3, v1, v3, p1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 16
    :cond_7
    :goto_2
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->c:I

    .line 17
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->l(Z)V

    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 0

    return-void
.end method

.method public computeScroll()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->computeScroll()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidateOnAnimation()V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->d:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->d:Z

    .line 7
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->l(Z)V

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    .line 9
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 10
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    .line 11
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->c:I

    goto :goto_0

    .line 12
    :cond_1
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->e:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    .line 13
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    goto :goto_0

    .line 14
    :cond_2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->m:I

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 15
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    .line 16
    :cond_3
    :goto_0
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->m:I

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->i:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;

    if-eqz v1, :cond_4

    .line 18
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    invoke-interface {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;->a(II)V

    .line 19
    :cond_4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->j(I)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidateOnAnimation()V

    :cond_5
    return-void
.end method

.method protected d()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->f:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->g:I

    .line 5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 10
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a093e

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 13
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 19
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->a:Landroid/widget/Scroller;

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public abstract e()Z
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->e:Z

    return v0
.end method

.method public abstract g()Z
.end method

.method public getAdapter()Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->j:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    return v0
.end method

.method public getOnScrollCallback()Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->i:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;

    return-object v0
.end method

.method public getRoomContainerId()I
    .locals 1

    const v0, 0x7f0a093e

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->d:Z

    return v0
.end method

.method public abstract i(Landroid/view/MotionEvent;)Z
.end method

.method protected abstract j(I)V
.end method

.method protected l(Z)V
    .locals 7

    const/high16 v0, 0x40400000    # 3.0f

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->a:Landroid/widget/Scroller;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int v5, p1

    const/16 v6, 0x64

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method public m(IZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    if-ne p2, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    if-le p2, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 3
    :goto_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->c:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->k(Z)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    if-eq v3, v2, :cond_4

    .line 5
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->n:Z

    if-eqz p1, :cond_2

    return v4

    .line 6
    :cond_2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->o:Z

    if-eqz p1, :cond_3

    return v1

    .line 7
    :cond_3
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->h:Z

    if-eqz p1, :cond_9

    return v1

    .line 8
    :cond_4
    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->p:J

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v2, v5

    if-eqz v7, :cond_5

    return v1

    .line 9
    :cond_5
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->r:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 10
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->s:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 11
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->f:I

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    cmpl-float v0, v0, p1

    if-lez v0, :cond_6

    .line 12
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->n:Z

    goto :goto_0

    :cond_6
    int-to-float v0, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    .line 13
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->o:Z

    return v1

    .line 14
    :cond_7
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->h:Z

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_8

    .line 16
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 17
    :cond_8
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->r:F

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->s:F

    .line 19
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->n:Z

    .line 20
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->o:Z

    .line 21
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->q:F

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->p:J

    .line 23
    :cond_9
    :goto_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->n:Z

    return p1
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 4
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 5
    invoke-virtual {v4, p1, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_7

    if-eq v3, v2, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_7

    goto/16 :goto_1

    .line 5
    :cond_2
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->n:Z

    if-eqz v2, :cond_c

    .line 6
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->q:F

    sub-float/2addr v2, v0

    .line 7
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    if-gtz v3, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_3

    cmpg-float v3, v2, v5

    if-gez v3, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->l(Z)V

    return v6

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v6

    .line 11
    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->m:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 12
    :cond_4
    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    if-lt v7, v3, :cond_6

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_6

    cmpl-float v3, v2, v5

    if-lez v3, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->i(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 16
    :cond_5
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->l(Z)V

    return v6

    :cond_6
    float-to-int p1, v2

    .line 17
    invoke-virtual {p0, v1, p1}, Landroid/widget/LinearLayout;->scrollBy(II)V

    goto :goto_1

    .line 18
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 19
    iput v5, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->q:F

    .line 20
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->i(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 21
    :cond_8
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->n:Z

    if-nez p1, :cond_9

    .line 22
    iput v5, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->q:F

    return v1

    .line 23
    :cond_9
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->r:F

    sub-float p1, v0, p1

    .line 24
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->g:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_a

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v0, v1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 27
    iput v5, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->q:F

    return v1

    .line 28
    :cond_a
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->r:F

    sub-float/2addr p1, v0

    cmpl-float p1, p1, v5

    if-lez p1, :cond_b

    .line 29
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->k(Z)V

    goto :goto_0

    .line 30
    :cond_b
    invoke-direct {p0, v6}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->k(Z)V

    .line 31
    :goto_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->h:Z

    .line 32
    :cond_c
    :goto_1
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->q:F

    return v6
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->h:Z

    return-void
.end method

.method public setAdapter(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->j:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;->d(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->j:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;

    .line 4
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$d;->d(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->m(IZ)V

    return-void
.end method

.method public abstract setEnableLoadMore(Z)V
.end method

.method public setIndexOnly(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->b:I

    return-void
.end method

.method public setOnScrollCallback(Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->i:Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView$e;

    return-void
.end method

.method public setScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->d:Z

    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->k:Z

    return-void
.end method
