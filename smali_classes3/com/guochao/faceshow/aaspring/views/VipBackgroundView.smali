.class public Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:[I

.field private c:I

.field d:Landroid/graphics/Paint;

.field e:Landroid/graphics/Paint;

.field f:Landroid/graphics/RectF;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    const-string v1, "#FFF76B"

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#FFB92E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->a:[I

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->b:[I

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->d:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->e:Landroid/graphics/Paint;

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->f:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    const-string v1, "#FFF76B"

    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "#FFB92E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->a:[I

    new-array p1, p1, [I

    .line 10
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->b:[I

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->d:Landroid/graphics/Paint;

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->e:Landroid/graphics/Paint;

    .line 13
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->f:Landroid/graphics/RectF;

    .line 14
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p3, p1, [I

    const-string v0, "#FFF76B"

    .line 16
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p3, v1

    const-string v0, "#FFB92E"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p3, v1

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->a:[I

    new-array p1, p1, [I

    .line 17
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->b:[I

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->d:Landroid/graphics/Paint;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->e:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->f:Landroid/graphics/RectF;

    .line 21
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const-string v1, "#665A1900"

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/guochao/faceshow/R$styleable;->VipBackgroundView:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v3, 0x6

    const/high16 v4, 0x3f800000    # 1.0f

    .line 3
    :try_start_0
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    const/4 v3, 0x5

    const-string v4, "#FFF76B"

    .line 4
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v4, 0x4

    .line 5
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    if-nez v4, :cond_0

    move v4, v3

    .line 6
    :cond_0
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->a:[I

    aput v3, v5, v0

    .line 7
    aput v4, v5, v2

    const/4 v3, 0x3

    .line 8
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v4, 0x2

    .line 9
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    .line 10
    :cond_1
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->b:[I

    aput v3, v5, v0

    .line 11
    aput v4, v5, v2

    .line 12
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->c:I

    const/high16 v3, 0x41a00000    # 20.0f

    .line 13
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    throw v0

    .line 16
    :catch_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->d:Landroid/graphics/Paint;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->e:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->f:Landroid/graphics/RectF;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->h:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->f:Landroid/graphics/RectF;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->h:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->f:Landroid/graphics/RectF;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    :goto_0
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v9, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v10, v2

    iget-object v11, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->a:[I

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->f:Landroid/graphics/RectF;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->h:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->d:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->b:[I

    const/4 v3, 0x0

    aget v4, v0, v3

    aget v1, v0, v1

    if-ne v4, v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->e:Landroid/graphics/Paint;

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->f:Landroid/graphics/RectF;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->h:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 15
    :cond_4
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v8, v1

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->b:[I

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->f:Landroid/graphics/RectF;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->h:I

    int-to-float v3, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipBackgroundView;->g:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
