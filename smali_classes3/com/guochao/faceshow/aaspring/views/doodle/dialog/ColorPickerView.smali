.class public Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView$a;
    }
.end annotation


# instance fields
.field private final a:[I

.field private final b:[I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Shader;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:F

.field private o:F

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/graphics/RectF;

.field private u:Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView$a;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/BitmapShader;


# direct methods
.method private a(IIF)I
    .locals 0

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float p3, p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private b(FFF)Z
    .locals 6

    float-to-double v0, p3

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v0, v2

    mul-double v4, v4, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    mul-double p1, p1, v2

    cmpg-double p3, p1, v4

    if-gez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(FFFF)Z
    .locals 6

    float-to-double v0, p3

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v0, v2

    mul-double v4, v4, v0

    float-to-double p3, p4

    mul-double v0, p3, v2

    mul-double v0, v0, p3

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    mul-double p1, p1, v2

    cmpg-double p3, p1, v4

    if-gez p3, :cond_0

    cmpl-double p3, p1, v0

    if-lez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(FF)Z
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->j:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->h:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->k:F

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->i:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private e([IF)I
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 p2, 0x0

    .line 1
    aget p1, p1, p2

    return p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 2
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    return p1

    .line 3
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int v0, p2

    int-to-float v1, v0

    sub-float/2addr p2, v1

    .line 4
    aget v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 5
    aget p1, p1, v0

    .line 6
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->a(IIF)I

    move-result v0

    .line 7
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->a(IIF)I

    move-result v2

    .line 8
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->a(IIF)I

    move-result v3

    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-direct {p0, v1, p1, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->a(IIF)I

    move-result p1

    .line 10
    invoke-static {v0, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private f([IF)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 1
    aget v1, p1, v1

    .line 2
    aget p1, p1, v0

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->j:F

    add-float/2addr p2, v0

    goto :goto_0

    .line 4
    :cond_0
    aget v1, p1, v0

    const/4 v0, 0x2

    .line 5
    aget p1, p1, v0

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->j:F

    :goto_0
    div-float/2addr p2, v0

    .line 7
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->a(IIF)I

    move-result v0

    .line 8
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->a(IIF)I

    move-result v2

    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->a(IIF)I

    move-result v3

    .line 10
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-direct {p0, v1, p1, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->a(IIF)I

    move-result p1

    .line 11
    invoke-static {v0, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->v:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->m:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->l:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x32

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->w:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->o:F

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 6
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->r:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->s:Z

    if-eqz v0, :cond_4

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->r:Z

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->s:Z

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    const/16 v3, 0x90

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13
    :cond_3
    :goto_1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->o:F

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->t:Landroid/graphics/RectF;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->n:F

    neg-float v2, v1

    neg-float v3, v1

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->t:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 20
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->p:Z

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->b:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->b:[I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    aput v2, v0, v1

    .line 23
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->h:F

    const/4 v5, 0x0

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->j:F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->b:[I

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->g:Landroid/graphics/Shader;

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->g:Landroid/graphics/Shader;

    if-nez v0, :cond_6

    .line 25
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->h:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->j:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->b:[I

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->g:Landroid/graphics/Shader;

    .line 26
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->g:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 27
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->h:F

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->i:F

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->j:F

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->k:F

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->f:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 29
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->h:F

    sub-float v4, v2, v0

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->i:F

    mul-float v1, v1, v0

    sub-float v5, v3, v1

    sub-float v6, v2, v0

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->k:F

    add-float v7, v2, v1

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->e:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 30
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->h:F

    sub-float v4, v2, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->i:F

    sub-float v5, v2, v0

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->j:F

    add-float v6, v3, v1

    sub-float v7, v2, v0

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->e:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 31
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->j:F

    add-float v4, v2, v0

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->i:F

    sub-float v5, v3, v1

    add-float v6, v2, v0

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->k:F

    add-float v7, v2, v1

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->e:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 32
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->h:F

    sub-float v4, v2, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->k:F

    add-float v5, v2, v0

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->j:F

    add-float v6, v3, v1

    add-float v7, v2, v0

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->e:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 33
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->m:I

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->l:I

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->m:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->l:I

    div-int/2addr v3, v2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v1, v3

    .line 3
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->n:F

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->c:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->n:F

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->c:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    .line 5
    invoke-direct {p0, v0, v1, v3, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->c(FFFF)Z

    move-result v3

    .line 6
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->o:F

    invoke-direct {p0, v0, v1, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->b(FFF)Z

    move-result v4

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d(FF)Z

    move-result v5

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_6

    if-eq p1, v6, :cond_0

    if-eq p1, v2, :cond_7

    goto/16 :goto_3

    .line 9
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->r:Z

    if-eqz p1, :cond_1

    if-eqz v4, :cond_1

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->u:Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView$a;

    if-eqz p1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView$a;->a(I)V

    .line 12
    :cond_1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->p:Z

    if-eqz p1, :cond_2

    .line 13
    iput-boolean v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->p:Z

    .line 14
    :cond_2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->q:Z

    if-eqz p1, :cond_3

    .line 15
    iput-boolean v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->q:Z

    .line 16
    :cond_3
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->r:Z

    if-eqz p1, :cond_4

    .line 17
    iput-boolean v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->r:Z

    .line 18
    :cond_4
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->s:Z

    if-eqz p1, :cond_5

    .line 19
    iput-boolean v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->s:Z

    .line 20
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 21
    :cond_6
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->p:Z

    .line 22
    iput-boolean v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->q:Z

    .line 23
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->r:Z

    .line 24
    :cond_7
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->p:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    if-eqz v3, :cond_9

    float-to-double v8, v1

    float-to-double v0, v0

    .line 25
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v8

    double-to-float p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 26
    :cond_8
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->v:Landroid/graphics/drawable/Drawable;

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->a:[I

    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->e([IF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 28
    :cond_9
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->q:Z

    if-eqz p1, :cond_a

    if-eqz v5, :cond_a

    .line 29
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->v:Landroid/graphics/drawable/Drawable;

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->b:[I

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->f([IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    :cond_a
    :goto_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->r:Z

    if-eqz p1, :cond_b

    if-nez v4, :cond_c

    :cond_b
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->s:Z

    if-eqz v0, :cond_d

    if-eqz v4, :cond_d

    .line 32
    :cond_c
    iput-boolean v6, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->r:Z

    .line 33
    iput-boolean v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->s:Z

    goto :goto_2

    :cond_d
    if-nez p1, :cond_f

    if-eqz v0, :cond_e

    goto :goto_1

    .line 34
    :cond_e
    iput-boolean v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->r:Z

    .line 35
    iput-boolean v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->s:Z

    goto :goto_2

    .line 36
    :cond_f
    :goto_1
    iput-boolean v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->r:Z

    .line 37
    iput-boolean v6, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->s:Z

    .line 38
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_3
    return v6
.end method

.method public setColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->b:[I

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->v:Landroid/graphics/drawable/Drawable;

    .line 2
    new-instance v0, Landroid/graphics/BitmapShader;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/dialog/ColorPickerView;->w:Landroid/graphics/BitmapShader;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
