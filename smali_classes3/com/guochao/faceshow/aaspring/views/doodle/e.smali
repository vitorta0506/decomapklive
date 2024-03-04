.class public Lcom/guochao/faceshow/aaspring/views/doodle/e;
.super Lcom/guochao/faceshow/aaspring/views/doodle/f;
.source "SourceFile"


# static fields
.field private static Q:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lla/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final E:Landroid/graphics/Path;

.field private final F:Landroid/graphics/Path;

.field private final G:Landroid/graphics/Matrix;

.field private H:Landroid/graphics/PointF;

.field private I:Landroid/graphics/PointF;

.field private J:Landroid/graphics/Paint;

.field private K:Lcom/guochao/faceshow/aaspring/views/doodle/a;

.field private L:Landroid/graphics/Rect;

.field private M:Landroid/graphics/Matrix;

.field private N:Landroid/graphics/RectF;

.field private O:Landroid/graphics/Path;

.field private P:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->Q:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Lla/a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/f;-><init>(Lla/a;IFF)V

    .line 2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->E:Landroid/graphics/Path;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->G:Landroid/graphics/Matrix;

    .line 5
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->H:Landroid/graphics/PointF;

    .line 6
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->I:Landroid/graphics/PointF;

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->J:Landroid/graphics/Paint;

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->L:Landroid/graphics/Rect;

    .line 9
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->M:Landroid/graphics/Matrix;

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->N:Landroid/graphics/RectF;

    return-void
.end method

.method private M()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getPen()Lla/e;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->MOSAIC:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getColor()Lla/b;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getColor()Lla/b;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->c()Landroid/graphics/Matrix;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->g()F

    move-result v4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->h()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f()F

    move-result v3

    mul-float v2, v2, v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f()F

    move-result v4

    mul-float v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->m()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->g()F

    move-result v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->h()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->b()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 10
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->f(Landroid/graphics/Matrix;)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    :cond_0
    return-void
.end method

.method private N(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->L:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->R(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->E:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->E:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->G:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->G:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->L:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->E:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->G:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->L:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->B(F)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->L:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->C(F)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->L:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->y(FFZ)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getColor()Lla/b;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getColor()Lla/b;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->d()Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;->BITMAP:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor$Type;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->M:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getPen()Lla/e;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->MOSAIC:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne v0, v1, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->M()V

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getPen()Lla/e;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne v0, v1, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->O()Lcom/guochao/faceshow/aaspring/views/doodle/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->f()F

    move-result v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->d()F

    move-result v2

    sub-float/2addr v1, v2

    .line 19
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->g()F

    move-result v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->e()F

    move-result v0

    sub-float v0, v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->L:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->R(Landroid/graphics/Rect;)V

    .line 21
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->M:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->L:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->M:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->L:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 23
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->b()I

    move-result v0

    .line 24
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->M:Landroid/graphics/Matrix;

    int-to-float v0, v0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->M:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->f(Landroid/graphics/Matrix;)V

    .line 26
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    .line 27
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    return-void
.end method

.method public static P(Lla/a;I)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;
    .locals 10

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->Q:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/e;->Q:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v9, p1

    div-float/2addr v1, v9

    .line 5
    invoke-virtual {v8, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 7
    invoke-interface {p0}, Lla/a;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    invoke-interface {p0}, Lla/a;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-interface {p0}, Lla/a;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v6, v8

    .line 9
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 12
    invoke-virtual {v8, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 13
    new-instance p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0, v1, v8, v0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;->e(I)V

    return-object p0
.end method

.method private R(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->v()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->N:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getShape()Lla/g;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->ARROW:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getShape()Lla/g;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->FILL_CIRCLE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getShape()Lla/g;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->FILL_RECT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    if-ne v1, v2, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v0

    invoke-interface {v0}, Lla/a;->getUnitSize()F

    move-result v0

    float-to-int v0, v0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->N:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    sub-float/2addr v2, v0

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v0

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static S(Lla/a;Landroid/graphics/Path;)Lcom/guochao/faceshow/aaspring/views/doodle/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/doodle/e;-><init>(Lla/a;)V

    .line 2
    invoke-interface {p0}, Lla/a;->getPen()Lla/e;

    move-result-object v1

    invoke-interface {v1}, Lla/e;->copy()Lla/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->A(Lla/e;)V

    .line 3
    invoke-interface {p0}, Lla/a;->getShape()Lla/g;

    move-result-object v1

    invoke-interface {v1}, Lla/g;->copy()Lla/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->D(Lla/g;)V

    .line 4
    invoke-interface {p0}, Lla/a;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->setSize(F)V

    .line 5
    invoke-interface {p0}, Lla/a;->getColor()Lla/b;

    move-result-object v1

    invoke-interface {v1}, Lla/b;->copy()Lla/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->setColor(Lla/b;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->X(Landroid/graphics/Path;)V

    .line 7
    instance-of p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    if-eqz p0, :cond_0

    .line 8
    sget-object p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->getCopyLocation()Lcom/guochao/faceshow/aaspring/views/doodle/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->b()Lcom/guochao/faceshow/aaspring/views/doodle/a;

    move-result-object p0

    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->K:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 9
    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->K:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    :goto_0
    return-object v0
.end method

.method public static T(Lla/a;FFFF)Lcom/guochao/faceshow/aaspring/views/doodle/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/doodle/e;-><init>(Lla/a;)V

    .line 2
    invoke-interface {p0}, Lla/a;->getPen()Lla/e;

    move-result-object v1

    invoke-interface {v1}, Lla/e;->copy()Lla/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->A(Lla/e;)V

    .line 3
    invoke-interface {p0}, Lla/a;->getShape()Lla/g;

    move-result-object v1

    invoke-interface {v1}, Lla/g;->copy()Lla/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->D(Lla/g;)V

    .line 4
    invoke-interface {p0}, Lla/a;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->setSize(F)V

    .line 5
    invoke-interface {p0}, Lla/a;->getColor()Lla/b;

    move-result-object v1

    invoke-interface {v1}, Lla/b;->copy()Lla/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->setColor(Lla/b;)V

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->Z(FFFF)V

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getPen()Lla/e;

    move-result-object p1

    sget-object p2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->COPY:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne p1, p2, :cond_0

    .line 8
    instance-of p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->getCopyLocation()Lcom/guochao/faceshow/aaspring/views/doodle/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/a;->b()Lcom/guochao/faceshow/aaspring/views/doodle/a;

    move-result-object p0

    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->K:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    :cond_0
    return-object v0
.end method

.method private U(Landroid/graphics/Path;FFFFF)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    float-to-double v5, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    float-to-double v7, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double v11, v7, v9

    div-double v13, v11, v5

    .line 1
    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    mul-double v11, v11, v7

    div-double/2addr v11, v9

    mul-double v9, v5, v5

    add-double/2addr v11, v9

    .line 2
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    sub-double v22, v11, v15

    sub-float v4, v2, p2

    sub-float v11, v3, p3

    const/16 v19, 0x1

    move v15, v4

    move/from16 v16, v11

    move-wide/from16 v17, v13

    move-wide/from16 v20, v22

    .line 3
    invoke-static/range {v15 .. v21}, Lma/a;->e(FFDZD)[D

    move-result-object v12

    neg-double v13, v13

    const/16 v21, 0x1

    move/from16 v17, v4

    move/from16 v18, v11

    move-wide/from16 v19, v13

    .line 4
    invoke-static/range {v17 .. v23}, Lma/a;->e(FFDZD)[D

    move-result-object v13

    float-to-double v14, v2

    const/16 v22, 0x0

    .line 5
    aget-wide v16, v12, v22

    move-wide/from16 v18, v9

    sub-double v9, v14, v16

    double-to-float v9, v9

    move/from16 p6, v11

    float-to-double v10, v3

    const/16 v23, 0x1

    .line 6
    aget-wide v16, v12, v23

    sub-double v2, v10, v16

    double-to-float v2, v2

    .line 7
    aget-wide v16, v13, v22

    move v12, v4

    sub-double v3, v14, v16

    double-to-float v3, v3

    .line 8
    aget-wide v16, v13, v23

    move-wide/from16 v20, v14

    sub-double v13, v10, v16

    double-to-float v4, v13

    .line 9
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10
    invoke-virtual {v1, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    div-double v2, v7, v5

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double v7, v7, v7

    add-double v7, v7, v18

    .line 14
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const/16 v19, 0x1

    move-wide/from16 v6, v20

    move v15, v12

    move/from16 v16, p6

    move-wide/from16 v17, v2

    move-wide/from16 v20, v4

    .line 15
    invoke-static/range {v15 .. v21}, Lma/a;->e(FFDZD)[D

    move-result-object v8

    neg-double v2, v2

    move-wide/from16 v17, v2

    .line 16
    invoke-static/range {v15 .. v21}, Lma/a;->e(FFDZD)[D

    move-result-object v2

    .line 17
    aget-wide v3, v8, v22

    sub-double v14, v6, v3

    double-to-float v3, v14

    .line 18
    aget-wide v4, v8, v23

    sub-double v4, v10, v4

    double-to-float v4, v4

    .line 19
    aget-wide v8, v2, v22

    sub-double v14, v6, v8

    double-to-float v5, v14

    .line 20
    aget-wide v6, v2, v23

    sub-double/2addr v10, v6

    double-to-float v2, v10

    .line 21
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->O:Landroid/graphics/Path;

    if-nez v6, :cond_0

    .line 22
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->O:Landroid/graphics/Path;

    .line 23
    :cond_0
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->O:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 24
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->O:Landroid/graphics/Path;

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 25
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->O:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 26
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->O:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 27
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->O:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 28
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->O:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private V(Landroid/graphics/Path;FFFFF)V
    .locals 0

    sub-float p4, p2, p4

    mul-float p4, p4, p4

    sub-float p5, p3, p5

    mul-float p5, p5, p5

    add-float/2addr p4, p5

    float-to-double p4, p4

    .line 1
    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    double-to-float p4, p4

    .line 2
    sget-object p5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private W(Landroid/graphics/Path;FFFFF)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private Y(Landroid/graphics/Path;FFFFF)V
    .locals 6

    cmpg-float v0, p2, p4

    if-gez v0, :cond_1

    cmpg-float v0, p3, p5

    if-gez v0, :cond_0

    .line 1
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, p2

    move v2, p5

    move v3, p4

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_1
    cmpg-float v0, p3, p5

    if-gez v0, :cond_2

    .line 3
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, p4

    move v2, p3

    move v3, p2

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 4
    :cond_2
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, p4

    move v2, p5

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected G(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->R(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public O()Lcom/guochao/faceshow/aaspring/views/doodle/a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->K:Lcom/guochao/faceshow/aaspring/views/doodle/a;

    return-object v0
.end method

.method public Q()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->E:Landroid/graphics/Path;

    return-object v0
.end method

.method public X(Landroid/graphics/Path;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->N(Z)V

    return-void
.end method

.method public Z(FFFF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->H:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->I:Landroid/graphics/PointF;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/PointF;->set(FF)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->ARROW:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getShape()Lla/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->H:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->I:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->v()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->U(Landroid/graphics/Path;FFFFF)V

    goto/16 :goto_1

    .line 6
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->LINE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getShape()Lla/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->H:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->I:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->v()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->W(Landroid/graphics/Path;FFFFF)V

    goto :goto_1

    .line 8
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->FILL_CIRCLE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getShape()Lla/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->HOLLOW_CIRCLE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getShape()Lla/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->FILL_RECT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getShape()Lla/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->HOLLOW_RECT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getShape()Lla/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->H:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->I:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->v()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->Y(Landroid/graphics/Path;FFFFF)V

    goto :goto_1

    .line 11
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->H:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->I:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->v()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->V(Landroid/graphics/Path;FFFFF)V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->N(Z)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->P:I

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getPen()Lla/e;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->ERASER:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->c()Z

    move-result v0

    return v0
.end method

.method public d(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->d(F)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->M()V

    return-void
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->P:I

    return v0
.end method

.method public i(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->i(F)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->M()V

    return-void
.end method

.method protected s(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->J:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->J:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->v()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->J:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->J:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->J:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getPen()Lla/e;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->J:Landroid/graphics/Paint;

    invoke-interface {v0, p0, v1}, Lla/e;->config(Lla/c;Landroid/graphics/Paint;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getColor()Lla/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->J:Landroid/graphics/Paint;

    invoke-interface {v0, p0, v1}, Lla/b;->config(Lla/c;Landroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getShape()Lla/g;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->J:Landroid/graphics/Paint;

    invoke-interface {v0, p0, v1}, Lla/g;->config(Lla/c;Landroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->Q()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(Lla/b;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->setColor(Lla/b;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getPen()Lla/e;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->MOSAIC:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->y(FFZ)V

    .line 4
    :cond_0
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->N(Z)V

    return-void
.end method

.method public setSize(F)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->setSize(F)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->G:Landroid/graphics/Matrix;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->ARROW:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getShape()Lla/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->F:Landroid/graphics/Path;

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->H:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/e;->I:Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->v()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->U(Landroid/graphics/Path;FFFFF)V

    :cond_1
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->N(Z)V

    return-void
.end method

.method public y(FFZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->y(FFZ)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/e;->M()V

    return-void
.end method
