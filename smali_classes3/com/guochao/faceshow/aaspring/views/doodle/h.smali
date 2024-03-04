.class public Lcom/guochao/faceshow/aaspring/views/doodle/h;
.super Lcom/guochao/faceshow/aaspring/views/doodle/f;
.source "SourceFile"


# instance fields
.field private final E:Landroid/graphics/Paint;

.field private final F:Landroid/graphics/Paint;

.field private G:Landroid/graphics/Rect;

.field private H:Ljava/lang/String;

.field private I:Landroid/text/TextPaint;

.field J:Landroid/graphics/RectF;

.field private K:F

.field private L:Z

.field private M:I

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/views/doodle/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lla/a;Ljava/lang/String;FLla/b;IFF)V
    .locals 13

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    .line 1
    invoke-interface {p1}, Lla/a;->getDoodleRotation()I

    move-result v3

    neg-int v3, v3

    move-object v4, p1

    invoke-direct {p0, p1, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/f;-><init>(Lla/a;IFF)V

    .line 2
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->E:Landroid/graphics/Paint;

    .line 3
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->F:Landroid/graphics/Paint;

    .line 4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    .line 5
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    .line 6
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->J:Landroid/graphics/RectF;

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->L:Z

    .line 8
    iput-boolean v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->O:Z

    .line 9
    iput-boolean v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->P:Z

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->Q:Ljava/util/List;

    .line 11
    sget-object v4, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->TEXT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->A(Lla/e;)V

    move/from16 v4, p5

    .line 12
    iput v4, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->M:I

    .line 13
    iput v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->K:F

    move-object v4, p2

    .line 14
    iput-object v4, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->H:Ljava/lang/String;

    move/from16 v4, p3

    .line 15
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->setSize(F)V

    move-object/from16 v4, p4

    .line 16
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->setColor(Lla/b;)V

    .line 17
    new-instance v12, Landroid/text/StaticLayout;

    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->H:Ljava/lang/String;

    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v4

    invoke-interface {v4}, Lla/a;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v7, v4, 0x2

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 18
    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_0

    .line 19
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->H:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 20
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    add-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 21
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    invoke-virtual {v12, v5, v3}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 23
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    mul-int v4, v4, v7

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 24
    invoke-virtual {v6, v5, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 25
    :goto_0
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->n(FF)V

    return-void
.end method


# virtual methods
.method public G(Landroid/graphics/Rect;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->v()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 5
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v2

    invoke-interface {v2}, Lla/a;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 6
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->H:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 8
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, v3, p1}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 11
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    mul-int v0, v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 12
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 13
    :goto_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->O:Z

    if-eqz v0, :cond_2

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/k;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/k;-><init>()V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->m()F

    move-result v1

    .line 16
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v4, p1

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f()F

    move-result p1

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 21
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->h(F)V

    .line 22
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->f(Landroid/graphics/PointF;)V

    .line 23
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->i(F)V

    .line 24
    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->g(Landroid/graphics/Rect;)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->Q:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->O:Z

    :cond_2
    return-void
.end method

.method public M()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->M:I

    return v0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->N:Z

    return v0
.end method

.method public O()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/views/doodle/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->Q:Ljava/util/List;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->H:Ljava/lang/String;

    return-object v0
.end method

.method public Q()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->E:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->P:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->P:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/doodle/k;

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->b()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->W(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->a()Landroid/graphics/PointF;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->d()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->i(F)V

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->c()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->d(F)V

    .line 13
    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->n(FF)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G(Landroid/graphics/Rect;)V

    return v2

    :cond_2
    return v1
.end method

.method public S(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->M:I

    return-void
.end method

.method public T(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->N:Z

    return-void
.end method

.method public U(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->P:Z

    return-void
.end method

.method public V(Lcom/guochao/faceshow/aaspring/views/doodle/k;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->H:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->B(F)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->C(F)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->H(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    return-void
.end method

.method public s(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->getColor()Lla/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->E:Landroid/graphics/Paint;

    invoke-interface {v0, p0, v1}, Lla/b;->config(Lla/c;Landroid/graphics/Paint;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->M:I

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->F:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->F:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->J:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->G:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v0

    invoke-interface {v0}, Lla/a;->getUnitSize()F

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->J:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sget v3, Lcom/guochao/faceshow/aaspring/views/doodle/g;->x:I

    int-to-float v4, v3

    mul-float v4, v4, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f()F

    move-result v5

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->J:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    int-to-float v4, v3

    mul-float v4, v4, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f()F

    move-result v5

    div-float/2addr v4, v5

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->J:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    int-to-float v4, v3

    mul-float v4, v4, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f()F

    move-result v5

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->J:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f()F

    move-result v0

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->J:Landroid/graphics/RectF;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->F:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->E:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->v()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 16
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->I:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object v2

    invoke-interface {v2}, Lla/a;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 17
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->E:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->v()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->E:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 21
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->H:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/h;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method
