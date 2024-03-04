.class public Lcom/guochao/faceshow/aaspring/views/ShadowLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/RectF;

.field b:Landroid/graphics/Paint;

.field c:F

.field d:F

.field e:F

.field f:F

.field g:I

.field h:Landroid/graphics/Paint;

.field i:Landroid/graphics/Rect;

.field j:Landroid/graphics/drawable/NinePatchDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0803a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->j:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/R$styleable;->ShadowLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->c:F

    const/4 v1, 0x2

    const/high16 v2, 0x40e00000    # 7.0f

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->d:F

    const/4 v1, 0x3

    const/high16 v2, 0x41700000    # 15.0f

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->e:F

    const/4 v1, 0x4

    const/16 v2, 0xf

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->f:F

    const-string v1, "#3bDDDFE0"

    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->g:I

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->b:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->a:Landroid/graphics/RectF;

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->e:F

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->c:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->d:F

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->g:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->h:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->i:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->j:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41200000    # 10.0f

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->j:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->a:Landroid/graphics/RectF;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->f:F

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->f:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->i:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/ShadowLayout;->j:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz p3, :cond_0

    const/high16 p4, 0x41a00000    # 20.0f

    .line 3
    invoke-static {p4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p4

    add-int/2addr p1, p4

    const/high16 p4, 0x41200000    # 10.0f

    invoke-static {p4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p4

    add-int/2addr p2, p4

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method
