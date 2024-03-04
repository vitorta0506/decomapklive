.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lwd/j;
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;
    }
.end annotation


# static fields
.field protected static l5:Lwd/a;

.field protected static m5:Lwd/b;

.field protected static n5:Lwd/c;


# instance fields
.field protected A:Z

.field protected B:Z

.field protected B3:Lzd/b;

.field protected C:Z

.field protected C4:Lwd/k;

.field protected D:Z

.field protected D4:I

.field protected E:Z

.field protected E4:Z

.field protected F:Z

.field protected F4:[I

.field protected G:Z

.field protected G4:Landroidx/core/view/NestedScrollingChildHelper;

.field protected H:Z

.field protected H4:Landroidx/core/view/NestedScrollingParentHelper;

.field protected I:Z

.field protected I4:I

.field protected J:Z

.field protected J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field protected K:Z

.field protected K4:I

.field protected L:Z

.field protected L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field protected M:Z

.field protected M4:I

.field protected N:Z

.field protected N4:I

.field protected O:Z

.field protected O4:F

.field protected P:Z

.field protected P4:F

.field protected Q:Z

.field protected Q4:F

.field protected R:Z

.field protected R4:F

.field protected S4:Lwd/h;

.field protected T4:Lwd/h;

.field protected U4:Lwd/e;

.field protected V1:Z

.field protected V2:Lzd/d;

.field protected V3:Lzd/c;

.field protected V4:Landroid/graphics/Paint;

.field protected W4:Landroid/os/Handler;

.field protected X4:Lwd/i;

.field protected Y4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lae/a;",
            ">;"
        }
    .end annotation
.end field

.field protected Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected a:I

.field protected a1:Z

.field protected a2:Z

.field protected a5:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected b:I

.field protected b5:J

.field protected c:I

.field protected c5:I

.field protected d:I

.field protected d5:I

.field protected e:I

.field protected e5:Z

.field protected f:I

.field protected f5:Z

.field protected g:I

.field protected g5:Z

.field protected h:F

.field protected h5:Z

.field protected i:F

.field protected i5:Landroid/view/MotionEvent;

.field protected j:F

.field protected j5:Ljava/lang/Runnable;

.field protected k:F

.field protected k5:Landroid/animation/ValueAnimator;

.field protected l:F

.field protected m:C

.field protected n:Z

.field protected o:Z

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:Landroid/widget/Scroller;

.field protected x:Landroid/view/VelocityTracker;

.field protected y:Landroid/view/animation/Interpolator;

.field protected z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xfa

    .line 4
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:I

    .line 5
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    const/high16 p3, 0x3f000000    # 0.5f

    .line 6
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    const/16 p3, 0x6e

    .line 7
    iput-char p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:I

    .line 9
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:I

    .line 10
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    .line 11
    iput p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    const/4 p3, 0x1

    .line 12
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 14
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    .line 15
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    .line 16
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    .line 17
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    .line 18
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    .line 19
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    .line 20
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    .line 21
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    .line 22
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    .line 23
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    .line 24
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:Z

    .line 25
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:Z

    .line 26
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    .line 27
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    .line 28
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    .line 29
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    .line 30
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a1:Z

    .line 31
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V1:Z

    .line 32
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a2:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 33
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F4:[I

    .line 34
    new-instance v2, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v2, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G4:Landroidx/core/view/NestedScrollingChildHelper;

    .line 35
    new-instance v2, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v2, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H4:Landroidx/core/view/NestedScrollingParentHelper;

    .line 36
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 37
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/high16 v2, 0x40200000    # 2.5f

    .line 38
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    .line 39
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P4:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q4:F

    .line 41
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R4:F

    .line 42
    new-instance v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;

    invoke-direct {v2, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$m;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    .line 43
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 44
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a5:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-wide/16 v2, 0x0

    .line 45
    iput-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b5:J

    .line 46
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c5:I

    .line 47
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d5:I

    .line 48
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g5:Z

    .line 49
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h5:Z

    const/4 v2, 0x0

    .line 50
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i5:Landroid/view/MotionEvent;

    .line 51
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 52
    new-instance v2, Lae/b;

    invoke-direct {v2}, Lae/b;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 54
    new-instance v4, Landroid/widget/Scroller;

    invoke-direct {v4, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    .line 55
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    .line 57
    new-instance v4, Lae/f;

    invoke-direct {v4}, Lae/f;-><init>()V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y:Landroid/view/animation/Interpolator;

    .line 58
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    .line 59
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    .line 60
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:I

    const/high16 v3, 0x42700000    # 60.0f

    .line 61
    invoke-virtual {v2, v3}, Lae/b;->a(F)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    const/high16 v3, 0x42c80000    # 100.0f

    .line 62
    invoke-virtual {v2, v3}, Lae/b;->a(F)I

    move-result v2

    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    .line 63
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G4:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 64
    sget-object v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n5:Lwd/c;

    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v2, p1, p0}, Lwd/c;->a(Landroid/content/Context;Lwd/j;)V

    .line 66
    :cond_0
    sget-object v2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G4:Landroidx/core/view/NestedScrollingChildHelper;

    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableNestedScrolling:I

    invoke-virtual {p2}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 68
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDragRate:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    .line 69
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderMaxDragRate:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    .line 70
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterMaxDragRate:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P4:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P4:F

    .line 71
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderTriggerRate:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q4:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q4:F

    .line 72
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterTriggerRate:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R4:F

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R4:F

    .line 73
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableRefresh:I

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    .line 74
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlReboundDuration:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    .line 75
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableLoadMore:I

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 76
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderHeight:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    .line 77
    sget v3, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterHeight:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    .line 78
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderInsetStart:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M4:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M4:I

    .line 79
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterInsetStart:I

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N4:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N4:I

    .line 80
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDisableContentWhenRefresh:I

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    .line 81
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDisableContentWhenLoading:I

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    .line 82
    sget v4, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    iget-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    .line 83
    sget v5, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    .line 84
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnablePreviewInEditMode:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    .line 85
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableAutoLoadMore:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    .line 86
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableOverScrollBounce:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    .line 87
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnablePureScrollMode:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    .line 88
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenLoaded:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M:Z

    .line 89
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenRefreshed:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N:Z

    .line 90
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    .line 91
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    .line 92
    sget v7, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenNoMoreData:I

    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    .line 93
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    .line 94
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    .line 95
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableOverScrollDrag:I

    iget-boolean v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    .line 96
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFixedHeaderViewId:I

    iget v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:I

    .line 97
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFixedFooterViewId:I

    iget v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:I

    .line 98
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderTranslationViewId:I

    iget v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    .line 99
    sget v6, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterTranslationViewId:I

    iget v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    .line 100
    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a1:Z

    if-nez v6, :cond_2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a1:Z

    .line 101
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V1:Z

    if-nez p2, :cond_4

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p2, 0x1

    :goto_3
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V1:Z

    .line 102
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a2:Z

    if-nez p2, :cond_6

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    const/4 p2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 p2, 0x1

    :goto_5
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a2:Z

    .line 103
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_6

    :cond_7
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_6
    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 104
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_7

    :cond_8
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_7
    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 105
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlAccentColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 106
    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlPrimaryColor:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    if-eqz v2, :cond_a

    if-eqz p2, :cond_9

    new-array v1, v1, [I

    aput v2, v1, v0

    aput p2, v1, p3

    .line 107
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    goto :goto_8

    :cond_9
    new-array p2, p3, [I

    aput v2, p2, v0

    .line 108
    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    goto :goto_8

    :cond_a
    if-eqz p2, :cond_b

    new-array v1, v1, [I

    aput v0, v1, v0

    aput p2, v1, p3

    .line 109
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    .line 110
    :cond_b
    :goto_8
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a1:Z

    if-nez p2, :cond_c

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez p2, :cond_c

    .line 111
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 112
    :cond_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic g(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static setDefaultRefreshFooterCreator(Lwd/a;)V
    .locals 0
    .param p0    # Lwd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l5:Lwd/a;

    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lwd/b;)V
    .locals 0
    .param p0    # Lwd/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m5:Lwd/b;

    return-void
.end method

.method public static setDefaultRefreshInitializer(Lwd/c;)V
    .locals 0
    .param p0    # Lwd/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n5:Lwd/c;

    return-void
.end method


# virtual methods
.method public A(Landroid/util/AttributeSet;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;
    .locals 2

    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected B(Landroid/view/ViewGroup$LayoutParams;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;
    .locals 1

    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    invoke-direct {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected C(I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_5

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v2}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v2}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    .line 9
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j5:Ljava/lang/Runnable;

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method protected D(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected E(ZLwd/h;)Z
    .locals 0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p1

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne p1, p2, :cond_0

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

.method protected F(F)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E4:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    if-nez v1, :cond_0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    invoke-interface {v1}, Lwd/e;->canLoadMore()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    .line 3
    :goto_0
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    .line 4
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    float-to-int v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v3, v4, v5}, Lwd/i;->g(IZ)Lwd/i;

    goto/16 :goto_1

    .line 5
    :cond_1
    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-ne v3, v4, :cond_4

    cmpl-float v4, v1, v2

    if-ltz v4, :cond_4

    .line 6
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    int-to-float v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    .line 7
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    float-to-int v4, v1

    invoke-interface {v3, v4, v5}, Lwd/i;->g(IZ)Lwd/i;

    goto/16 :goto_1

    .line 8
    :cond_2
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    sub-float/2addr v4, v6

    int-to-float v3, v3

    mul-float v4, v4, v3

    float-to-double v3, v4

    .line 9
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    sub-int/2addr v6, v13

    int-to-double v14, v6

    int-to-float v6, v13

    sub-float v6, v1, v6

    .line 10
    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    mul-float v6, v6, v13

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v5, v6

    move-wide/from16 v16, v3

    neg-double v2, v5

    cmpl-double v4, v14, v7

    if-nez v4, :cond_3

    move-wide v14, v11

    :cond_3
    div-double/2addr v2, v14

    .line 11
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v11, v2

    mul-double v3, v16, v11

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 12
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    double-to-int v2, v2

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lwd/i;->g(IZ)Lwd/i;

    goto/16 :goto_1

    :cond_4
    cmpg-float v4, v1, v2

    if-gez v4, :cond_9

    .line 13
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v3, v2, :cond_6

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 14
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v2, :cond_9

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-nez v2, :cond_9

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 15
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 16
    :cond_6
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    neg-int v3, v2

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_7

    .line 17
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    float-to-int v3, v1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lwd/i;->g(IZ)Lwd/i;

    goto/16 :goto_1

    .line 18
    :cond_7
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P4:F

    sub-float/2addr v3, v6

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-double v2, v3

    .line 19
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    sub-int/2addr v4, v5

    int-to-double v14, v4

    int-to-float v4, v5

    add-float/2addr v4, v1

    .line 20
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    mul-float v4, v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    neg-double v11, v4

    cmpl-double v6, v14, v7

    if-nez v6, :cond_8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    :cond_8
    div-double/2addr v11, v14

    .line 21
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v11, v8, v6

    mul-double v2, v2, v11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 22
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    double-to-int v2, v2

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lwd/i;->g(IZ)Lwd/i;

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_b

    .line 23
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 24
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 25
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    mul-float v6, v6, v1

    const/4 v11, 0x0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v11, v6

    neg-double v14, v11

    cmpl-double v6, v4, v7

    if-nez v6, :cond_a

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_a
    div-double/2addr v14, v4

    .line 26
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    mul-double v2, v2, v4

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 27
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lwd/i;->g(IZ)Lwd/i;

    goto :goto_1

    .line 28
    :cond_b
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P4:F

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-double v2, v2

    .line 29
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    .line 30
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l:F

    mul-float v6, v6, v1

    const/4 v11, 0x0

    invoke-static {v11, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    neg-float v6, v6

    float-to-double v11, v6

    neg-double v14, v11

    cmpl-double v6, v4, v7

    if-nez v6, :cond_c

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_c
    div-double/2addr v14, v4

    .line 31
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v4, v6, v4

    mul-double v2, v2, v4

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 32
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    double-to-int v2, v2

    const/4 v3, 0x1

    invoke-interface {v4, v2, v3}, Lwd/i;->g(IZ)Lwd/i;

    .line 33
    :goto_1
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-nez v2, :cond_e

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_e

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_e

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_e

    .line 34
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    .line 35
    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j5:Ljava/lang/Runnable;

    .line 36
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    neg-int v2, v2

    invoke-interface {v1, v2}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    :cond_d
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateDirectLoading(Z)V

    .line 38
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;

    invoke-direct {v1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$f;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    return-void
.end method

.method protected G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, p1, :cond_2

    .line 2
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 3
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a5:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    .line 5
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    .line 6
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p0, v0, p1}, Lzd/f;->e(Lwd/j;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2, p0, v0, p1}, Lzd/f;->e(Lwd/j;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_1
    if-eqz v3, :cond_3

    .line 9
    invoke-interface {v3, p0, v0, p1}, Lzd/f;->e(Lwd/j;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a5:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_3

    .line 11
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a5:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :cond_3
    :goto_0
    return-void
.end method

.method protected H()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    const/16 v1, -0x3e8

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-interface {v0, v1}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 4
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v0, :cond_e

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    invoke-interface {v0}, Lwd/i;->c()Lwd/i;

    goto/16 :goto_1

    .line 7
    :cond_1
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 8
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v3, :cond_4

    .line 10
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    if-le v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    invoke-interface {v0, v1}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_3
    if-gez v0, :cond_e

    .line 12
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    invoke-interface {v0, v2}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 13
    :cond_4
    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v4, :cond_5

    .line 14
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    goto/16 :goto_1

    .line 15
    :cond_5
    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v4, :cond_6

    .line 16
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    goto :goto_1

    .line 17
    :cond_6
    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v4, :cond_7

    .line 18
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    invoke-interface {v0, v3}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    goto :goto_1

    .line 19
    :cond_7
    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v3, :cond_8

    .line 20
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    invoke-interface {v0, v1}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    goto :goto_1

    .line 21
    :cond_8
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_9

    .line 22
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    goto :goto_1

    .line 23
    :cond_9
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_a

    .line 24
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_e

    .line 25
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    invoke-interface {v0, v1}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 26
    :cond_a
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_b

    .line 27
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_e

    .line 28
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 29
    :cond_b
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v0, :cond_e

    .line 30
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    invoke-interface {v0, v2}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 31
    :cond_c
    :goto_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    neg-int v3, v1

    if-ge v0, v3, :cond_d

    .line 32
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    neg-int v1, v1

    invoke-interface {v0, v1}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_d
    if-lez v0, :cond_e

    .line 33
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    invoke-interface {v0, v2}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    :cond_e
    :goto_1
    return-void
.end method

.method public I()Lwd/j;
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    .line 2
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    instance-of v2, v1, Lwd/f;

    if-eqz v2, :cond_0

    check-cast v1, Lwd/f;

    invoke-interface {v1, v0}, Lwd/f;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Footer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528ClassicsFooter\u6216\u8005\u81ea\u5b9a\u4e49)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method protected J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public K(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    return-object p0
.end method

.method public L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a1:Z

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    return-object p0
.end method

.method public M(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    return-object p0
.end method

.method public N(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    return-object p0
.end method

.method public O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    return-object p0
.end method

.method public P(F)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    invoke-static {p1}, Lae/b;->b(F)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M4:I

    return-object p0
.end method

.method public Q(F)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 4

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W4:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    int-to-float v3, v2

    mul-float p1, p1, v3

    float-to-int p1, p1

    invoke-interface {v0, v1, v2, p1}, Lwd/h;->g(Lwd/i;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_0
    return-object p0
.end method

.method public R(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    instance-of v1, v0, Lwd/f;

    if-eqz v1, :cond_1

    check-cast v0, Lwd/f;

    invoke-interface {v0, p1}, Lwd/f;->b(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Footer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528ClassicsFooter\u6216\u8005\u81ea\u5b9a\u4e49)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public S(Lzd/b;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B3:Lzd/b;

    .line 2
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a1:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    return-object p0
.end method

.method public T(Lzd/d;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V2:Lzd/d;

    return-object p0
.end method

.method public U(Lzd/e;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V2:Lzd/d;

    .line 2
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B3:Lzd/b;

    .line 3
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a1:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    return-object p0
.end method

.method public V(Lwd/f;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 2
    .param p1    # Lwd/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W(Lwd/f;II)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public W(Lwd/f;II)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 2
    .param p1    # Lwd/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d5:I

    .line 5
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f5:Z

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 7
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a1:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v0}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v0, v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v0}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    invoke-direct {v1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;-><init>(II)V

    invoke-super {p0, v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {p1}, Lwd/h;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_2
    return-object p0
.end method

.method public X(Lwd/g;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 2
    .param p1    # Lwd/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Y(Lwd/g;II)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public Y(Lwd/g;II)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 2
    .param p1    # Lwd/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c5:I

    .line 5
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e5:Z

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v0}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v0}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    invoke-direct {v1, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;-><init>(II)V

    invoke-super {p0, v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {p1}, Lwd/h;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_0
    return-object p0
.end method

.method protected Z(Ljava/lang/Float;)Z
    .locals 12

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t:I

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 3
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    int-to-float v1, v0

    mul-float v1, v1, p1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v5, 0x1

    if-eq v1, v4, :cond_2

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v4, :cond_2

    if-gez v0, :cond_1

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isReleaseToOpening:Z

    if-eqz v1, :cond_3

    return v5

    .line 6
    :cond_2
    :goto_1
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;F)V

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$k;->b()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j5:Ljava/lang/Runnable;

    return v5

    :cond_3
    cmpg-float v1, p1, v3

    if-gez v1, :cond_6

    .line 7
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v1, :cond_8

    :cond_4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v4, :cond_5

    if-gez v0, :cond_8

    :cond_5
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    cmpl-float v0, p1, v3

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-nez v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gtz v0, :cond_9

    .line 8
    :cond_8
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h5:Z

    .line 9
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    neg-float p1, p1

    float-to-int v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, -0x7fffffff

    const v11, 0x7fffffff

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 10
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return v2
.end method

.method public bridge synthetic a(Z)Lwd/j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Z)Lwd/j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)Lwd/j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-object p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    return p1
.end method

.method public computeScroll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 4
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    invoke-interface {v2}, Lwd/e;->canRefresh()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-lez v0, :cond_6

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    .line 5
    invoke-interface {v2}, Lwd/e;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6
    :cond_3
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h5:Z

    if-eqz v2, :cond_5

    if-lez v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    .line 8
    :goto_0
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n(F)V

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 10
    :cond_6
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h5:Z

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_1
    return-void
.end method

.method public bridge synthetic d(I)Lwd/j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v2, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v6, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v8, v5, :cond_3

    if-ne v4, v8, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v9, v13

    .line 5
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    int-to-float v3, v5

    div-float/2addr v9, v3

    div-float v8, v12, v3

    const/4 v3, 0x5

    if-eq v6, v2, :cond_5

    if-ne v6, v3, :cond_6

    .line 6
    :cond_5
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v4, :cond_6

    .line 7
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    sub-float v5, v8, v5

    add-float/2addr v4, v5

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 8
    :cond_6
    iput v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    .line 9
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    .line 10
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E4:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_a

    .line 11
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    .line 12
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v6, v5, :cond_9

    .line 13
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    if-ne v2, v3, :cond_9

    .line 14
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    float-to-int v2, v2

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 16
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v11, v3

    :goto_4
    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 17
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-lez v5, :cond_8

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lwd/h;->j()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 18
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v5, v4, v2, v3}, Lwd/h;->h(FII)V

    goto :goto_5

    .line 19
    :cond_8
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v5, :cond_9

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lwd/h;->j()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 20
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v5, v4, v2, v3}, Lwd/h;->h(FII)V

    :cond_9
    :goto_5
    return v1

    .line 21
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_37

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-eqz v4, :cond_37

    :cond_b
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->e5:Z

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v12, :cond_c

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v12, :cond_d

    :cond_c
    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-nez v4, :cond_37

    :cond_d
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f5:Z

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v12, :cond_e

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v12, :cond_f

    :cond_e
    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v4, :cond_f

    goto/16 :goto_e

    .line 22
    :cond_f
    invoke-virtual {v0, v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C(I)Z

    move-result v4

    if-nez v4, :cond_36

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v12, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v12, :cond_36

    sget-object v12, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v4, v12, :cond_10

    iget-boolean v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q:Z

    if-nez v13, :cond_36

    :cond_10
    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v4, v13, :cond_11

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P:Z

    if-eqz v4, :cond_11

    goto/16 :goto_d

    :cond_11
    const/16 v4, 0x68

    if-eqz v6, :cond_33

    const/4 v2, 0x0

    if-eq v6, v11, :cond_2f

    const/4 v3, 0x3

    if-eq v6, v5, :cond_12

    if-eq v6, v3, :cond_30

    goto/16 :goto_c

    .line 23
    :cond_12
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    sub-float/2addr v9, v5

    .line 24
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    sub-float v5, v8, v5

    .line 25
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 26
    iget-boolean v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-nez v6, :cond_1f

    iget-char v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    if-eq v6, v4, :cond_1f

    iget-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    if-eqz v13, :cond_1f

    const/16 v13, 0x76

    if-eq v6, v13, :cond_14

    .line 27
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v14, v14

    cmpl-float v6, v6, v14

    if-ltz v6, :cond_13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v6, v6, v14

    if-gez v6, :cond_13

    goto :goto_6

    .line 28
    :cond_13
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v12, v12

    cmpl-float v6, v6, v12

    if-ltz v6, :cond_1f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v6, v6, v12

    if-lez v6, :cond_1f

    iget-char v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    if-eq v6, v13, :cond_1f

    .line 29
    iput-char v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    goto/16 :goto_a

    .line 30
    :cond_14
    :goto_6
    iput-char v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    cmpl-float v4, v5, v7

    if-lez v4, :cond_17

    .line 31
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-ltz v4, :cond_16

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v4, :cond_15

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-eqz v4, :cond_17

    :cond_15
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    invoke-interface {v4}, Lwd/e;->canRefresh()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 32
    :cond_16
    iput-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    .line 33
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v4, v4

    sub-float v4, v8, v4

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    goto :goto_7

    :cond_17
    cmpg-float v4, v5, v7

    if-gez v4, :cond_1b

    .line 34
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gtz v4, :cond_1a

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v4, :cond_18

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-eqz v4, :cond_1b

    :cond_18
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v4, v12, :cond_19

    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g5:Z

    if-nez v4, :cond_1a

    :cond_19
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    invoke-interface {v4}, Lwd/e;->canLoadMore()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 35
    :cond_1a
    iput-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    .line 36
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 37
    :cond_1b
    :goto_7
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v4, :cond_1f

    .line 38
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    sub-float v5, v8, v4

    .line 39
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:Z

    if-eqz v4, :cond_1c

    .line 40
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 41
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    :cond_1c
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gtz v6, :cond_1e

    if-nez v6, :cond_1d

    cmpl-float v6, v5, v7

    if-lez v6, :cond_1d

    goto :goto_8

    :cond_1d
    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    goto :goto_9

    :cond_1e
    :goto_8
    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :goto_9
    invoke-interface {v4, v6}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 44
    invoke-interface {v4, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 45
    :cond_1f
    :goto_a
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v4, :cond_2e

    float-to-int v4, v5

    .line 46
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    add-int/2addr v4, v6

    .line 47
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a5:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v12, v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v12, :cond_20

    if-ltz v4, :cond_21

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:I

    if-ltz v12, :cond_21

    :cond_20
    iget-boolean v6, v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v6, :cond_2d

    if-gtz v4, :cond_21

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:I

    if-lez v6, :cond_2d

    .line 48
    :cond_21
    iput v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:I

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    .line 50
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i5:Landroid/view/MotionEvent;

    if-nez v1, :cond_22

    const/16 v16, 0x0

    .line 51
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    move/from16 v18, v1

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i5:Landroid/view/MotionEvent;

    .line 52
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_22
    const/16 v16, 0x2

    .line 53
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    int-to-float v6, v4

    add-float v18, v1, v6

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 54
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 55
    iget-boolean v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g5:Z

    if-eqz v6, :cond_23

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_23

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v5, :cond_23

    .line 56
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g5:Z

    :cond_23
    if-lez v4, :cond_25

    .line 57
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v5, :cond_24

    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-eqz v5, :cond_25

    :cond_24
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    invoke-interface {v5}, Lwd/e;->canRefresh()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 58
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 59
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 60
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v4, v5}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    goto :goto_b

    :cond_25
    if-gez v4, :cond_27

    .line 61
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez v5, :cond_26

    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-eqz v5, :cond_27

    :cond_26
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    invoke-interface {v5}, Lwd/e;->canLoadMore()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 62
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k:F

    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 63
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 64
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v4, v5}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    goto :goto_b

    :cond_27
    move v10, v4

    .line 65
    :goto_b
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a5:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v5, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v5, :cond_28

    if-ltz v10, :cond_29

    :cond_28
    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v4, :cond_2b

    if-lez v10, :cond_2b

    .line 66
    :cond_29
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v1, :cond_2a

    .line 67
    invoke-virtual {v0, v7}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F(F)V

    :cond_2a
    return v11

    .line 68
    :cond_2b
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i5:Landroid/view/MotionEvent;

    if-eqz v4, :cond_2c

    .line 69
    iput-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i5:Landroid/view/MotionEvent;

    .line 70
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 71
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    :cond_2c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    move v4, v10

    :cond_2d
    int-to-float v1, v4

    .line 73
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F(F)V

    return v11

    .line 74
    :cond_2e
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g5:Z

    if-eqz v2, :cond_32

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a:I

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_32

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v2, :cond_32

    .line 75
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g5:Z

    goto :goto_c

    .line 76
    :cond_2f
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 77
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 78
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    .line 79
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z(Ljava/lang/Float;)Z

    .line 80
    :cond_30
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    const/16 v3, 0x6e

    .line 81
    iput-char v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    .line 82
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i5:Landroid/view/MotionEvent;

    if-eqz v3, :cond_31

    .line 83
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 84
    iput-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i5:Landroid/view/MotionEvent;

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 86
    iget v7, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 87
    invoke-super {v0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 88
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 89
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H()V

    .line 90
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    if-eqz v2, :cond_32

    .line 91
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    return v11

    .line 92
    :cond_32
    :goto_c
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 93
    :cond_33
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->v:I

    .line 94
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 95
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w:Landroid/widget/Scroller;

    invoke-virtual {v5, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 96
    iput v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h:F

    .line 97
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    .line 98
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c:I

    .line 99
    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iput v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d:I

    .line 100
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->n:Z

    .line 101
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:Z

    .line 102
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v5, v6, :cond_34

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    div-int/2addr v6, v2

    int-to-float v2, v6

    cmpg-float v2, v5, v2

    if-gez v2, :cond_34

    .line 103
    iput-char v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m:C

    .line 104
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->o:Z

    return v1

    .line 105
    :cond_34
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    if-eqz v2, :cond_35

    .line 106
    invoke-interface {v2, v1}, Lwd/e;->a(Landroid/view/MotionEvent;)V

    :cond_35
    return v11

    :cond_36
    :goto_d
    return v10

    .line 107
    :cond_37
    :goto_e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lwd/e;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_6

    .line 3
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_6

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    add-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c5:I

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V4:Landroid/graphics/Paint;

    if-eqz v4, :cond_4

    .line 6
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v3}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v3}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_3

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    add-int/2addr v1, v3

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v7, v3

    int-to-float v8, v1

    iget-object v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V4:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 12
    :cond_4
    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v3}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_6

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_5
    :goto_2
    return v2

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_c

    .line 18
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_4

    :cond_7
    if-eqz v0, :cond_c

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 20
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->d5:I

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V4:Landroid/graphics/Paint;

    if-eqz v2, :cond_a

    .line 21
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v1}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_8

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_3

    .line 24
    :cond_8
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v1}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_9

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    add-int/2addr v0, v1

    .line 26
    :cond_9
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V4:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 27
    :cond_a
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v1}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_c

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_b
    :goto_4
    return v2

    .line 32
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic e(F)Lwd/j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Q(F)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Z)Lwd/j;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A(Landroid/util/AttributeSet;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B(Landroid/view/ViewGroup$LayoutParams;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLayout()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H4:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getRefreshFooter()Lwd/f;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    instance-of v1, v0, Lwd/f;

    if-eqz v1, :cond_0

    check-cast v0, Lwd/f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRefreshHeader()Lwd/g;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    instance-of v1, v0, Lwd/g;

    if-eqz v1, :cond_0

    check-cast v0, Lwd/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()Lcom/scwang/smartrefresh/layout/constant/RefreshState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    return-object v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G4:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected m(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j5:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 5
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;

    invoke-direct {p3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$d;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$e;

    invoke-direct {p3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$e;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 11
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 12
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    return-object p1

    :cond_1
    return-object v1
.end method

.method protected n(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_1

    .line 3
    :cond_0
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j5:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 5
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 6
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_4

    .line 7
    :cond_3
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    neg-int v1, v1

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j5:Ljava/lang/Runnable;

    goto :goto_0

    .line 8
    :cond_4
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I:Z

    if-eqz v0, :cond_5

    .line 9
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$j;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j5:Ljava/lang/Runnable;

    :cond_5
    :goto_0
    return-void
.end method

.method public o()Z
    .locals 7

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W4:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    int-to-float v6, v5

    mul-float v4, v4, v6

    mul-float v4, v4, v3

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :cond_1
    int-to-float v3, v5

    div-float/2addr v4, v3

    invoke-virtual {p0, v0, v2, v4, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p(IIFZ)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W4:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W4:Landroid/os/Handler;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Y4:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/a;

    .line 7
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W4:Landroid/os/Handler;

    iget-wide v4, v2, Lae/a;->a:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Y4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Y4:Ljava/util/List;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-nez v0, :cond_4

    .line 11
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m5:Lwd/b;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lwd/b;->a(Landroid/content/Context;Lwd/j;)Lwd/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X(Lwd/g;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_1

    .line 13
    :cond_3
    new-instance v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X(Lwd/g;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 14
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 15
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->l5:Lwd/a;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Lwd/a;->a(Landroid/content/Context;Lwd/j;)Lwd/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V(Lwd/f;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_4

    .line 17
    :cond_5
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 18
    new-instance v3, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V(Lwd/f;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 19
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    goto :goto_4

    .line 20
    :cond_6
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a1:Z

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 21
    :goto_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    if-nez v0, :cond_c

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_c

    .line 23
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 24
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v5

    if-eq v4, v5, :cond_b

    :cond_9
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v5, :cond_a

    .line 25
    invoke-interface {v5}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v5

    if-eq v4, v5, :cond_b

    .line 26
    :cond_a
    new-instance v5, Lxd/a;

    invoke-direct {v5, v4}, Lxd/a;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    if-nez v0, :cond_d

    const/high16 v0, 0x41a00000    # 20.0f

    .line 28
    invoke-static {v0}, Lae/b;->b(F)I

    move-result v3

    .line 29
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, -0x9a00

    .line 30
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x11

    .line 31
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 32
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 33
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_content_empty:I

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, -0x1

    .line 34
    invoke-super {p0, v4, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 35
    new-instance v0, Lxd/a;

    invoke-direct {v0, v4}, Lxd/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    .line 36
    invoke-interface {v0}, Lwd/e;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    :cond_d
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p:I

    if-lez v0, :cond_e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_6

    :cond_e
    move-object v0, v1

    .line 38
    :goto_6
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q:I

    if-lez v3, :cond_f

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 39
    :cond_f
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C4:Lwd/k;

    invoke-interface {v3, v4}, Lwd/e;->e(Lwd/k;)V

    .line 40
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O:Z

    invoke-interface {v3, v4}, Lwd/e;->b(Z)V

    .line 41
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    invoke-interface {v3, v4, v0, v1}, Lwd/e;->h(Lwd/i;Landroid/view/View;Landroid/view/View;)V

    .line 42
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-eqz v0, :cond_10

    .line 43
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 44
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s:I

    invoke-interface {v0, v2, v1, v3}, Lwd/e;->f(III)V

    .line 45
    :cond_10
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    if-eqz v0, :cond_12

    .line 46
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v1, :cond_11

    .line 47
    invoke-interface {v1, v0}, Lwd/h;->setPrimaryColors([I)V

    .line 48
    :cond_11
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v0, :cond_12

    .line 49
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->z:[I

    invoke-interface {v0, v1}, Lwd/h;->setPrimaryColors([I)V

    .line 50
    :cond_12
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    if-eqz v0, :cond_13

    .line 51
    invoke-interface {v0}, Lwd/e;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 52
    :cond_13
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq v0, v1, :cond_14

    .line 53
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v0}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 54
    :cond_14
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq v0, v1, :cond_15

    .line 55
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v0}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_15
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lwd/i;->g(IZ)Lwd/i;

    .line 3
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W4:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W4:Landroid/os/Handler;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Y4:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Y4:Ljava/util/List;

    .line 10
    :cond_1
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a1:Z

    .line 11
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j5:Ljava/lang/Runnable;

    .line 12
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 14
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 15
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->k5:Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_4

    .line 3
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4
    invoke-static {v9}, Lae/e;->b(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lt v6, v7, :cond_0

    if-ne v4, v8, :cond_1

    :cond_0
    move v5, v4

    const/4 v6, 0x2

    goto :goto_2

    .line 5
    :cond_1
    instance-of v7, v9, Lwd/h;

    if-nez v7, :cond_3

    if-ge v6, v8, :cond_3

    if-lez v4, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move v5, v4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ltz v5, :cond_7

    .line 6
    new-instance v4, Lxd/a;

    invoke-super {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v6}, Lxd/a;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    if-ne v5, v8, :cond_6

    if-ne v0, v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    if-ne v0, v7, :cond_7

    const/4 v1, -0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, -0x1

    :goto_3
    const/4 v7, -0x1

    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v0, :cond_10

    .line 7
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v4, v1, :cond_d

    if-eq v4, v7, :cond_8

    if-ne v1, v2, :cond_8

    .line 8
    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-nez v6, :cond_8

    instance-of v6, v5, Lwd/g;

    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    if-eq v4, v7, :cond_9

    if-ne v7, v2, :cond_f

    .line 9
    instance-of v6, v5, Lwd/f;

    if-eqz v6, :cond_f

    .line 10
    :cond_9
    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a1:Z

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v6, 0x1

    :goto_7
    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    .line 11
    instance-of v6, v5, Lwd/f;

    if-eqz v6, :cond_c

    check-cast v5, Lwd/f;

    goto :goto_8

    :cond_c
    new-instance v6, Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_8
    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    goto :goto_b

    .line 12
    :cond_d
    :goto_9
    instance-of v6, v5, Lwd/g;

    if-eqz v6, :cond_e

    check-cast v5, Lwd/g;

    goto :goto_a

    :cond_e
    new-instance v6, Lcom/scwang/smartrefresh/layout/impl/RefreshHeaderWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smartrefresh/layout/impl/RefreshHeaderWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_a
    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_10
    return-void

    .line 13
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p3, :cond_e

    .line 5
    invoke-super {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_d

    sget v1, Lcom/scwang/smartrefresh/layout/R$string;->srl_component_falsify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto/16 :goto_8

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lwd/e;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 9
    :goto_1
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    invoke-interface {v3}, Lwd/e;->getView()Landroid/view/View;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    .line 11
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    .line 12
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p2

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-eqz v1, :cond_2

    .line 15
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    iget-object v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-virtual {p0, v1, v8}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E(ZLwd/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    add-int/2addr v4, v1

    add-int/2addr v7, v1

    .line 17
    :cond_2
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_6

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 20
    :goto_2
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v3}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    .line 22
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 23
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M4:I

    add-int/2addr v4, v6

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-nez v1, :cond_5

    .line 26
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v1}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v8, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v8, :cond_5

    .line 27
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    sub-int/2addr v4, v1

    sub-int/2addr v7, v1

    .line 28
    :cond_5
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 29
    :cond_6
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_d

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 31
    :goto_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v0}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    .line 33
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v3}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    .line 34
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 35
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->N4:I

    sub-int/2addr v5, v6

    .line 36
    sget-object v7, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v7, :cond_8

    .line 37
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v5, v1, v6

    goto :goto_7

    :cond_8
    if-nez v2, :cond_b

    .line 38
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq v3, v1, :cond_b

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v1, :cond_9

    goto :goto_5

    .line 39
    :cond_9
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v1, :cond_c

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    if-gez v1, :cond_c

    .line 40
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    neg-int v1, v1

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_6

    .line 41
    :cond_b
    :goto_5
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    :goto_6
    sub-int/2addr v5, v1

    .line 42
    :cond_c
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v5

    .line 44
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_d
    :goto_8
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_1d

    .line 3
    invoke-super {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1b

    sget v10, Lcom/scwang/smartrefresh/layout/R$string;->srl_component_falsify:I

    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_1

    goto/16 :goto_e

    .line 5
    :cond_1
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    const/4 v13, -0x2

    if-eqz v10, :cond_b

    invoke-interface {v10}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v10

    if-ne v10, v9, :cond_b

    .line 6
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v10}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v10

    .line 7
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    .line 8
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v12

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v4, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 9
    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    .line 10
    iget-object v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    sget-object v16, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-ge v14, v11, :cond_5

    .line 11
    iget v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-lez v11, :cond_2

    .line 12
    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    iget v12, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v11

    .line 13
    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v14, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v11, v14}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 14
    iget v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v5

    iput v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    .line 15
    iput-object v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_2

    :cond_2
    if-ne v11, v13, :cond_5

    .line 16
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v5}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v11, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v5, v11, :cond_3

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v5, v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_5

    .line 17
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v11

    iget v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v11

    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, -0x80000000

    .line 18
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v10, v4, v14}, Landroid/view/View;->measure(II)V

    .line 19
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-lez v11, :cond_5

    if-eq v11, v5, :cond_4

    .line 20
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v12, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v5, v12}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 21
    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v5

    iput v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    .line 22
    iput-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :cond_4
    const/4 v12, -0x1

    .line 23
    :cond_5
    :goto_2
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v5}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v11, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v5, v11, :cond_6

    .line 24
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    const/4 v5, -0x1

    const/4 v11, 0x0

    goto :goto_5

    .line 25
    :cond_6
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-interface {v5}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v11, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v5, v11, :cond_8

    if-nez v3, :cond_8

    .line 26
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    const/4 v5, -0x1

    :goto_5
    if-eq v12, v5, :cond_9

    .line 27
    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v5

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v10, v4, v5}, Landroid/view/View;->measure(II)V

    .line 28
    :cond_9
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v5, v4, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_a

    .line 29
    invoke-virtual {v4}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v4

    iput-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 30
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    int-to-float v14, v11

    mul-float v12, v12, v14

    float-to-int v12, v12

    invoke-interface {v4, v5, v11, v12}, Lwd/h;->g(Lwd/i;II)V

    :cond_a
    if-eqz v3, :cond_b

    .line 31
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {v0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 32
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    .line 33
    :cond_b
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v4, :cond_15

    invoke-interface {v4}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v9, :cond_15

    .line 34
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v4}, Lwd/h;->getView()Landroid/view/View;

    move-result-object v4

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    .line 36
    iget v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v10, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 37
    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    .line 38
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    sget-object v14, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-ge v12, v14, :cond_f

    .line 39
    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-lez v12, :cond_c

    .line 40
    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v11

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    .line 41
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v12, v13}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 42
    iget v12, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v14

    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v14

    iput v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    .line 43
    iput-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_6

    :cond_c
    if-ne v12, v13, :cond_f

    .line 44
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v12}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v12

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v12, v13, :cond_d

    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v12, v12, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v12, :cond_f

    .line 45
    :cond_d
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/high16 v13, -0x80000000

    .line 46
    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v4, v10, v13}, Landroid/view/View;->measure(II)V

    .line 47
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-lez v13, :cond_f

    if-eq v13, v12, :cond_e

    .line 48
    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v12, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v11, v12}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 49
    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v11

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v11

    iput v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    .line 50
    iput-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :cond_e
    const/4 v11, -0x1

    .line 51
    :cond_f
    :goto_6
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v12}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v12

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v12, v13, :cond_11

    .line 52
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    :cond_10
    const/4 v12, 0x0

    goto :goto_8

    .line 53
    :cond_11
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-interface {v12}, Lwd/h;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v12

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v12, v13, :cond_10

    if-nez v3, :cond_10

    .line 54
    iget-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v11}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v11

    if-eqz v11, :cond_12

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    neg-int v11, v11

    goto :goto_7

    :cond_12
    const/4 v11, 0x0

    :goto_7
    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    :goto_8
    const/4 v13, -0x1

    if-eq v11, v13, :cond_13

    .line 55
    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v11, v13

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v10, v5}, Landroid/view/View;->measure(II)V

    .line 56
    :cond_13
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v10, v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v10, :cond_14

    .line 57
    invoke-virtual {v5}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v5

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L4:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 58
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P4:F

    int-to-float v14, v11

    mul-float v13, v13, v14

    float-to-int v13, v13

    invoke-interface {v5, v10, v11, v13}, Lwd/h;->g(Lwd/i;II)V

    :cond_14
    if-eqz v3, :cond_16

    .line 59
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 60
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    goto :goto_9

    :cond_15
    const/4 v12, 0x0

    .line 61
    :cond_16
    :goto_9
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    if-eqz v4, :cond_1c

    invoke-interface {v4}, Lwd/e;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v9, :cond_1c

    .line 62
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->U4:Lwd/e;

    invoke-interface {v4}, Lwd/e;->getView()Landroid/view/View;

    move-result-object v4

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    .line 64
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v9, :cond_17

    iget-boolean v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {v0, v9}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-boolean v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E:Z

    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    invoke-virtual {v0, v9, v10}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E(ZLwd/h;)Z

    move-result v9

    if-eqz v9, :cond_17

    const/4 v11, 0x1

    goto :goto_a

    :cond_17
    const/4 v11, 0x0

    .line 65
    :goto_a
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v9, :cond_18

    iget-boolean v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    invoke-virtual {v0, v9}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v9

    if-eqz v9, :cond_18

    iget-boolean v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F:Z

    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    invoke-virtual {v0, v9, v10}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E(ZLwd/h;)Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v9, 0x1

    goto :goto_b

    :cond_18
    const/4 v9, 0x0

    .line 66
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    add-int/2addr v10, v13

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v13

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v13

    iget v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 67
    invoke-static {v1, v10, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    if-eqz v3, :cond_19

    if-eqz v11, :cond_19

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    goto :goto_c

    :cond_19
    const/4 v11, 0x0

    :goto_c
    add-int/2addr v13, v11

    if-eqz v3, :cond_1a

    if-eqz v9, :cond_1a

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    goto :goto_d

    :cond_1a
    const/4 v11, 0x0

    :goto_d
    add-int/2addr v13, v11

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 69
    invoke-static {v2, v13, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 70
    invoke-virtual {v4, v10, v5}, Landroid/view/View;->measure(II)V

    .line 71
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    goto :goto_f

    :cond_1b
    :goto_e
    const/4 v12, 0x0

    :cond_1c
    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 72
    :cond_1d
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    .line 73
    invoke-static {v8, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    .line 74
    invoke-super {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j:F

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G4:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g5:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_2

    :cond_0
    neg-float p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z(Ljava/lang/Float;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G4:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    mul-int v0, p3, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 3
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    .line 4
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    move v1, p1

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    move v1, p3

    .line 6
    :goto_0
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F(F)V

    goto :goto_1

    :cond_1
    if-lez p3, :cond_2

    .line 7
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g5:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, p3

    .line 8
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    int-to-float p1, p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F(F)V

    move v1, p3

    .line 10
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G4:Landroidx/core/view/NestedScrollingChildHelper;

    sub-int/2addr p3, v1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    const/4 p1, 0x1

    .line 11
    aget p2, p4, p1

    add-int/2addr p2, v1

    aput p2, p4, p1

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G4:Landroidx/core/view/NestedScrollingChildHelper;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F4:[I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F4:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p5, p1

    if-eqz p5, :cond_5

    if-gez p5, :cond_0

    .line 3
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez p1, :cond_1

    :cond_0
    if-lez p5, :cond_5

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-eqz p1, :cond_5

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a5:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, p2, :cond_2

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz p1, :cond_4

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    if-lez p5, :cond_3

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :goto_0
    invoke-interface {p1, p2}, Lwd/i;->b(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lwd/i;

    .line 6
    :cond_4
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    sub-int/2addr p1, p5

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->F(F)V

    .line 7
    :cond_5
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g5:Z

    if-eqz p1, :cond_6

    if-gez p3, :cond_6

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g5:Z

    :cond_6
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H4:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G4:Landroidx/core/view/NestedScrollingChildHelper;

    and-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 3
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b:I

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E4:Z

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->C(I)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->J:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_1
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H4:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->E4:Z

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D4:I

    .line 4
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->H()V

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G4:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public p(IIFZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->A:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->D(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$i;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FIZ)V

    if-lez p1, :cond_0

    int-to-long p1, p1

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W4:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Y4:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Y4:Ljava/util/List;

    .line 3
    new-instance v3, Lae/a;

    invoke-direct {v3, p1, v1, v2}, Lae/a;-><init>(Ljava/lang/Runnable;J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    new-instance v3, Lae/a;

    invoke-direct {v3, p1, v1, v2}, Lae/a;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 1
    new-instance p2, Lae/a;

    invoke-direct {p2, p1, v0, v1}, Lae/a;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {p2}, Lae/a;->run()V

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W4:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Y4:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Y4:Ljava/util/List;

    .line 4
    new-instance v1, Lae/a;

    invoke-direct {v1, p1, p2, p3}, Lae/a;-><init>(Ljava/lang/Runnable;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2
    new-instance v3, Lae/a;

    invoke-direct {v3, p1, v0, v1}, Lae/a;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v2, v3, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public q()Z
    .locals 6

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->W4:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->f:I

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    int-to-float v5, v4

    mul-float v3, v3, v5

    mul-float v3, v3, v2

    const/4 v2, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :cond_1
    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p(IIFZ)Z

    move-result v0

    return v0
.end method

.method public r()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b5:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public s(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(IZZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G4:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method protected setStateDirectLoading(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b5:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->g5:Z

    .line 4
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->B3:Lzd/b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {v0, p0}, Lzd/b;->b(Lwd/j;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-nez v0, :cond_1

    const/16 v0, 0x7d0

    .line 8
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->s(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v0, :cond_2

    .line 10
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P4:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {v0, p0, v1, v2}, Lwd/h;->k(Lwd/j;II)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    instance-of v1, v1, Lwd/f;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 12
    invoke-interface {v0, p0}, Lzd/b;->b(Lwd/j;)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    check-cast v0, Lwd/f;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P4:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lzd/c;->f(Lwd/f;II)V

    :cond_4
    return-void
.end method

.method protected setStateLoading(Z)V
    .locals 6

    .line 1
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$b;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    .line 2
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    neg-int v1, v1

    invoke-interface {p1, v1}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    if-eqz v1, :cond_1

    .line 6
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P4:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lwd/h;->a(Lwd/j;II)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T4:Lwd/h;

    instance-of v3, v2, Lwd/f;

    if-eqz v3, :cond_2

    .line 8
    check-cast v2, Lwd/f;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K4:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->P4:F

    int-to-float v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lzd/c;->i(Lwd/f;II)V

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method

.method protected setStateRefreshing(Z)V
    .locals 6

    .line 1
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$c;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    .line 2
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->X4:Lwd/i;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    invoke-interface {p1, v1}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    if-eqz v1, :cond_1

    .line 6
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lwd/h;->a(Lwd/j;II)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->V3:Lzd/c;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S4:Lwd/h;

    instance-of v3, v2, Lwd/g;

    if-eqz v3, :cond_2

    .line 8
    check-cast v2, Lwd/g;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->I4:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O4:F

    int-to-float v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lzd/c;->q(Lwd/g;II)V

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method

.method protected setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->Z4:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isDragging:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a5:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->a5:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :cond_1
    return-void
.end method

.method public t(IZZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;

    invoke-direct {v0, p0, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$h;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;ZZ)V

    if-gtz p1, :cond_0

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_0
    int-to-long p1, p1

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method public u(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b5:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    .line 2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(IZZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public v()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b5:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->t(IZZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b5:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->x(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public x(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y(IZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public y(IZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;

    invoke-direct {v0, p0, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    if-gtz p1, :cond_0

    const-wide/16 p1, 0x1

    goto :goto_0

    :cond_0
    int-to-long p1, p1

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method

.method protected z()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;
    .locals 2

    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;-><init>(II)V

    return-object v0
.end method
