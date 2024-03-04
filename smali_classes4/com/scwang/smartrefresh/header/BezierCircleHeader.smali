.class public Lcom/scwang/smartrefresh/header/BezierCircleHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lwd/g;


# instance fields
.field protected d:Landroid/graphics/Path;

.field protected e:Landroid/graphics/Paint;

.field protected f:Landroid/graphics/Paint;

.field protected g:Landroid/graphics/Paint;

.field protected h:F

.field protected i:F

.field protected j:F

.field protected k:F

.field protected l:F

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:F

.field protected q:I

.field protected r:I

.field protected s:Z

.field protected t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x5a

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->q:I

    .line 5
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->r:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->s:Z

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->t:Z

    .line 8
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/high16 p2, 0x42c80000    # 100.0f

    .line 9
    invoke-static {p2}, Lae/b;->b(F)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 10
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->e:Landroid/graphics/Paint;

    const p3, -0xee4401

    .line 11
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->e:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->f:Landroid/graphics/Paint;

    const/4 p3, -0x1

    .line 14
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->g:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->g:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->g:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lae/b;->b(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    return-void
.end method

.method private r(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->m:Z

    if-eqz v0, :cond_0

    .line 2
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->h:F

    add-float/2addr v1, v0

    div-float/2addr v1, v0

    invoke-direct {p0, p1, p2, v1}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->s(Landroid/graphics/Canvas;IF)V

    :cond_0
    return-void
.end method

.method private s(Landroid/graphics/Canvas;IF)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->n:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->h:F

    add-float/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    mul-float v3, v2, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 4
    div-int/lit8 v3, p2, 0x2

    int-to-float v3, v3

    mul-float v2, v2, v2

    mul-float v4, p3, p3

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    mul-float v2, v2, v4

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    add-float/2addr v2, v3

    .line 5
    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v7, v7, v4

    div-float/2addr v7, v5

    sub-float/2addr v6, p3

    mul-float v7, v7, v6

    add-float/2addr v3, v7

    add-float/2addr v4, v3

    .line 6
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 7
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 8
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    invoke-virtual {p3, v3, v0, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 9
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    int-to-float p2, p2

    sub-float v4, p2, v4

    invoke-virtual {p3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    sub-float v3, p2, v3

    sub-float/2addr p2, v2

    invoke-virtual {p3, v3, v0, p2, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 11
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private t(Landroid/graphics/Canvas;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 1
    iget v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->k:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 2
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    .line 3
    iget v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->k:F

    float-to-double v1, v1

    const-wide v10, 0x3fd3333333333333L    # 0.3

    const v12, 0x3e99999a    # 0.3f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    cmpg-double v3, v1, v10

    if-gez v3, :cond_0

    .line 4
    div-int/lit8 v1, v8, 0x2

    int-to-float v2, v1

    iget v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    iget v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    iget-object v5, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    iget v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    iget-object v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->g:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float v3, v3, v14

    iget v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->k:F

    div-float v5, v4, v12

    add-float/2addr v5, v13

    mul-float v3, v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v4, v12

    sub-float v4, v13, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    .line 6
    invoke-static {v9, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 7
    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->g:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    new-instance v3, Landroid/graphics/RectF;

    sub-int v4, v1, v2

    int-to-float v4, v4

    iget v5, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    int-to-float v6, v2

    sub-float v15, v5, v6

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v5, v6

    invoke-direct {v3, v4, v15, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    iget-object v15, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->g:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->k:F

    float-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v6, v2, v10

    if-ltz v6, :cond_2

    float-to-double v2, v1

    cmpg-double v6, v2, v4

    if-gez v6, :cond_2

    sub-float/2addr v1, v12

    const v2, 0x3ecccccd    # 0.4f

    div-float/2addr v1, v2

    .line 11
    iget v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    div-float v3, v2, v14

    div-float v6, v2, v14

    sub-float/2addr v2, v6

    mul-float v2, v2, v1

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    .line 12
    div-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    iget v6, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    iget-object v9, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v2, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 13
    iget v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    iget v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    iget v6, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    mul-float v6, v6, v14

    sub-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->n:Z

    .line 15
    invoke-direct {v0, v7, v8, v1}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->s(Landroid/graphics/Canvas;IF)V

    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->n:Z

    .line 17
    :cond_2
    iget v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->k:F

    float-to-double v2, v1

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_3

    cmpg-float v2, v1, v13

    if-gtz v2, :cond_3

    const v2, 0x3f333333    # 0.7f

    sub-float/2addr v1, v2

    div-float/2addr v1, v12

    .line 18
    div-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    sub-float v4, v2, v3

    mul-float v3, v3, v14

    mul-float v3, v3, v1

    sub-float/2addr v4, v3

    float-to-int v3, v4

    .line 19
    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 20
    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    int-to-float v5, v3

    iget v6, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 21
    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    iget v5, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    iget v6, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    sub-float/2addr v13, v1

    mul-float v6, v6, v13

    sub-float v1, v5, v6

    sub-int v3, v8, v3

    int-to-float v3, v3

    invoke-virtual {v4, v2, v1, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 22
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private u(Landroid/graphics/Canvas;I)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->o:Z

    if-eqz v0, :cond_5

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->r:I

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->s:Z

    const/4 v3, 0x3

    const/16 v4, 0xa

    if-eqz v2, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :cond_0
    const/16 v5, 0xa

    :goto_0
    add-int/2addr v1, v5

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->r:I

    .line 4
    iget v5, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->q:I

    if-eqz v2, :cond_1

    const/16 v3, 0xa

    :cond_1
    add-int/2addr v5, v3

    iput v5, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->q:I

    .line 5
    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->r:I

    .line 6
    rem-int/lit16 v5, v5, 0x168

    iput v5, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->q:I

    sub-int/2addr v5, v1

    if-gez v5, :cond_2

    add-int/lit16 v5, v5, 0x168

    .line 7
    :cond_2
    new-instance v7, Landroid/graphics/RectF;

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float v1, p2, v0

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    sub-float v3, v2, v0

    add-float/2addr p2, v0

    add-float/2addr v2, v0

    invoke-direct {v7, v1, v3, p2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->r:I

    int-to-float v8, p2

    int-to-float v9, v5

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->g:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/16 p1, 0x10e

    if-lt v5, p1, :cond_3

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->s:Z

    goto :goto_1

    :cond_3
    if-gt v5, v4, :cond_4

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->s:Z

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method private v(Landroid/graphics/Canvas;I)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->j:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 2
    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    iget v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    mul-float v2, v2, v3

    sub-float v2, v1, v2

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v0

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    float-to-double v4, v0

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    iget v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    iget v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    iget v5, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->j:F

    mul-float v4, v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    sub-float v4, v3, v4

    int-to-float p2, p2

    sub-float/2addr p2, v2

    invoke-virtual {v0, v1, v4, p2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 6
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 7
    :cond_0
    iget p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private w(Landroid/graphics/Canvas;II)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    int-to-float p3, p3

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2
    iget p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->h:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    int-to-float v1, p2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    invoke-virtual {p3, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->h:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v1, v5

    invoke-virtual {p3, p2, v1, v0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 7
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 8
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->d:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p2

    .line 9
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->e:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lwd/j;II)V
    .locals 3
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->t:Z

    int-to-float p3, p2

    .line 2
    iput p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    const/4 p3, 0x6

    .line 3
    div-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    .line 4
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 5
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->h:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-array p3, p3, [F

    .line 6
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->h:F

    aput v1, p3, p1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput v1, p3, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    neg-float p1, p1

    const/4 v2, 0x2

    aput p1, p3, v2

    const/4 p1, 0x3

    aput v1, p3, p1

    const p1, 0x3ecccccd    # 0.4f

    mul-float p1, p1, v0

    neg-float p1, p1

    const/4 v2, 0x4

    aput p1, p3, v2

    const/4 p1, 0x5

    aput v1, p3, p1

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 7
    new-instance p3, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;

    invoke-direct {p3, p0, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader$a;-><init>(Lcom/scwang/smartrefresh/header/BezierCircleHeader;F)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x3e8

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public c(Lwd/j;Z)I
    .locals 2
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->m:Z

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->o:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/scwang/smartrefresh/header/BezierCircleHeader$b;

    invoke-direct {p2, p0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader$b;-><init>(Lcom/scwang/smartrefresh/header/BezierCircleHeader;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x320

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/16 p1, 0x320

    return p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->m:Z

    .line 5
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->o:Z

    int-to-float v2, v1

    .line 6
    iput v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    const/16 v3, 0x10e

    .line 7
    iput v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->q:I

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    .line 8
    iput v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->l:F

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    .line 9
    iput v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->p:F

    .line 10
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->w(Landroid/graphics/Canvas;II)V

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->v(Landroid/graphics/Canvas;I)V

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->r(Landroid/graphics/Canvas;I)V

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->u(Landroid/graphics/Canvas;I)V

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->t(Landroid/graphics/Canvas;I)V

    .line 15
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public o(ZFIII)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->t:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->t:Z

    int-to-float p1, p4

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->i:F

    sub-int/2addr p3, p4

    const/4 p1, 0x0

    .line 4
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->h:F

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

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->e:Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->f:Landroid/graphics/Paint;

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->g:Landroid/graphics/Paint;

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
