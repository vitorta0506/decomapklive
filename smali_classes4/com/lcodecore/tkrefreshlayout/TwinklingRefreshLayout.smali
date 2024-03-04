.class public Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lkc/e;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;
    }
.end annotation


# static fields
.field private static G4:Ljava/lang/String; = ""

.field private static H4:Ljava/lang/String; = ""


# instance fields
.field protected A:Z

.field protected B:Z

.field private final B3:[I

.field private C:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

.field private C4:I

.field private final D:I

.field private D4:I

.field private E:Lkc/e;

.field private E4:Z

.field private final F:Landroidx/core/view/NestedScrollingChildHelper;

.field private F4:Lkc/f;

.field private G:Lmc/c;

.field private H:Lkc/d;

.field private I:F

.field private J:F

.field private K:Landroid/view/VelocityTracker;

.field private L:F

.field private M:F

.field private N:F

.field private O:F

.field private P:I

.field private Q:I

.field private R:Landroid/view/MotionEvent;

.field private V1:I

.field private final V2:[I

.field private V3:I

.field protected a:F

.field private a1:Z

.field private final a2:[I

.field protected b:F

.field protected c:F

.field protected d:F

.field private e:Landroid/view/View;

.field protected f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/FrameLayout;

.field private h:I

.field private i:Lkc/b;

.field private j:Lkc/a;

.field private k:F

.field private l:Landroid/widget/FrameLayout;

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Z

.field protected x:Z

.field protected y:Z

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->h:I

    .line 5
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->m:Z

    .line 6
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->n:Z

    .line 7
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->o:Z

    .line 8
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->p:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->q:Z

    .line 10
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->r:Z

    .line 11
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->s:Z

    .line 12
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->t:Z

    .line 13
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->u:Z

    .line 14
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->v:Z

    .line 15
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->w:Z

    .line 16
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->x:Z

    .line 17
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->y:Z

    .line 18
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->z:Z

    .line 19
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->A:Z

    .line 20
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Z

    .line 21
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D:I

    .line 22
    iput-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E:Lkc/e;

    .line 23
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->P:I

    .line 24
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->Q:I

    mul-int v2, v2, v2

    .line 25
    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V1:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 26
    iput-object v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a2:[I

    new-array v3, v2, [I

    .line 27
    iput-object v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V2:[I

    new-array v2, v2, [I

    .line 28
    iput-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B3:[I

    const/4 v2, -0x1

    .line 29
    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V3:I

    .line 30
    sget-object v2, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 31
    :try_start_0
    sget p3, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_max_head_height:I

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {p1, v2}, Lnc/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a:F

    .line 32
    sget p3, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_head_height:I

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {p1, v3}, Lnc/a;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    .line 33
    sget p3, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_max_bottom_height:I

    invoke-static {p1, v2}, Lnc/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b:F

    .line 34
    sget p3, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_bottom_height:I

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p1, v2}, Lnc/a;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k:F

    .line 35
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_overscroll_height:I

    iget p3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d:F

    .line 36
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_enable_refresh:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->r:Z

    .line 37
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_enable_loadmore:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->q:Z

    .line 38
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_pureScrollMode_on:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->u:Z

    .line 39
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_overscroll_top_show:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->s:Z

    .line 40
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_overscroll_bottom_show:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->t:Z

    .line 41
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_enable_bottom_overscroll:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->y:Z

    .line 42
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_enable_top_overscroll:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->x:Z

    .line 43
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_floatRefresh:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->w:Z

    .line 44
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_autoLoadMore:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->v:Z

    .line 45
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_enable_keepIView:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->z:Z

    .line 46
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_showRefreshingWhenOverScroll:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->A:Z

    .line 47
    sget p1, Lcom/guochao/twink/R$styleable;->TwinklingRefreshLayout_tr_showLoadingWhenOverScroll:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    new-instance p1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-direct {p1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 50
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->y()V

    .line 51
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->x()V

    .line 52
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->w:Z

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 53
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->v:Z

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setAutoLoadMore(Z)V

    .line 54
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->r:Z

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableRefresh(Z)V

    .line 55
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->q:Z

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    .line 56
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Landroidx/core/view/NestedScrollingChildHelper;

    .line 57
    invoke-virtual {p0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 58
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    throw p1
.end method

.method private A(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B3:[I

    aput v4, v5, v3

    aput v4, v5, v4

    .line 5
    :cond_0
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B3:[I

    aget v6, v5, v4

    int-to-float v6, v6

    aget v5, v5, v3

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v5, 0x2

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v5, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_8

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V3:I

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C4:I

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D4:I

    goto/16 :goto_1

    .line 9
    :cond_2
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V3:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_3

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V3:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TwinklingRefreshLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 11
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 13
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C4:I

    sub-int/2addr v1, v2

    .line 14
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D4:I

    sub-int/2addr v2, p1

    .line 15
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V2:[I

    iget-object v6, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a2:[I

    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V2:[I

    aget v5, v1, v4

    .line 17
    aget v1, v1, v3

    sub-int/2addr v2, v1

    .line 18
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a2:[I

    aget v5, v1, v4

    int-to-float v5, v5

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 19
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B3:[I

    aget v5, v1, v4

    iget-object v6, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a2:[I

    aget v7, v6, v4

    add-int/2addr v5, v7

    aput v5, v1, v4

    .line 20
    aget v5, v1, v3

    aget v6, v6, v3

    add-int/2addr v5, v6

    aput v5, v1, v3

    .line 21
    :cond_4
    iget-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E4:Z

    if-nez v1, :cond_7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D:I

    if-le v1, v5, :cond_7

    .line 22
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 23
    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 24
    :cond_5
    iput-boolean v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E4:Z

    if-lez v2, :cond_6

    .line 25
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D:I

    sub-int/2addr v2, v1

    goto :goto_0

    .line 26
    :cond_6
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D:I

    add-int/2addr v2, v1

    .line 27
    :cond_7
    :goto_0
    iget-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E4:Z

    if-eqz v1, :cond_a

    .line 28
    iget-object v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a2:[I

    aget v1, v10, v3

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D4:I

    add-int/lit8 v9, v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    .line 29
    invoke-virtual/range {v5 .. v10}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 30
    iget p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C4:I

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a2:[I

    aget v2, v1, v4

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C4:I

    .line 31
    iget p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D4:I

    aget v2, v1, v3

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D4:I

    .line 32
    aget p1, v1, v4

    int-to-float p1, p1

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 33
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B3:[I

    aget v1, p1, v4

    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a2:[I

    aget v5, v2, v4

    add-int/2addr v1, v5

    aput v1, p1, v4

    .line 34
    aget v1, p1, v3

    aget v2, v2, v3

    add-int/2addr v1, v2

    aput v1, p1, v3

    goto :goto_1

    .line 35
    :cond_8
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->stopNestedScroll()V

    .line 36
    iput-boolean v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E4:Z

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V3:I

    goto :goto_1

    .line 38
    :cond_9
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V3:I

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C4:I

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D4:I

    .line 41
    invoke-virtual {p0, v5}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->startNestedScroll(I)Z

    .line 42
    :cond_a
    :goto_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v3
.end method

.method private E()V
    .locals 1

    new-instance v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->H:Lkc/d;

    return-void
.end method

.method static synthetic k(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lmc/c;
    .locals 0

    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->G:Lmc/c;

    return-object p0
.end method

.method static synthetic l(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F
    .locals 0

    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->I:F

    return p0
.end method

.method static synthetic m(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lkc/a;
    .locals 0

    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lkc/a;

    return-object p0
.end method

.method static synthetic n(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lkc/e;
    .locals 0

    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E:Lkc/e;

    return-object p0
.end method

.method static synthetic o(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic p(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F
    .locals 0

    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:F

    return p0
.end method

.method static synthetic q(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;
    .locals 0

    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    return-object p0
.end method

.method static synthetic r(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->l:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic s(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->g:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static setDefaultFooter(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->H4:Ljava/lang/String;

    return-void
.end method

.method public static setDefaultHeader(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->G4:Ljava/lang/String;

    return-void
.end method

.method static synthetic t(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F
    .locals 0

    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k:F

    return p0
.end method

.method static synthetic u(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic v(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)I
    .locals 0

    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D:I

    return p0
.end method

.method static synthetic w(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lkc/b;
    .locals 0

    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lkc/b;

    return-object p0
.end method

.method private x()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 6
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->l:Landroid/widget/FrameLayout;

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lkc/a;

    if-nez v0, :cond_1

    .line 9
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->H4:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    :try_start_0
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->H4:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 11
    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkc/a;

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFooterView(Lkc/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultFooter classname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwinklingRefreshLayout:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFooterView(Lkc/a;)V

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFooterView(Lkc/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private y()V
    .locals 7

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    .line 3
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5
    sget v5, Lcom/guochao/twink/R$id;->ex_header:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 6
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {p0, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iput-object v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->g:Landroid/widget/FrameLayout;

    .line 10
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->f:Landroid/widget/FrameLayout;

    .line 11
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lkc/b;

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->G4:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    :try_start_0
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->G4:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 14
    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkc/b;

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lkc/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultHeader classname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwinklingRefreshLayout:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lkc/b;)V

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lkc/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private z(Landroid/view/MotionEvent;Lkc/d;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    .line 6
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v8, v6, :cond_4

    if-ne v5, v8, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v9, v11

    .line 8
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    add-int/lit8 v4, v6, -0x1

    goto :goto_4

    :cond_5
    move v4, v6

    :goto_4
    int-to-float v4, v4

    div-float/2addr v9, v4

    div-float/2addr v10, v4

    if-eqz v0, :cond_11

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    if-eq v0, v2, :cond_e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 p2, 0x3

    if-eq v0, p2, :cond_a

    const/4 p2, 0x5

    if-eq v0, p2, :cond_9

    if-eq v0, v1, :cond_6

    goto/16 :goto_9

    .line 9
    :cond_6
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->L:F

    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->N:F

    .line 10
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->M:F

    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->O:F

    .line 11
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->P:I

    int-to-float v0, v0

    invoke-virtual {p2, v5, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 14
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    .line 15
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    :goto_5
    if-ge v3, v6, :cond_13

    if-ne v3, p2, :cond_7

    goto :goto_6

    .line 16
    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 17
    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    mul-float v4, v4, v1

    .line 18
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    mul-float v2, v2, v0

    add-float/2addr v4, v2

    cmpg-float v2, v4, v7

    if-gez v2, :cond_8

    .line 19
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_9

    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 20
    :cond_9
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->L:F

    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->N:F

    .line 21
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->M:F

    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->O:F

    goto/16 :goto_9

    .line 22
    :cond_a
    iput-boolean v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a1:Z

    .line 23
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_13

    .line 24
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 25
    iput-object v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    goto/16 :goto_9

    .line 26
    :cond_b
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->L:F

    sub-float/2addr v0, v9

    .line 27
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->M:F

    sub-float/2addr v1, v10

    .line 28
    iget-boolean v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a1:Z

    if-eqz v2, :cond_c

    .line 29
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->N:F

    sub-float v2, v9, v2

    float-to-int v2, v2

    .line 30
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->O:F

    sub-float v4, v10, v4

    float-to-int v4, v4

    mul-int v2, v2, v2

    mul-int v4, v4, v4

    add-int/2addr v2, v4

    .line 31
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->V1:I

    if-le v2, v4, :cond_13

    .line 32
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->R:Landroid/view/MotionEvent;

    invoke-interface {p2, v2, p1, v0, v1}, Lkc/d;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 33
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->L:F

    .line 34
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->M:F

    .line 35
    iput-boolean v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a1:Z

    goto/16 :goto_9

    .line 36
    :cond_c
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_d

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_13

    .line 37
    :cond_d
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->R:Landroid/view/MotionEvent;

    invoke-interface {p2, v2, p1, v0, v1}, Lkc/d;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 38
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->L:F

    .line 39
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->M:F

    goto :goto_9

    .line 40
    :cond_e
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    iget v6, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->P:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 42
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:F

    .line 43
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->I:F

    .line 44
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->Q:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_10

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->I:F

    .line 45
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->Q:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    goto :goto_8

    .line 46
    :cond_10
    :goto_7
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->R:Landroid/view/MotionEvent;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->I:F

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->J:F

    invoke-interface {p2, v0, p1, v1, v3}, Lkc/d;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 47
    :goto_8
    invoke-interface {p2, p1, v2}, Lkc/d;->a(Landroid/view/MotionEvent;Z)V

    .line 48
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_13

    .line 49
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 50
    iput-object v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->K:Landroid/view/VelocityTracker;

    goto :goto_9

    .line 51
    :cond_11
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->L:F

    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->N:F

    .line 52
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->M:F

    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->O:F

    .line 53
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->R:Landroid/view/MotionEvent;

    if-eqz v0, :cond_12

    .line 54
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 55
    :cond_12
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->R:Landroid/view/MotionEvent;

    .line 56
    iput-boolean v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a1:Z

    .line 57
    invoke-interface {p2, p1}, Lkc/d;->onDown(Landroid/view/MotionEvent;)V

    :cond_13
    :goto_9
    return-void
.end method


# virtual methods
.method public B(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->l()V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lkc/a;

    instance-of v1, v0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    check-cast v0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->e()V

    goto :goto_0

    .line 4
    :cond_1
    check-cast v0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->d()V

    :goto_0
    return-void
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->B(Z)V

    return-void
.end method

.method public D()V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->n()V

    return-void
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F4:Lkc/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkc/f;->a()V

    :cond_0
    return-void
.end method

.method public b(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lkc/b;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    invoke-interface {v0, v1, v2}, Lkc/b;->a(FF)V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F4:Lkc/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lkc/f;->b(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lkc/a;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    invoke-interface {v0, p2, v1, v2}, Lkc/a;->c(FFF)V

    .line 2
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->q:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F4:Lkc/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lkc/f;->c(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    :cond_1
    return-void
.end method

.method public d(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lkc/b;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    invoke-interface {v0, p2, v1, v2}, Lkc/b;->b(FFF)V

    .line 2
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->r:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F4:Lkc/f;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2}, Lkc/f;->d(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    :cond_1
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->G:Lmc/c;

    invoke-interface {v0, p1}, Lmc/c;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->H:Lkc/d;

    invoke-direct {p0, p1, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->z(Landroid/view/MotionEvent;Lkc/d;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->A(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method public e(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lkc/a;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k:F

    invoke-interface {v0, v1, v2}, Lkc/a;->a(FF)V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F4:Lkc/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lkc/f;->e(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lkc/a;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k:F

    invoke-interface {v0, p2, v1, v2}, Lkc/a;->b(FFF)V

    .line 2
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->q:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F4:Lkc/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lkc/f;->f(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    :cond_1
    return-void
.end method

.method public g(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lkc/b;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    invoke-interface {v0, p2, v1, v2}, Lkc/b;->c(FFF)V

    .line 2
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->r:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F4:Lkc/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lkc/f;->g(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    :cond_1
    return-void
.end method

.method public getExtraHeaderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F4:Lkc/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lkc/f;->h()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->L()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lkc/b;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$c;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$c;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    invoke-interface {v0, v1}, Lkc/b;->onFinish(Lkc/c;)V

    return-void
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F4:Lkc/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkc/f;->i()V

    :cond_0
    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F4:Lkc/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lkc/f;->j()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->A()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->C()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lkc/a;

    invoke-interface {v0}, Lkc/a;->onFinish()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->e:Landroid/view/View;

    .line 3
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->z()V

    .line 4
    new-instance v0, Lmc/e;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    new-instance v2, Lmc/f;

    invoke-direct {v2, v1}, Lmc/f;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;)V

    invoke-direct {v0, v1, v2}, Lmc/e;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;Lmc/c;)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->G:Lmc/c;

    .line 5
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->E()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->G:Lmc/c;

    invoke-interface {v0, p1}, Lmc/c;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->G:Lmc/c;

    invoke-interface {v0, p1}, Lmc/c;->f(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setAutoLoadMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->v:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    return-void
.end method

.method public setBothEnableOverScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->y:Z

    .line 2
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->x:Z

    return-void
.end method

.method public setBottomHeight(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnc/a;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->k:F

    return-void
.end method

.method public setDecorator(Lmc/c;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->G:Lmc/c;

    :cond_0
    return-void
.end method

.method public setEnableKeepIView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->z:Z

    return-void
.end method

.method public setEnableLoadmore(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->q:Z

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lkc/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Lkc/a;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Lkc/a;->getView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnableOverScroll(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setEnableRefresh(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->r:Z

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lkc/b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Lkc/b;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Lkc/b;->getView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFloatRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->w:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$b;

    invoke-direct {p1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$b;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFooterView(Lkc/a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->l:Landroid/widget/FrameLayout;

    invoke-interface {p1}, Lkc/a;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->j:Lkc/a;

    :cond_0
    return-void
.end method

.method public setHeaderHeight(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnc/a;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->c:F

    return-void
.end method

.method public setHeaderView(Lkc/b;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->f:Landroid/widget/FrameLayout;

    invoke-interface {p1}, Lkc/b;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->i:Lkc/b;

    :cond_0
    return-void
.end method

.method public setMaxBottomHeight(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnc/a;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->b:F

    return-void
.end method

.method public setMaxHeadHeight(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnc/a;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->a:F

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnRefreshListener(Lkc/f;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F4:Lkc/f;

    :cond_0
    return-void
.end method

.method public setOverScrollBottomShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->t:Z

    return-void
.end method

.method public setOverScrollHeight(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnc/a;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->d:F

    return-void
.end method

.method public setOverScrollRefreshShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->s:Z

    .line 2
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->t:Z

    return-void
.end method

.method public setOverScrollTopShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->s:Z

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->e:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->F:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
