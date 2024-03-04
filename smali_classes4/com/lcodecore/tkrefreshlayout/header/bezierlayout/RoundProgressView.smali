.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field i:Landroid/animation/ValueAnimator;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 4
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    const/4 p1, 0x7

    .line 5
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->d:I

    const/16 p1, 0x10e

    .line 6
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->e:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->f:I

    const/16 p1, 0xf

    .line 8
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->g:I

    .line 9
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;I)I
    .locals 0

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->f:I

    return p1
.end method

.method private b()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    const/16 v2, 0x72

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2d0

    .line 8
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView$a;

    invoke-direct {v2, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 11
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x168
    .end array-data
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->i:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->d:I

    div-int/2addr v0, v1

    .line 3
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    const/high16 v4, 0x41700000    # 15.0f

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 10
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->j:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->j:Landroid/graphics/RectF;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    add-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    add-float/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    iget-object v7, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->j:Landroid/graphics/RectF;

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->e:I

    int-to-float v8, v0

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->f:I

    int-to-float v9, v0

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->k:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->k:Landroid/graphics/RectF;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->k:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->g:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->g:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->g:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->c:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->g:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    iget-object v6, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->k:Landroid/graphics/RectF;

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->e:I

    int-to-float v7, v0

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->f:I

    int-to-float v8, v0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->b:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setCir_x(I)V
    .locals 0

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->h:I

    return-void
.end method
