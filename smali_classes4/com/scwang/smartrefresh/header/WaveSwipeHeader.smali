.class public Lcom/scwang/smartrefresh/header/WaveSwipeHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lwd/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;,
        Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;
    }
.end annotation


# instance fields
.field protected d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

.field protected e:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected f:Lrd/a;

.field protected g:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

.field protected h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object p3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 5
    new-instance p3, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-direct {p3, p1}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    new-instance p3, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    invoke-direct {p3, p0, p1}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;-><init>(Lcom/scwang/smartrefresh/header/WaveSwipeHeader;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->g:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    sget-object p3, Lcom/scwang/smartrefresh/header/R$styleable;->WaveSwipeHeader:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->WaveSwipeHeader_wshPrimaryColor:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 9
    sget v0, Lcom/scwang/smartrefresh/header/R$styleable;->WaveSwipeHeader_wshAccentColor:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-eqz p2, :cond_0

    .line 10
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {v1, p2}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->setWaveColor(I)V

    :cond_0
    const/4 p2, 0x1

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    new-array p2, p2, [I

    aput v0, p2, p3

    invoke-virtual {v1, p2}, Lrd/a;->f([I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    new-array p2, p2, [I

    const/4 v1, -0x1

    aput v1, p2, p3

    invoke-virtual {v0, p2}, Lrd/a;->f([I)V

    .line 13
    :goto_0
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->WaveSwipeHeader_wshShadowRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 15
    sget p3, Lcom/scwang/smartrefresh/header/R$styleable;->WaveSwipeHeader_wshShadowColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 16
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {v0, p2, p3}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->h(II)V

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static r()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lwd/j;II)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->h:F

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->a()V

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lrd/a;->setAlpha(I)V

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    invoke-virtual {p1}, Lrd/a;->start()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x1f4

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance p2, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$a;

    invoke-direct {p2, p0}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$a;-><init>(Lcom/scwang/smartrefresh/header/WaveSwipeHeader;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public c(Lwd/j;Z)I
    .locals 2
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->g:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    .line 2
    new-instance p2, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$b;

    invoke-direct {p2, p0, p1}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$b;-><init>(Lcom/scwang/smartrefresh/header/WaveSwipeHeader;Landroid/view/View;)V

    const-wide/16 v0, 0xc8

    .line 3
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->g:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    new-instance v1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$c;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$c;-><init>(Lcom/scwang/smartrefresh/header/WaveSwipeHeader;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x0

    return p1
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
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->g:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    .line 2
    iput-object p3, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->e:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 3
    sget-object p2, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$d;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lrd/a;->l(Z)V

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lrd/a;->g(F)V

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    invoke-virtual {p1, p2, p2}, Lrd/a;->j(FF)V

    .line 7
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    iget p3, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->h:F

    invoke-virtual {p1, p3}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->k(F)V

    .line 8
    iput p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->h:F

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lrd/a;->l(Z)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 12
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lrd/a;->setAlpha(I)V

    :goto_0
    return-void
.end method

.method public o(ZFIII)V
    .locals 6

    const/4 p4, 0x0

    if-eqz p1, :cond_6

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->e:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object p5, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, p5, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->g:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    const/high16 p5, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p5, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    cmpl-float v2, p2, p5

    if-lez v2, :cond_2

    sub-float v2, p2, p5

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/high16 v4, 0x40800000    # 4.0f

    sub-float/2addr v4, v2

    mul-float v4, v4, v2

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v4, v2

    cmpg-float p2, p2, p5

    if-gez p2, :cond_3

    const p2, 0x3f4ccccd    # 0.8f

    mul-float v2, v0, p2

    .line 5
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {v5, p4, p2}, Lrd/a;->j(FF)V

    .line 6
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    invoke-static {p5, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-virtual {p2, p4}, Lrd/a;->d(F)V

    :cond_3
    const/high16 p2, -0x41800000    # -0.25f

    const p4, 0x3ecccccd    # 0.4f

    mul-float v0, v0, p4

    add-float/2addr v0, p2

    mul-float v4, v4, v3

    add-float/2addr v0, v4

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float v0, v0, p2

    .line 7
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    invoke-virtual {p2, v0}, Lrd/a;->g(F)V

    .line 8
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p2}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->getCurrentCircleCenterY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    int-to-float p1, p3

    mul-float p1, p1, p5

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    mul-float v3, v3, p1

    sub-float p2, v1, v3

    mul-float p1, p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    .line 10
    sget-object p2, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;->FIRST:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;

    iget p2, p2, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;->val:F

    sub-float p3, p1, p2

    .line 11
    sget-object p4, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;->SECOND:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;

    iget p4, p4, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;->val:F

    sub-float p5, p1, p4

    div-float/2addr p5, v1

    .line 12
    iput p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->h:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_4

    .line 13
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p2, p1}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->c(F)V

    goto :goto_1

    :cond_4
    cmpg-float p2, p1, p4

    if-gez p2, :cond_5

    .line 14
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p2, p1, p3}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->b(FF)V

    goto :goto_1

    .line 15
    :cond_5
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p2, p1, p3, p5}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->d(FFF)V

    goto :goto_1

    .line 16
    :cond_6
    iget p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->h:F

    cmpl-float p1, p1, p4

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->e:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, p2, :cond_7

    .line 17
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lrd/a;->l(Z)V

    .line 18
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    invoke-virtual {p1, p4}, Lrd/a;->g(F)V

    .line 19
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    invoke-virtual {p1, p4, p4}, Lrd/a;->j(FF)V

    .line 20
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    iget p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->h:F

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->k(F)V

    .line 21
    iput p4, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->h:F

    :cond_7
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    .line 2
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->g:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p1, p5, p5, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int v0, p1, p3

    .line 7
    div-int/lit8 v0, v0, 0x2

    neg-int p4, p4

    add-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, v0, p4, p1, p5}, Landroid/view/View;->layout(IIII)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    const v2, 0x3f7d70a4    # 0.99f

    const/high16 p1, 0x42c60000    # 99.0f

    .line 9
    invoke-static {p1}, Lae/b;->b(F)I

    move-result v3

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {p1}, Lae/b;->b(F)I

    move-result v4

    invoke-static {p1}, Lae/b;->b(F)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->o(ZFIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->g:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    .line 4
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    .line 5
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 6
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 7
    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public varargs setColorSchemeColorIds([I)V
    .locals 5
    .param p1    # [I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 5
    aget v3, p1, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    aput v3, v1, v2

    goto :goto_1

    .line 6
    :cond_0
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    invoke-virtual {p1, v1}, Lrd/a;->f([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    invoke-virtual {v0, p1}, Lrd/a;->f([I)V

    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->d:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->setWaveColor(I)V

    .line 3
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->f:Lrd/a;

    new-array v3, v2, [I

    aget p1, p1, v2

    aput p1, v3, v1

    invoke-virtual {v0, v3}, Lrd/a;->f([I)V

    :cond_0
    return-void
.end method
