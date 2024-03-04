.class public Lcom/guochao/faceshow/aaspring/views/doodle/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/graphics/Paint;

.field private h:Z

.field private i:Z

.field private j:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->h:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->i:Z

    .line 4
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->j:Landroid/graphics/PointF;

    .line 5
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method


# virtual methods
.method public a(FFF)Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->e:F

    sub-float v1, v0, p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->f:F

    sub-float v0, p1, p2

    sub-float/2addr p1, p2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    mul-float p3, p3, p3

    cmpg-float p1, v1, p3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Lcom/guochao/faceshow/aaspring/views/doodle/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/a;-><init>()V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->a:F

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->a:F

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->b:F

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->b:F

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->c:F

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->c:F

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->d:F

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->d:F

    .line 6
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->e:F

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->e:F

    .line 7
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->f:F

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->f:F

    return-object v0
.end method

.method public c(Landroid/graphics/Canvas;F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    div-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    const v1, -0x5599999a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->e:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->f:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p2, v2

    const/high16 v3, 0x41000000    # 8.0f

    div-float v3, p2, v3

    add-float/2addr v3, v2

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v3, v4}, Lma/a;->b(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    div-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    const v1, -0x55000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->e:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->f:F

    const/high16 v3, 0x42000000    # 32.0f

    div-float/2addr p2, v3

    add-float/2addr p2, v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, p2, v3}, Lma/a;->b(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->i:Z

    if-nez p2, :cond_0

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    const/high16 v0, 0x44ff0000    # 2040.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->e:F

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->f:F

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    invoke-static {p1, p2, v0, v2, v1}, Lma/a;->b(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    const v0, 0x44000088

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->e:F

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->f:F

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g:Landroid/graphics/Paint;

    invoke-static {p1, p2, v0, v2, v1}, Lma/a;->b(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->a:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->b:F

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->c:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->d:F

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->i:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->h:Z

    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->f:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->e:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->d:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->c:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->b:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->a:F

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->h:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->i:Z

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->i:Z

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->h:Z

    return-void
.end method

.method public m(FF)V
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->e:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->f:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->n(FFFF)V

    return-void
.end method

.method public n(FFFF)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->a:F

    .line 2
    iput p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->b:F

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->c:F

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->d:F

    return-void
.end method

.method public o(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->e:F

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/a;->f:F

    return-void
.end method
