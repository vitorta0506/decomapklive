.class public Lcom/guochao/faceshow/aaspring/views/w;
.super Lcom/guochao/faceshow/aaspring/views/r;
.source "SourceFile"


# instance fields
.field S:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

.field private T:I


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/r;-><init>(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    .line 2
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/w;->A(Landroid/util/AttributeSet;)V

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/w;->S:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    return-void
.end method

.method private A(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->d()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/R$styleable;->VerticalRangeSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/w;->T:I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected E(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/w;->T:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/w;->U(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/r;->E(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected U(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->q()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->f()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->j()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->k()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->r()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->r()I

    move-result v0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->l()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->i()I

    move-result v3

    add-int/2addr v1, v3

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->g()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->g()I

    move-result v1

    .line 11
    :cond_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->Q:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 12
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->x:I

    sub-int/2addr v4, v1

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/r;->R:I

    sub-int/2addr v4, v6

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->h()I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 14
    iget v0, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->E:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 16
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->Q:I

    div-int/2addr v1, v5

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->e()I

    move-result v3

    sub-int v3, v1, v3

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->e()I

    move-result v4

    sub-int v4, v0, v4

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->e()I

    move-result v6

    add-int/2addr v6, v1

    .line 20
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 21
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    int-to-float v1, v3

    int-to-float v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    int-to-float v1, v6

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->e()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->e()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->d()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/t;->b(Landroid/content/Context;F)I

    move-result v0

    .line 29
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/2addr v3, v5

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    mul-float v4, v4, v6

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 30
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/2addr v4, v5

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    sub-float/2addr v1, v7

    mul-float v6, v6, v1

    float-to-int v1, v6

    sub-int/2addr v4, v1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressPaddingRight()I

    move-result v1

    sub-int/2addr v4, v1

    add-int/2addr v4, v0

    if-lez v3, :cond_3

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 32
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 34
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 35
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->E:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 36
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/views/t;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 37
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->m()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->m()F

    move-result v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->m()F

    move-result v3

    invoke-virtual {p1, v0, v1, v3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 39
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 40
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/2addr v0, v5

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->j()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->k()I

    move-result v0

    sub-int/2addr v1, v0

    .line 41
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/2addr v0, v5

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->l()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->i()I

    move-result v0

    sub-int/2addr v3, v0

    .line 42
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->p()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v1

    .line 43
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float/2addr v1, v0

    int-to-float v3, v3

    .line 44
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float v4, v3, v6

    .line 45
    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/w;->T:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 46
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/w;->S:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->getOrientation()I

    move-result v6

    if-ne v6, v7, :cond_7

    const/16 v2, 0x5a

    goto :goto_2

    .line 47
    :cond_7
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/w;->S:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->getOrientation()I

    move-result v6

    if-ne v6, v5, :cond_8

    const/16 v2, -0x5a

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    int-to-float v5, v2

    .line 48
    invoke-virtual {p1, v5, v1, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 49
    :cond_9
    invoke-virtual {p1, p3, v0, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v2, :cond_a

    neg-int p2, v2

    int-to-float p2, p2

    .line 50
    invoke-virtual {p1, p2, v1, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_a
    return-void
.end method
