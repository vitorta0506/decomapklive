.class Lrd/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:[I

.field j:I

.field k:F

.field l:F

.field m:F

.field n:Z

.field o:Landroid/graphics/Path;

.field p:F

.field q:D

.field r:I

.field s:I

.field t:I

.field final u:Landroid/graphics/Paint;

.field v:I

.field w:I

.field final synthetic x:Lrd/a;


# direct methods
.method constructor <init>(Lrd/a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lrd/a$c;->x:Lrd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lrd/a$c;->a:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lrd/a$c;->b:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lrd/a$c;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lrd/a$c;->d:F

    .line 6
    iput v1, p0, Lrd/a$c;->e:F

    .line 7
    iput v1, p0, Lrd/a$c;->f:F

    const/high16 v1, 0x40a00000    # 5.0f

    .line 8
    iput v1, p0, Lrd/a$c;->g:F

    const/high16 v1, 0x40200000    # 2.5f

    .line 9
    iput v1, p0, Lrd/a$c;->h:F

    .line 10
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lrd/a$c;->u:Landroid/graphics/Paint;

    .line 11
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 12
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lrd/a$c;->n:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lrd/a$c;->o:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lrd/a$c;->o:Landroid/graphics/Path;

    .line 4
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    :goto_0
    iget v0, p0, Lrd/a$c;->h:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lrd/a$c;->p:F

    mul-float v0, v0, v1

    .line 7
    iget-wide v1, p0, Lrd/a$c;->q:D

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v1, v5

    double-to-float v1, v1

    .line 8
    iget-wide v5, p0, Lrd/a$c;->q:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v5, v5, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v5, v2

    double-to-float v2, v5

    .line 9
    iget-object v3, p0, Lrd/a$c;->o:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10
    iget-object v3, p0, Lrd/a$c;->o:Landroid/graphics/Path;

    iget v5, p0, Lrd/a$c;->r:I

    int-to-float v5, v5

    iget v6, p0, Lrd/a$c;->p:F

    mul-float v5, v5, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object v3, p0, Lrd/a$c;->o:Landroid/graphics/Path;

    iget v4, p0, Lrd/a$c;->r:I

    int-to-float v4, v4

    iget v5, p0, Lrd/a$c;->p:F

    mul-float v4, v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget v6, p0, Lrd/a$c;->s:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v3, p0, Lrd/a$c;->o:Landroid/graphics/Path;

    sub-float/2addr v1, v0

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 13
    iget-object v0, p0, Lrd/a$c;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 14
    iget-object v0, p0, Lrd/a$c;->c:Landroid/graphics/Paint;

    iget v1, p0, Lrd/a$c;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr p2, p3

    const/high16 p3, 0x40a00000    # 5.0f

    sub-float/2addr p2, p3

    .line 15
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p3

    .line 16
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p4

    .line 17
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 18
    iget-object p2, p0, Lrd/a$c;->o:Landroid/graphics/Path;

    iget-object p3, p0, Lrd/a$c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private d()I
    .locals 2

    iget v0, p0, Lrd/a$c;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lrd/a$c;->i:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lrd/a$c;->a:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3
    iget v0, p0, Lrd/a$c;->h:F

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 4
    iget v0, p0, Lrd/a$c;->d:F

    iget v2, p0, Lrd/a$c;->f:F

    add-float/2addr v0, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v6, v0, v3

    .line 5
    iget v0, p0, Lrd/a$c;->e:F

    add-float/2addr v0, v2

    mul-float v0, v0, v3

    sub-float v7, v0, v6

    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lrd/a$c;->b:Landroid/graphics/Paint;

    iget v2, p0, Lrd/a$c;->w:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    .line 7
    iget-object v5, p0, Lrd/a$c;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 8
    :cond_0
    invoke-direct {p0, p1, v6, v7, p2}, Lrd/a$c;->b(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 9
    iget v0, p0, Lrd/a$c;->t:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lrd/a$c;->u:Landroid/graphics/Paint;

    iget v2, p0, Lrd/a$c;->v:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v0, p0, Lrd/a$c;->u:Landroid/graphics/Paint;

    iget v2, p0, Lrd/a$c;->t:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object v2, p0, Lrd/a$c;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lrd/a$c;->i:[I

    invoke-direct {p0}, Lrd/a$c;->d()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lrd/a$c;->i:[I

    iget v1, p0, Lrd/a$c;->j:I

    aget v0, v0, v1

    return v0
.end method

.method public f()V
    .locals 1

    invoke-direct {p0}, Lrd/a$c;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lrd/a$c;->h(I)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lrd/a$c;->k:F

    .line 2
    iput v0, p0, Lrd/a$c;->l:F

    .line 3
    iput v0, p0, Lrd/a$c;->m:F

    .line 4
    iput v0, p0, Lrd/a$c;->d:F

    .line 5
    iput v0, p0, Lrd/a$c;->e:F

    .line 6
    iput v0, p0, Lrd/a$c;->f:F

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iput p1, p0, Lrd/a$c;->j:I

    .line 2
    iget-object v0, p0, Lrd/a$c;->i:[I

    aget p1, v0, p1

    iput p1, p0, Lrd/a$c;->w:I

    return-void
.end method

.method public i(II)V
    .locals 5

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 2
    iget-wide v0, p0, Lrd/a$c;->q:D

    const/high16 p2, 0x40000000    # 2.0f

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, p2

    float-to-double p1, p1

    sub-double/2addr p1, v0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget p1, p0, Lrd/a$c;->g:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_1
    double-to-float p1, p1

    .line 4
    iput p1, p0, Lrd/a$c;->h:F

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget v0, p0, Lrd/a$c;->d:F

    iput v0, p0, Lrd/a$c;->k:F

    .line 2
    iget v0, p0, Lrd/a$c;->e:F

    iput v0, p0, Lrd/a$c;->l:F

    .line 3
    iget v0, p0, Lrd/a$c;->f:F

    iput v0, p0, Lrd/a$c;->m:F

    return-void
.end method
