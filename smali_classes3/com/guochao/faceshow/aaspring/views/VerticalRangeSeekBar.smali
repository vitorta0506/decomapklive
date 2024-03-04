.class public Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;
.super Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;
.source "SourceFile"


# instance fields
.field private D4:I

.field private E4:I

.field private F4:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->D4:I

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->E4:I

    .line 5
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->e(Landroid/util/AttributeSet;)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->h(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private e(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/R$styleable;->VerticalRangeSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->D4:I

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->E4:I

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected c(Landroid/view/MotionEvent;)F
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->D4:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method protected d(Landroid/view/MotionEvent;)F
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->D4:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method public bridge synthetic getLeftSeekBar()Lcom/guochao/faceshow/aaspring/views/r;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->getLeftSeekBar()Lcom/guochao/faceshow/aaspring/views/w;

    move-result-object v0

    return-object v0
.end method

.method public getLeftSeekBar()Lcom/guochao/faceshow/aaspring/views/w;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/w;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->D4:I

    return v0
.end method

.method public bridge synthetic getRightSeekBar()Lcom/guochao/faceshow/aaspring/views/r;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->getRightSeekBar()Lcom/guochao/faceshow/aaspring/views/w;

    move-result-object v0

    return-object v0
.end method

.method public getRightSeekBar()Lcom/guochao/faceshow/aaspring/views/w;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/w;

    return-object v0
.end method

.method public getTickMarkDirection()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->E4:I

    return v0
.end method

.method protected getTickMarkRawHeight()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->F4:I

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextMargin()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->F4:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextSize()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/views/t;->g(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->F4:I

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/views/t;->g(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 7
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->F4:I

    if-ge v3, v2, :cond_1

    .line 8
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->F4:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextMargin()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->F4:I

    goto :goto_0

    :cond_3
    return v1
.end method

.method protected h(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/w;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/w;-><init>(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/w;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/views/w;-><init>(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getSeekBarMode()I

    move-result p1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/r;->S(Z)V

    return-void
.end method

.method protected m(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressWidth()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    div-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_a

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextArray()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_5

    .line 6
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v2, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextColor()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkMode()I

    move-result v5

    const/4 v6, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkGravity()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v9, v3, v1

    add-int/2addr v5, v9

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v5, v9

    :goto_1
    int-to-float v5, v5

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkGravity()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v9, v3, v1

    add-int/2addr v5, v9

    int-to-float v5, v5

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    sub-float/2addr v5, v9

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v9, v3, v1

    add-int/2addr v5, v9

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/views/t;->h(Ljava/lang/String;)F

    move-result v5

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getRangeSeekBarState()[Lcom/guochao/faceshow/aaspring/views/s;

    move-result-object v9

    .line 16
    aget-object v10, v9, v2

    iget v10, v10, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    invoke-static {v5, v10}, Lcom/guochao/faceshow/aaspring/views/t;->a(FF)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    aget-object v9, v9, v8

    iget v9, v9, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    invoke-static {v5, v9}, Lcom/guochao/faceshow/aaspring/views/t;->a(FF)I

    move-result v9

    if-eq v9, v8, :cond_4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getSeekBarMode()I

    move-result v9

    if-ne v9, v6, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkInRangeTextColor()I

    move-result v9

    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getMinProgress()F

    move-result v11

    sub-float/2addr v5, v11

    mul-float v10, v10, v5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getMaxProgress()F

    move-result v5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getMinProgress()F

    move-result v11

    sub-float/2addr v5, v11

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float v5, v9, v5

    .line 20
    :goto_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkLayoutGravity()I

    move-result v9

    if-nez v9, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextMargin()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkTextMargin()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v9, v10

    :goto_3
    int-to-float v9, v9

    .line 23
    iget-object v10, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v7

    add-float/2addr v10, v5

    .line 24
    iget-object v11, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v7

    sub-float v7, v9, v11

    .line 25
    iget v11, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->E4:I

    if-ne v11, v8, :cond_7

    .line 26
    iget v11, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->D4:I

    if-ne v11, v8, :cond_6

    const/16 v6, 0x5a

    goto :goto_4

    :cond_6
    if-ne v11, v6, :cond_7

    const/16 v6, -0x5a

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_8

    int-to-float v8, v6

    .line 27
    invoke-virtual {p1, v8, v10, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 28
    :cond_8
    invoke-virtual {p1, v4, v5, v9, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v6, :cond_9

    neg-int v4, v6

    int-to-float v4, v4

    .line 29
    invoke-virtual {p1, v4, v10, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->D4:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    :goto_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p1, v1, :cond_0

    .line 3
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_0
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-ne v0, p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getGravity()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressTop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressHeight()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getRawHeight()F

    move-result p1

    float-to-int p1, p1

    .line 9
    :goto_0
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p2, p1, p4, p3}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->D4:I

    return-void
.end method

.method public setTickMarkDirection(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->E4:I

    return-void
.end method

.method public setTickMarkTextArray([Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->setTickMarkTextArray([Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->F4:I

    return-void
.end method

.method public setTickMarkTextSize(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->setTickMarkTextSize(I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;->F4:I

    return-void
.end method
