.class public abstract Lcom/guochao/faceshow/aaspring/views/doodle/f;
.super Lcom/guochao/faceshow/aaspring/views/doodle/g;
.source "SourceFile"


# instance fields
.field private A:Z

.field private B:Landroid/graphics/Paint;

.field private C:Landroid/graphics/Bitmap;

.field private D:Landroid/graphics/Bitmap;

.field private y:Landroid/graphics/PointF;

.field private z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lla/a;IFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/views/doodle/g;-><init>(Lla/a;IFF)V

    .line 2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->y:Landroid/graphics/PointF;

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->A:Z

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public E(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v1

    invoke-interface {v1}, Lla/a;->getDoodleScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v3

    invoke-interface {v3}, Lla/a;->getDoodleScale()F

    move-result v3

    div-float v3, v2, v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->g()F

    move-result v4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->h()F

    move-result v5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v3

    invoke-interface {v3}, Lla/a;->getDoodleScale()F

    move-result v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->g()F

    move-result v4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->h()F

    move-result v5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-static {v1, v3, v4, v5}, Lma/a;->f(Landroid/graphics/Rect;FFF)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v1

    invoke-interface {v1}, Lla/a;->getUnitSize()F

    move-result v1

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sget v5, Lcom/guochao/faceshow/aaspring/views/doodle/g;->w:I

    int-to-float v6, v5

    mul-float v6, v6, v1

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 8
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v6, v5

    mul-float v6, v6, v1

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 9
    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    int-to-float v6, v5

    mul-float v6, v6, v1

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 10
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    const v4, 0x888888

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/f;->K()Z

    move-result v3

    const-string v4, "#FFFFFF"

    if-eqz v3, :cond_0

    .line 17
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    mul-float v2, v2, v1

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 22
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    const v3, 0x44888888

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 25
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 28
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/utils/NavigationBarUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x41a00000    # 20.0f

    .line 29
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v4

    invoke-interface {v4}, Lla/a;->getUnitSize()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 30
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v4

    invoke-interface {v4}, Lla/a;->getUnitSize()F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    .line 31
    div-int/lit8 v4, v3, 0x5

    .line 32
    div-int/lit8 v5, v1, 0x5

    const v6, 0x7f0f03b8

    const v7, 0x7f0f03ba

    goto :goto_1

    :cond_1
    const/high16 v1, 0x41000000    # 8.0f

    .line 33
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v4

    invoke-interface {v4}, Lla/a;->getUnitSize()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 34
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v4

    invoke-interface {v4}, Lla/a;->getUnitSize()F

    move-result v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    const v6, 0x7f0f03b7

    const v7, 0x7f0f03b9

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 35
    :goto_1
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 36
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 37
    iget v9, v9, Landroid/util/TypedValue;->density:I

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 38
    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 39
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->C:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 40
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v6, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 41
    invoke-static {v2, v3, v1}, Lcom/guochao/faceshow/aaspring/utils/BitmapUtils;->imageScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->C:Landroid/graphics/Bitmap;

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->C:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v9, v4

    sub-int/2addr v6, v9

    int-to-float v6, v6

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v5

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 43
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->D:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 44
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 45
    invoke-static {v2, v3, v1}, Lcom/guochao/faceshow/aaspring/utils/BitmapUtils;->imageScale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->D:Landroid/graphics/Bitmap;

    .line 46
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->D:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method public I(FF)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v4, p1, v1

    .line 4
    iget p1, v0, Landroid/graphics/PointF;->y:F

    sub-float v5, p2, p1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->y:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->m()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float v3, p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->g()F

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float v6, p1, p2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->h()F

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float v7, p1, p2

    invoke-static/range {v2 .. v7}, Lma/a;->d(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object p2

    invoke-interface {p2}, Lla/a;->getUnitSize()F

    move-result p2

    const/high16 v0, 0x41500000    # 13.0f

    mul-float p2, p2, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v0

    invoke-interface {v0}, Lla/a;->getDoodleScale()F

    move-result v0

    div-float/2addr p2, v0

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 9
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    float-to-int p2, v2

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 10
    iget p2, p1, Landroid/graphics/PointF;->x:F

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_0

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 11
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_0

    iget p2, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 12
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 13
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public J(FF)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v4, p1, v1

    .line 4
    iget p1, v0, Landroid/graphics/PointF;->y:F

    sub-float v5, p2, p1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->y:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->m()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float v3, p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->g()F

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float v6, p1, p2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->h()F

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float v7, p1, p2

    invoke-static/range {v2 .. v7}, Lma/a;->d(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object p2

    invoke-interface {p2}, Lla/a;->getUnitSize()F

    move-result p2

    const/high16 v0, 0x41500000    # 13.0f

    mul-float p2, p2, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v0

    invoke-interface {v0}, Lla/a;->getDoodleScale()F

    move-result v0

    div-float/2addr p2, v0

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 9
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 10
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    float-to-int p2, v2

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 11
    iget p2, p1, Landroid/graphics/PointF;->x:F

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_0

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 12
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_0

    iget p2, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 13
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->z:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 14
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public K()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->A:Z

    return v0
.end method

.method public L(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/f;->A:Z

    return-void
.end method
