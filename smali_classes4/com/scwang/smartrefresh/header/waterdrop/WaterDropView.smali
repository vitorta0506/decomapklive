.class public Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field protected static g:I = 0x2


# instance fields
.field protected a:Lud/a;

.field protected b:Lud/a;

.field protected c:Landroid/graphics/Path;

.field protected d:Landroid/graphics/Paint;

.field protected e:I

.field protected f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lud/a;

    invoke-direct {p1}, Lud/a;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    .line 3
    new-instance p1, Lud/a;

    invoke-direct {p1}, Lud/a;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    .line 4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->c:Landroid/graphics/Path;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->d:Landroid/graphics/Paint;

    const v0, -0x777778

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->d:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lae/b;->b(F)I

    move-result v2

    sput v2, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->g:I

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->d:Landroid/graphics/Paint;

    sget v2, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->g:I

    int-to-float v3, v2

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    int-to-float v2, v2

    const/high16 v5, -0x67000000

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 12
    sget p1, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->g:I

    mul-int/lit8 p1, p1, 0x4

    .line 13
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 15
    invoke-static {p1}, Lae/b;->b(F)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->e:I

    .line 16
    div-int/lit8 v0, p1, 0x5

    iput v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->f:I

    .line 17
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    int-to-float v1, p1

    iput v1, v0, Lud/a;->c:F

    .line 18
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    int-to-float v2, p1

    iput v2, v1, Lud/a;->c:F

    .line 19
    sget v2, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->g:I

    add-int v3, v2, p1

    int-to-float v3, v3

    iput v3, v0, Lud/a;->a:F

    add-int v3, v2, p1

    int-to-float v3, v3

    .line 20
    iput v3, v0, Lud/a;->b:F

    add-int v0, v2, p1

    int-to-float v0, v0

    .line 21
    iput v0, v1, Lud/a;->a:F

    add-int/2addr v2, p1

    int-to-float p1, v2

    .line 22
    iput p1, v1, Lud/a;->b:F

    return-void
.end method

.method private b()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    iget v2, v1, Lud/a;->a:F

    iget v3, v1, Lud/a;->b:F

    iget v1, v1, Lud/a;->c:F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    iget v0, v0, Lud/a;->b:F

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    iget v1, v1, Lud/a;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lae/b;->b(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    iget v2, v1, Lud/a;->a:F

    iget v3, v1, Lud/a;->b:F

    iget v1, v1, Lud/a;->c:F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 5
    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->getAngle()D

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    iget v3, v2, Lud/a;->a:F

    float-to-double v3, v3

    iget v2, v2, Lud/a;->c:F

    float-to-double v5, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    sub-double/2addr v3, v5

    double-to-float v2, v3

    .line 7
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    iget v4, v3, Lud/a;->b:F

    float-to-double v4, v4

    iget v3, v3, Lud/a;->c:F

    float-to-double v6, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 8
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    iget v5, v4, Lud/a;->a:F

    float-to-double v5, v5

    iget v4, v4, Lud/a;->c:F

    float-to-double v7, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 9
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    iget v6, v5, Lud/a;->a:F

    float-to-double v6, v6

    iget v5, v5, Lud/a;->c:F

    float-to-double v8, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    .line 10
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    iget v7, v6, Lud/a;->b:F

    float-to-double v7, v7

    iget v6, v6, Lud/a;->c:F

    float-to-double v9, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    double-to-float v6, v7

    .line 11
    iget-object v7, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    iget v8, v7, Lud/a;->a:F

    float-to-double v8, v8

    iget v7, v7, Lud/a;->c:F

    float-to-double v10, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v10, v10, v0

    add-double/2addr v8, v10

    double-to-float v0, v8

    .line 12
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->c:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    iget v8, v7, Lud/a;->a:F

    iget v7, v7, Lud/a;->b:F

    invoke-virtual {v1, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->c:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->c:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    iget v7, v2, Lud/a;->a:F

    iget v8, v2, Lud/a;->c:F

    sub-float/2addr v7, v8

    iget v2, v2, Lud/a;->b:F

    iget-object v8, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    iget v8, v8, Lud/a;->b:F

    add-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    invoke-virtual {v1, v7, v2, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 15
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->c:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    iget v2, v1, Lud/a;->a:F

    iget v5, v1, Lud/a;->c:F

    add-float/2addr v2, v5

    iget v1, v1, Lud/a;->b:F

    add-float/2addr v1, v3

    div-float/2addr v1, v8

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private getAngle()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    iget v1, v0, Lud/a;->c:F

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    iget v3, v2, Lud/a;->c:F

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sub-float/2addr v3, v1

    .line 2
    iget v0, v0, Lud/a;->b:F

    iget v1, v2, Lud/a;->b:F

    sub-float/2addr v0, v1

    div-float/2addr v3, v0

    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    new-instance v1, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView$a;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView$a;-><init>(Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3a83126f    # 0.001f
    .end array-data
.end method

.method public c(F)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->e:I

    int-to-double v1, v0

    float-to-double v3, p1

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    mul-double v3, v3, v5

    int-to-double v5, v0

    mul-double v3, v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    .line 2
    iget v2, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->f:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    mul-float v2, v2, p1

    int-to-float v3, v0

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float p1, p1, v3

    int-to-float v0, v0

    mul-float p1, p1, v0

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    iput v1, v0, Lud/a;->c:F

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    iput v2, v1, Lud/a;->c:F

    .line 5
    iget v0, v0, Lud/a;->b:F

    add-float/2addr v0, p1

    iput v0, v1, Lud/a;->b:F

    return-void
.end method

.method public d(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 3
    iget v2, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->e:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float v4, p1

    cmpg-float v5, v4, v3

    if-gez v5, :cond_0

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    int-to-float v0, v2

    iput v0, p1, Lud/a;->c:F

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    int-to-float v1, v2

    iput v1, v0, Lud/a;->c:F

    .line 6
    iget p1, p1, Lud/a;->b:F

    iput p1, v0, Lud/a;->b:F

    goto :goto_0

    .line 7
    :cond_0
    iget v5, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->f:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    const/4 v5, 0x0

    sub-float/2addr v4, v3

    .line 8
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    neg-float v2, v3

    const/high16 v3, 0x43480000    # 200.0f

    .line 9
    invoke-static {v3}, Lae/b;->b(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v6, v2

    mul-double v4, v4, v6

    double-to-float v2, v4

    .line 10
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    iget v4, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->e:I

    int-to-float v5, v4

    const/high16 v6, 0x40800000    # 4.0f

    div-float v6, v2, v6

    sub-float/2addr v5, v6

    iput v5, v3, Lud/a;->c:F

    .line 11
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iput v4, v3, Lud/a;->c:F

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    sub-float/2addr p1, v4

    .line 12
    iput p1, v3, Lud/a;->b:F

    :goto_0
    return-void
.end method

.method public e(II)V
    .locals 0

    return-void
.end method

.method public getBottomCircle()Lud/a;
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    return-object v0
.end method

.method public getIndicatorColor()I
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxCircleRadius()I
    .locals 1

    iget v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->e:I

    return v0
.end method

.method public getTopCircle()Lud/a;
    .locals 1

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v3

    .line 7
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    iget v4, v4, Lud/a;->c:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    int-to-float v0, v0

    add-float/2addr v6, v0

    int-to-float v2, v2

    add-float/2addr v6, v2

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_0

    int-to-float v0, v1

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    sub-float/2addr v3, v2

    .line 8
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->a:Lud/a;

    iget v1, v0, Lud/a;->a:F

    iget v2, v0, Lud/a;->b:F

    iget v0, v0, Lud/a;->c:F

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    int-to-float v1, v1

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b()V

    .line 12
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->d(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->e:I

    sget v0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->g:I

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    .line 2
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->b:Lud/a;

    iget v2, v1, Lud/a;->b:F

    iget v1, v1, Lud/a;->c:F

    add-float/2addr v2, v1

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr p1, v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
