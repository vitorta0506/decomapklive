.class public Lag/b;
.super Lag/d;
.source "SourceFile"


# static fields
.field private static final A:[I

.field private static final v:Landroid/view/animation/Interpolator;

.field private static final w:Landroid/view/animation/Interpolator;

.field private static final x:Landroid/view/animation/Interpolator;

.field private static final y:Landroid/view/animation/Interpolator;

.field private static final z:[F


# instance fields
.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/animation/Animator$AnimatorListener;

.field private k:[I

.field private l:[F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lag/b;->v:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Lag/a;

    invoke-direct {v0}, Lag/a;-><init>()V

    sput-object v0, Lag/b;->w:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lag/b;->x:Landroid/view/animation/Interpolator;

    .line 4
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lag/b;->y:Landroid/view/animation/Interpolator;

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_0

    sput-object v1, Lag/b;->z:[F

    new-array v0, v0, [I

    const-string v1, "#55ffffff"

    .line 6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#b1ffffff"

    .line 7
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "#ffffffff"

    .line 8
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lag/b;->A:[I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
        0x3f200000    # 0.625f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lag/d;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lag/b;->h:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lag/b;->i:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Lag/b$a;

    invoke-direct {v0, p0}, Lag/b$a;-><init>(Lag/b;)V

    iput-object v0, p0, Lag/b;->j:Landroid/animation/Animator$AnimatorListener;

    .line 5
    invoke-direct {p0, p1}, Lag/b;->t(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0}, Lag/b;->x()V

    .line 7
    invoke-virtual {p0, v0}, Lag/d;->b(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic o(Lag/b;)V
    .locals 0

    invoke-direct {p0}, Lag/b;->y()V

    return-void
.end method

.method static synthetic p(Lag/b;F)F
    .locals 0

    iput p1, p0, Lag/b;->q:F

    return p1
.end method

.method static synthetic q(Lag/b;)F
    .locals 0

    iget p0, p0, Lag/b;->p:F

    return p0
.end method

.method static synthetic r(Lag/b;)F
    .locals 0

    iget p0, p0, Lag/b;->n:F

    return p0
.end method

.method static synthetic s(Lag/b;F)F
    .locals 0

    iput p1, p0, Lag/b;->n:F

    return p1
.end method

.method private t(Landroid/content/Context;)V
    .locals 1

    const/high16 v0, 0x40200000    # 2.5f

    .line 1
    invoke-static {p1, v0}, Lag/e;->a(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lag/b;->t:F

    const/high16 v0, 0x41480000    # 12.5f

    .line 2
    invoke-static {p1, v0}, Lag/e;->a(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lag/b;->u:F

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lag/b;->l:[F

    .line 4
    sget-object p1, Lag/b;->A:[I

    iput-object p1, p0, Lag/b;->k:[I

    return-void
.end method

.method private u(FF)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 2
    iget v0, p0, Lag/b;->u:F

    sub-float/2addr p1, v0

    .line 3
    iget v0, p0, Lag/b;->t:F

    div-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p2, v0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move p1, p2

    .line 4
    :cond_0
    iput p1, p0, Lag/b;->m:F

    return-void
.end method

.method private v()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lag/b;->r:F

    .line 2
    iput v0, p0, Lag/b;->s:F

    .line 3
    iput v0, p0, Lag/b;->p:F

    .line 4
    iput v0, p0, Lag/b;->q:F

    .line 5
    iget-object v1, p0, Lag/b;->l:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    .line 6
    aput v0, v1, v2

    const/4 v2, 0x2

    .line 7
    aput v0, v1, v2

    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lag/b;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object v0, p0, Lag/b;->h:Landroid/graphics/Paint;

    iget v1, p0, Lag/b;->t:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-object v0, p0, Lag/b;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lag/b;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 5
    iget v0, p0, Lag/d;->f:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lag/d;->g:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lag/b;->u(FF)V

    return-void
.end method

.method private y()V
    .locals 1

    .line 1
    iget v0, p0, Lag/b;->p:F

    iput v0, p0, Lag/b;->r:F

    .line 2
    iput v0, p0, Lag/b;->s:F

    return-void
.end method


# virtual methods
.method protected c(F)V
    .locals 12

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/high16 v3, 0x43900000    # 288.0f

    const/4 v4, 0x2

    cmpg-float v5, p1, v1

    if-gtz v5, :cond_0

    div-float v5, p1, v1

    .line 1
    iget v6, p0, Lag/b;->s:F

    sget-object v7, Lag/b;->w:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v5, v5, v3

    add-float/2addr v6, v5

    iput v6, p0, Lag/b;->q:F

    .line 2
    iget v5, p0, Lag/b;->p:F

    sub-float/2addr v5, v6

    .line 3
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v3

    .line 4
    sget-object v7, Lag/b;->y:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    sget-object v8, Lag/b;->v:Landroid/view/animation/Interpolator;

    .line 5
    invoke-interface {v8, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    sub-float/2addr v7, v9

    .line 6
    sget-object v9, Lag/b;->x:Landroid/view/animation/Interpolator;

    invoke-interface {v9, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 7
    invoke-interface {v8, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    sub-float/2addr v9, v6

    .line 8
    iget-object v6, p0, Lag/b;->l:[F

    neg-float v5, v5

    sget-object v8, Lag/b;->z:[F

    aget v10, v8, v0

    mul-float v10, v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v7, v11

    mul-float v10, v10, v7

    aput v10, v6, v0

    .line 9
    aget v7, v8, v2

    mul-float v7, v7, v5

    mul-float v7, v7, v11

    aput v7, v6, v2

    .line 10
    aget v7, v8, v4

    mul-float v5, v5, v7

    add-float/2addr v9, v11

    mul-float v5, v5, v9

    aput v5, v6, v4

    :cond_0
    cmpl-float v5, p1, v1

    if-lez v5, :cond_3

    sub-float v5, p1, v1

    div-float/2addr v5, v1

    .line 11
    iget v1, p0, Lag/b;->r:F

    sget-object v6, Lag/b;->w:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v5, v5, v3

    add-float/2addr v1, v5

    iput v1, p0, Lag/b;->p:F

    .line 12
    iget v5, p0, Lag/b;->q:F

    sub-float/2addr v1, v5

    .line 13
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v5, v3

    .line 14
    sget-object v6, Lag/b;->z:[F

    aget v7, v6, v2

    cmpl-float v7, v5, v7

    if-lez v7, :cond_1

    .line 15
    iget-object v5, p0, Lag/b;->l:[F

    neg-float v1, v1

    aput v1, v5, v0

    .line 16
    aget v0, v6, v2

    mul-float v0, v0, v3

    aput v0, v5, v2

    .line 17
    aget v0, v6, v4

    mul-float v0, v0, v3

    aput v0, v5, v4

    goto :goto_0

    .line 18
    :cond_1
    aget v7, v6, v4

    const/4 v8, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_2

    .line 19
    iget-object v5, p0, Lag/b;->l:[F

    aput v8, v5, v0

    neg-float v0, v1

    .line 20
    aput v0, v5, v2

    .line 21
    aget v0, v6, v4

    mul-float v0, v0, v3

    aput v0, v5, v4

    goto :goto_0

    .line 22
    :cond_2
    iget-object v3, p0, Lag/b;->l:[F

    aput v8, v3, v0

    .line 23
    aput v8, v3, v2

    neg-float v0, v1

    .line 24
    aput v0, v3, v4

    :cond_3
    :goto_0
    const/high16 v0, 0x43580000    # 216.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x44870000    # 1080.0f

    .line 25
    iget v1, p0, Lag/b;->n:F

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr p1, v1

    iput p1, p0, Lag/b;->o:F

    return-void
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget-object v1, p0, Lag/b;->i:Landroid/graphics/RectF;

    iget-object v2, p0, Lag/d;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3
    iget-object v1, p0, Lag/b;->i:Landroid/graphics/RectF;

    iget v2, p0, Lag/b;->m:F

    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 4
    iget v1, p0, Lag/b;->o:F

    iget-object v2, p0, Lag/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lag/b;->i:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, p0, Lag/b;->l:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lag/b;->h:Landroid/graphics/Paint;

    iget-object v3, p0, Lag/b;->k:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v5, p0, Lag/b;->i:Landroid/graphics/RectF;

    iget v6, p0, Lag/b;->p:F

    iget-object v2, p0, Lag/b;->l:[F

    aget v7, v2, v1

    const/4 v8, 0x0

    iget-object v9, p0, Lag/b;->h:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected g()V
    .locals 0

    invoke-direct {p0}, Lag/b;->v()V

    return-void
.end method

.method protected h(I)V
    .locals 1

    iget-object v0, p0, Lag/b;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected k(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lag/b;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public w(III)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    iput-object v0, p0, Lag/b;->k:[I

    return-void
.end method
