.class public Lcom/guochao/faceshow/views/ShapedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/drawable/shapes/Shape;

.field private g:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->a:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->b:F

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->c:F

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->d:F

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->e:F

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/ShapedImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->a:I

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->b:F

    .line 11
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->c:F

    .line 12
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->d:F

    .line 13
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->e:F

    .line 14
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/views/ShapedImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->a:I

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->b:F

    .line 18
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->c:F

    .line 19
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->d:F

    .line 20
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->e:F

    .line 21
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/views/ShapedImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/guochao/faceshow/R$styleable;->ShapedImageView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/views/ShapedImageView;->a:I

    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    .line 5
    iput v2, p0, Lcom/guochao/faceshow/views/ShapedImageView;->b:F

    .line 6
    iput v2, p0, Lcom/guochao/faceshow/views/ShapedImageView;->c:F

    .line 7
    iput v2, p0, Lcom/guochao/faceshow/views/ShapedImageView;->d:F

    .line 8
    iput v2, p0, Lcom/guochao/faceshow/views/ShapedImageView;->e:F

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/views/ShapedImageView;->b:F

    const/4 v2, 0x3

    .line 10
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/views/ShapedImageView;->c:F

    .line 11
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->d:F

    .line 12
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->e:F

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->g:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->g:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->g:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->f:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/views/ShapedImageView;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->a:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->b:F

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->c:F

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->d:F

    .line 7
    iput p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->e:F

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->f:Landroid/graphics/drawable/shapes/Shape;

    if-nez p1, :cond_1

    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 p3, 0x0

    .line 9
    iget p4, p0, Lcom/guochao/faceshow/views/ShapedImageView;->c:F

    aput p4, p1, p3

    const/4 p3, 0x1

    aput p4, p1, p3

    iget p3, p0, Lcom/guochao/faceshow/views/ShapedImageView;->d:F

    aput p3, p1, p2

    const/4 p2, 0x3

    aput p3, p1, p2

    const/4 p2, 0x4

    iget p3, p0, Lcom/guochao/faceshow/views/ShapedImageView;->e:F

    aput p3, p1, p2

    const/4 p2, 0x5

    aput p3, p1, p2

    const/4 p2, 0x6

    iget p3, p0, Lcom/guochao/faceshow/views/ShapedImageView;->b:F

    aput p3, p1, p2

    const/4 p2, 0x7

    aput p3, p1, p2

    .line 10
    new-instance p2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object p2, p0, Lcom/guochao/faceshow/views/ShapedImageView;->f:Landroid/graphics/drawable/shapes/Shape;

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/ShapedImageView;->f:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    :cond_2
    return-void
.end method
