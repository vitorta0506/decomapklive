.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lkc/b;


# instance fields
.field a:Landroid/view/View;

.field b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

.field c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

.field d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

.field e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

.field private f:Landroid/animation/ValueAnimator;

.field private g:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private d(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/guochao/twink/R$layout;->view_bezier:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->a:Landroid/view/View;

    .line 2
    sget v0, Lcom/guochao/twink/R$id;->draweeView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 3
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->a:Landroid/view/View;

    sget v0, Lcom/guochao/twink/R$id;->ripple:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 4
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->a:Landroid/view/View;

    sget v0, Lcom/guochao/twink/R$id;->round1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 5
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->a:Landroid/view/View;

    sget v0, Lcom/guochao/twink/R$id;->round2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    const/16 v0, 0x8

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setHeadHeight(I)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 2
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->getWaveHeight()I

    move-result p2

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput v0, p1, p2

    const/16 p2, -0x12c

    const/4 v1, 0x2

    aput p2, p1, v1

    const/4 p2, 0x3

    aput v0, p1, p2

    const/4 p2, 0x4

    const/16 v2, -0x64

    aput v2, p1, p2

    const/4 p2, 0x5

    aput v0, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    .line 3
    new-instance p2, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$a;

    invoke-direct {p2, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-array p1, v1, [F

    .line 7
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    .line 8
    new-instance p2, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;

    invoke-direct {p2, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$b;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$c;

    invoke-direct {p2, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$c;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public b(FFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e(FF)F

    move-result v2

    mul-float p3, p3, v2

    float-to-int p3, p3

    invoke-virtual {v0, p3}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setHeadHeight(I)V

    .line 2
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    sub-float v0, p1, v1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p3, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveHeight(I)V

    .line 3
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 4
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    invoke-virtual {p0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e(FF)F

    move-result p1

    const/high16 p3, 0x41f00000    # 30.0f

    mul-float p1, p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->setCir_x(I)V

    .line 5
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c(FFF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e(FF)F

    move-result v3

    mul-float p3, p3, v3

    float-to-int p3, p3

    invoke-virtual {v0, p3}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setHeadHeight(I)V

    .line 3
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    const/4 v0, 0x0

    sub-float v3, p1, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p3, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveHeight(I)V

    .line 4
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 5
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    const/high16 p3, 0x41f00000    # 30.0f

    invoke-virtual {p0, v2, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e(FF)F

    move-result p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->setCir_x(I)V

    .line 6
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 10
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public e(FF)F
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    cmpg-float p2, v0, p1

    if-gez p2, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public onFinish(Lkc/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->d()V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 3
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$d;

    invoke-direct {v1, p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$d;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;Lkc/c;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->setRippleEndListener(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;)V

    .line 5
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->f:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveHeight(I)V

    .line 3
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->d:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->d()V

    .line 6
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 7
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 8
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->e:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->e()V

    .line 10
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->setRippleColor(I)V

    return-void
.end method

.method public setWaveColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->b:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveColor(I)V

    return-void
.end method
