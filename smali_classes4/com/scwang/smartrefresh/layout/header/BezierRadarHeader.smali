.class public Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lwd/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$b;
    }
.end annotation


# instance fields
.field protected d:I

.field protected e:I

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Landroid/graphics/Path;

.field protected k:Landroid/graphics/Paint;

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:F

.field protected p:F

.field protected q:F

.field protected r:F

.field protected s:I

.field protected t:F

.field protected u:F

.field protected v:F

.field protected w:Landroid/animation/Animator;

.field protected x:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->i:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->n:I

    .line 6
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->s:I

    const/4 p3, 0x0

    .line 7
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->t:F

    .line 8
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->u:F

    .line 9
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->v:F

    .line 10
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p3, p3, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->x:Landroid/graphics/RectF;

    .line 11
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 12
    new-instance v1, Lae/b;

    invoke-direct {v1}, Lae/b;-><init>()V

    .line 13
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->j:Landroid/graphics/Path;

    .line 14
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    const/4 v3, 0x1

    .line 15
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x40e00000    # 7.0f

    .line 16
    invoke-virtual {v1, v2}, Lae/b;->a(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->q:F

    const/high16 v3, 0x41a00000    # 20.0f

    .line 17
    invoke-virtual {v1, v3}, Lae/b;->a(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->t:F

    .line 18
    invoke-virtual {v1, v2}, Lae/b;->a(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->u:F

    .line 19
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v1, v3}, Lae/b;->a(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x42c80000    # 100.0f

    .line 20
    invoke-virtual {v1, v2}, Lae/b;->a(F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p3, 0x3e8

    .line 22
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->l:I

    const/high16 p3, 0x3f800000    # 1.0f

    .line 23
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->v:F

    const/16 p3, 0x10e

    .line 24
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->s:I

    goto :goto_0

    .line 25
    :cond_0
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->v:F

    .line 26
    :goto_0
    sget-object p3, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 27
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlEnableHorizontalDrag:I

    iget-boolean p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->i:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->i:Z

    .line 28
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlAccentColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->v(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 29
    sget p3, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlPrimaryColor:I

    const v0, -0xddddde

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->w(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 30
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->g:Z

    .line 31
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->f:Z

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Lwd/j;II)V
    .locals 8
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->l:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->h:Z

    const/4 p2, 0x2

    new-array p3, p2, [I

    .line 3
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v0, 0x2d0

    .line 4
    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    .line 5
    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 6
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    new-instance v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$b;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    new-array v2, p2, [F

    .line 9
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    new-instance v3, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$b;

    invoke-direct {v3, p0, p2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$b;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, p2, [F

    .line 12
    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 13
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    new-instance v4, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$b;

    invoke-direct {v4, p0, p1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$b;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v6, v5, [Landroid/animation/Animator;

    aput-object v2, v6, p1

    const/4 v2, 0x1

    aput-object v3, v6, v2

    aput-object p3, v6, p2

    .line 16
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 17
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    const/4 p3, 0x6

    new-array p3, p3, [I

    .line 18
    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->m:I

    aput v3, p3, p1

    aput p1, p3, v2

    int-to-float v6, v3

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v6, v6, v7

    float-to-int v6, v6

    neg-int v6, v6

    aput v6, p3, p2

    aput p1, p3, v5

    int-to-float p2, v3

    const v3, 0x3ecccccd    # 0.4f

    mul-float p2, p2, v3

    float-to-int p2, p2

    neg-int p2, p2

    aput p2, p3, v1

    const/4 p2, 0x5

    aput p1, p3, p2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 19
    new-instance p2, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$b;

    invoke-direct {p2, p0, v2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$b;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x320

    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 23
    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->w:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x168
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public c(Lwd/j;Z)I
    .locals 2
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->w:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->w:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->w:Landroid/animation/Animator;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int p1, p1, p1

    mul-int p2, p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    .line 8
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    new-instance p2, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$b;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$b;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/16 p1, 0x190

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->u(Landroid/graphics/Canvas;I)V

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->r(Landroid/graphics/Canvas;II)V

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->s(Landroid/graphics/Canvas;II)V

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->t(Landroid/graphics/Canvas;II)V

    .line 7
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public e(Lwd/j;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->o:F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->v:F

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->r:F

    :goto_0
    return-void
.end method

.method public h(FII)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->n:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->i:Z

    return v0
.end method

.method public o(ZFIII)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->h:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->h:Z

    .line 3
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->l:I

    const p1, 0x3ff33333    # 1.9f

    const/4 p5, 0x0

    sub-int/2addr p3, p4

    .line 4
    invoke-static {p5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->m:I

    .line 5
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->p:F

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->w:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->w:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->w:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method protected r(Landroid/graphics/Canvas;II)V
    .locals 15

    move-object v0, p0

    .line 1
    iget v1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->o:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 2
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    iget v3, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->d:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-static/range {p3 .. p3}, Lae/b;->c(I)F

    move-result v1

    .line 4
    div-int/lit8 v3, p2, 0x7

    int-to-float v3, v3

    iget v4, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->p:F

    mul-float v5, v3, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v4, v6

    if-lez v7, :cond_0

    sub-float v7, v4, v6

    mul-float v7, v7, v3

    div-float/2addr v7, v4

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    sub-float/2addr v5, v7

    move/from16 v3, p3

    int-to-float v3, v3

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v8, v4, v6

    if-lez v8, :cond_1

    sub-float v2, v4, v6

    mul-float v2, v2, v3

    div-float/2addr v2, v7

    div-float/2addr v2, v4

    :cond_1
    sub-float/2addr v3, v2

    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x7

    if-ge v2, v4, :cond_2

    int-to-float v4, v2

    add-float/2addr v4, v6

    const/high16 v8, 0x40800000    # 4.0f

    sub-float/2addr v4, v8

    const/high16 v8, 0x437f0000    # 255.0f

    .line 5
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40e00000    # 7.0f

    div-float/2addr v9, v10

    mul-float v9, v9, v7

    sub-float v9, v6, v9

    mul-float v9, v9, v8

    .line 6
    iget-object v8, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    iget v10, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->o:F

    mul-float v10, v10, v9

    float-to-double v9, v10

    float-to-double v11, v1

    const-wide/high16 v13, 0x4089000000000000L    # 800.0

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double/2addr v11, v13

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double v6, v13, v6

    sub-double/2addr v13, v6

    mul-double v9, v9, v13

    double-to-int v6, v9

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    iget v6, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->q:F

    const/high16 v7, 0x41200000    # 10.0f

    div-float v7, v1, v7

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    div-float v7, v8, v7

    sub-float v7, v8, v7

    mul-float v6, v6, v7

    .line 8
    div-int/lit8 v7, p2, 0x2

    int-to-float v7, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v6, v9

    sub-float/2addr v7, v10

    mul-float v4, v4, v5

    add-float/2addr v7, v4

    div-float v4, v3, v9

    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    invoke-virtual {v11, v7, v4, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3
    return-void
.end method

.method protected s(Landroid/graphics/Canvas;II)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->w:Landroid/animation/Animator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->t:F

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->v:F

    mul-float v0, v0, v1

    .line 3
    iget v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->u:F

    mul-float v2, v2, v1

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->d:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float/2addr v2, v0

    .line 8
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 9
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->e:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    const/high16 v4, 0x55000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->x:Landroid/graphics/RectF;

    sub-float v3, p2, v0

    sub-float v4, p3, v0

    add-float v5, p2, v0

    add-float/2addr v0, p3

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 12
    iget-object v7, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->x:Landroid/graphics/RectF;

    const/high16 v8, 0x43870000    # 270.0f

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->s:I

    int-to-float v9, v0

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 13
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->x:Landroid/graphics/RectF;

    sub-float v1, p2, v2

    sub-float v3, p3, v2

    add-float/2addr p2, v2

    add-float/2addr p3, v2

    invoke-virtual {v0, v1, v3, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->x:Landroid/graphics/RectF;

    const/high16 v6, 0x43870000    # 270.0f

    iget p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->s:I

    int-to-float v7, p2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 16
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->f:Z

    if-nez v0, :cond_0

    .line 2
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->w(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 3
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->f:Z

    .line 4
    :cond_0
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->g:Z

    if-nez v0, :cond_1

    .line 5
    aget p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->v(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 6
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->g:Z

    :cond_1
    return-void
.end method

.method protected t(Landroid/graphics/Canvas;II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->r:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->r:F

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected u(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->j:Landroid/graphics/Path;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->l:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->j:Landroid/graphics/Path;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->n:I

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit8 v1, p2, 0x2

    :goto_0
    int-to-float v1, v1

    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->l:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->m:I

    add-int/2addr v4, v3

    int-to-float v4, v4

    int-to-float p2, p2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v4, p2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->j:Landroid/graphics/Path;

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->e:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->j:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public v(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->d:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->g:Z

    return-object p0
.end method

.method public w(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->e:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->f:Z

    return-object p0
.end method
