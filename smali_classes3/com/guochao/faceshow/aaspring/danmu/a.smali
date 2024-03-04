.class public Lcom/guochao/faceshow/aaspring/danmu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7/c;


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/danmu/c;

.field private b:F

.field c:I

.field d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field e:F

.field f:Landroid/graphics/Paint;

.field g:Z

.field h:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/danmu/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->d:Landroid/util/SparseArray;

    const v0, 0x3e99999a    # 0.3f

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->e:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->g:Z

    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->h:Landroid/graphics/Matrix;

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->a:Lcom/guochao/faceshow/aaspring/danmu/c;

    .line 7
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/danmu/c;->getConfig()Lv7/a;

    move-result-object p1

    invoke-virtual {p1}, Lv7/a;->b()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->b:F

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->a:Lcom/guochao/faceshow/aaspring/danmu/c;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/danmu/c;->getConfig()Lv7/a;

    move-result-object p1

    invoke-virtual {p1}, Lv7/a;->a()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->c:I

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->f:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/danmu/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/danmu/b;

    .line 4
    iget-boolean v2, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->k:Z

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->i:Z

    if-eqz v2, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/danmu/a;->b(Lcom/guochao/faceshow/aaspring/danmu/b;)V

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/danmu/b;->d()J

    move-result-wide v2

    .line 8
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/danmu/b;->c()J

    move-result-wide v4

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 10
    iget-boolean v8, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->g:Z

    if-nez v8, :cond_3

    add-long/2addr v4, v2

    .line 11
    :cond_3
    iget v2, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->e:F

    long-to-float v3, v4

    mul-float v2, v2, v3

    iput v2, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->f:F

    .line 12
    invoke-virtual {v1, v6, v7}, Lcom/guochao/faceshow/aaspring/danmu/b;->k(J)V

    .line 13
    invoke-virtual {v1, v4, v5}, Lcom/guochao/faceshow/aaspring/danmu/b;->j(J)V

    .line 14
    iget v2, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->m:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 15
    iget v2, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->f:F

    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_5

    .line 16
    iget-boolean v2, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->j:Z

    if-nez v2, :cond_5

    .line 17
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->a:Lcom/guochao/faceshow/aaspring/danmu/c;

    invoke-interface {v2, v1}, Lcom/guochao/faceshow/aaspring/danmu/c;->a(Lcom/guochao/faceshow/aaspring/danmu/b;)V

    .line 18
    iput-boolean v3, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->j:Z

    goto :goto_1

    .line 19
    :cond_4
    iget v2, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->f:F

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->a:Lcom/guochao/faceshow/aaspring/danmu/c;

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/danmu/c;->getSurfaceWidth()I

    move-result v4

    iget-object v5, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_5

    .line 20
    iget-boolean v2, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->j:Z

    if-nez v2, :cond_5

    .line 21
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->a:Lcom/guochao/faceshow/aaspring/danmu/c;

    invoke-interface {v2, v1}, Lcom/guochao/faceshow/aaspring/danmu/c;->a(Lcom/guochao/faceshow/aaspring/danmu/b;)V

    .line 22
    iput-boolean v3, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->j:Z

    .line 23
    :cond_5
    :goto_1
    iget v2, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->f:F

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->a:Lcom/guochao/faceshow/aaspring/danmu/c;

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/danmu/c;->getSurfaceWidth()I

    move-result v4

    iget-object v5, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_6

    .line 24
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/danmu/b;->a()V

    .line 25
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->a:Lcom/guochao/faceshow/aaspring/danmu/c;

    invoke-interface {v2, v1}, Lcom/guochao/faceshow/aaspring/danmu/c;->c(Lcom/guochao/faceshow/aaspring/danmu/b;)V

    goto :goto_3

    .line 26
    :cond_6
    iget v2, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->f:F

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 28
    iget v4, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->m:I

    if-ne v4, v3, :cond_7

    .line 29
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->a:Lcom/guochao/faceshow/aaspring/danmu/c;

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/danmu/c;->getSurfaceWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v5, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->c:I

    add-int/2addr v2, v5

    iget v5, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->g:I

    sub-int/2addr v5, v3

    mul-int v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    .line 30
    :cond_7
    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->c:I

    add-int/2addr v4, v5

    iget v5, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->g:I

    sub-int/2addr v5, v3

    mul-int v4, v4, v5

    int-to-float v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    :goto_2
    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->h:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->a:Lcom/guochao/faceshow/aaspring/danmu/c;

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/danmu/c;->b(Landroid/graphics/Canvas;Ljava/util/List;)V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/danmu/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->d:Landroid/util/SparseArray;

    iget v1, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->a:Lcom/guochao/faceshow/aaspring/danmu/c;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/danmu/c;->getDanmuProvider()Lv7/b;

    move-result-object v1

    if-nez v0, :cond_0

    .line 3
    iget v0, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->a:I

    invoke-interface {v1, v0}, Lv7/b;->onCreateView(I)Landroid/view/View;

    move-result-object v0

    .line 4
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->d:Landroid/util/SparseArray;

    iget v3, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->a:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    :cond_0
    invoke-interface {v1, v0, p1}, Lv7/b;->onBindView(Landroid/view/View;Lcom/guochao/faceshow/aaspring/danmu/b;)V

    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 11
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 13
    iput-object v2, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->d:Landroid/graphics/Bitmap;

    .line 14
    iget-wide v3, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->c:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->c:J

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->a:Lcom/guochao/faceshow/aaspring/danmu/c;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/danmu/c;->getSurfaceWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->e:I

    .line 17
    iput-boolean v1, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->j:Z

    .line 18
    iput-boolean v1, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->h:Z

    int-to-float v0, v0

    .line 19
    iget v2, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->e:F

    div-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/guochao/faceshow/aaspring/danmu/b;->m(J)V

    .line 20
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/danmu/b;->d()J

    move-result-wide v2

    cmp-long v0, v2, v5

    if-nez v0, :cond_2

    .line 21
    iget-wide v2, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->c:J

    invoke-virtual {p1, v2, v3}, Lcom/guochao/faceshow/aaspring/danmu/b;->k(J)V

    .line 22
    :cond_2
    iget v0, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->g:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 23
    iput v0, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->g:I

    .line 24
    :cond_3
    iput-boolean v1, p1, Lcom/guochao/faceshow/aaspring/danmu/b;->i:Z

    return-void
.end method

.method public c(F)V
    .locals 1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->e:F

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->g:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/danmu/a;->g:Z

    return-void
.end method
