.class Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:I

.field c:F

.field d:F

.field e:I

.field f:I

.field g:J

.field h:Landroid/graphics/PointF;

.field i:Landroid/graphics/PointF;

.field j:Landroid/graphics/PointF;

.field k:Landroid/graphics/PointF;

.field l:F

.field m:Landroid/view/animation/Interpolator;

.field final synthetic n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->a(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->m:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->e:I

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->f:I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->e:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    rem-int/lit8 p1, p1, 0x1e

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->b:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->g:J

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->b(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;I)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->k:Landroid/graphics/PointF;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->b(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;I)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->j:Landroid/graphics/PointF;

    .line 9
    new-instance p1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->c(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)I

    move-result v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->e:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->d(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)I

    move-result v3

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->f:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {p1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->h:Landroid/graphics/PointF;

    .line 10
    new-instance p1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    iget-object v3, v2, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->e:Ljava/util/Random;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->i:Landroid/graphics/PointF;

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->e:Ljava/util/Random;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->a(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->m:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->f(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->m:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->e(Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->m:Landroid/view/animation/Interpolator;

    :goto_1
    return-void
.end method

.method public b(Landroid/graphics/Canvas;)Z
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xdac

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    long-to-float v2, v0

    const v3, 0x455ac000    # 3500.0f

    div-float v3, v2, v3

    .line 4
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    iget-object v5, v4, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->h:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->m:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->h:Landroid/graphics/PointF;

    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->i:Landroid/graphics/PointF;

    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->j:Landroid/graphics/PointF;

    iget v9, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->k:Landroid/graphics/PointF;

    iget v10, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {v5 .. v10}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;->a(FFFFF)F

    move-result v4

    iput v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->c:F

    .line 5
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->n:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;

    iget-object v5, v4, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView;->h:Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->m:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->h:Landroid/graphics/PointF;

    iget v7, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->i:Landroid/graphics/PointF;

    iget v8, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->j:Landroid/graphics/PointF;

    iget v9, v4, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->k:Landroid/graphics/PointF;

    iget v10, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v5 .. v10}, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$b;->a(FFFFF)F

    move-result v4

    iput v4, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->d:F

    const-wide/16 v5, 0x1f4

    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    cmp-long v10, v0, v5

    if-gez v10, :cond_0

    const/high16 v0, 0x43fa0000    # 500.0f

    div-float/2addr v2, v0

    .line 6
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->l:F

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->b:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    .line 8
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->c:F

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->e:I

    int-to-float v1, v1

    div-float/2addr v1, v9

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->f:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 10
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->l:F

    mul-float v1, v0, v8

    mul-float v0, v0, v8

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->e:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->f:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->l:F

    mul-float v1, v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->c:F

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->e:I

    int-to-float v0, v0

    div-float/2addr v0, v9

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->f:I

    int-to-float v1, v1

    div-float/2addr v1, v9

    invoke-virtual {p1, v8, v8, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 14
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->e:I

    int-to-float v1, v1

    div-float/2addr v1, v9

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->f:I

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->a:Landroid/graphics/drawable/Drawable;

    sub-float/2addr v8, v3

    mul-float v8, v8, v7

    float-to-int v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AddZanHeartView$c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
