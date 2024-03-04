.class public Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;
.super Lcom/scwang/smartrefresh/header/fungame/FunGameView;
.source "SourceFile"


# instance fields
.field protected J:F

.field protected K:F

.field protected L:F

.field protected M:Landroid/graphics/Paint;

.field protected N:F

.field protected O:F

.field protected P:F

.field protected Q:F

.field protected R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field protected V1:I

.field protected V2:I

.field protected a1:Z

.field protected a2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameHitBlockHeader:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameHitBlockHeader_fghBallSpeed:I

    const/high16 p3, 0x40400000    # 3.0f

    invoke-static {p3}, Lae/b;->b(F)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->V2:I

    .line 6
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->FunGameHitBlockHeader_fghBlockHorizontalNum:I

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->a2:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->M:Landroid/graphics/Paint;

    .line 9
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x40800000    # 4.0f

    .line 10
    invoke-static {p1}, Lae/b;->b(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->L:F

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->O:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->L:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->P:F

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->Q:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->B:F

    const/16 v0, 0x1e

    .line 4
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->V1:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->a1:Z

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->R:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->R:Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method protected B(FF)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->N:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->L:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->V2:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->K:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->a2:I

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 3
    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->J:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 4
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    const/4 p1, 0x0

    .line 6
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->R:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 7
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    :cond_3
    if-nez p1, :cond_4

    .line 8
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->R:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    xor-int/2addr p1, v2

    return p1
.end method

.method protected C(F)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->B:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected D(Landroid/graphics/Canvas;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->G:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->P:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->N:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->a2:I

    int-to-float v3, v2

    iget v4, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->K:F

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->L:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 3
    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->Q:F

    invoke-virtual {p0, v0, v1}, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->B(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->a1:Z

    .line 5
    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->P:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->N:F

    iget v5, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->L:F

    add-float/2addr v1, v5

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 6
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->a1:Z

    :cond_1
    add-float v1, v0, v5

    .line 7
    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->O:F

    const/4 v6, 0x2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    sub-float v1, v0, v5

    iget v5, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->K:F

    add-float/2addr v2, v5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 8
    iget p2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->Q:F

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->C(F)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->R:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->a2:I

    mul-int/lit8 v0, v0, 0x5

    if-ne p2, v0, :cond_2

    .line 10
    iput v6, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->D:I

    return-void

    .line 11
    :cond_2
    iput-boolean v3, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->a1:Z

    goto :goto_0

    :cond_3
    int-to-float p2, p2

    cmpl-float p2, v0, p2

    if-lez p2, :cond_4

    .line 12
    iput v6, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->D:I

    .line 13
    :cond_4
    :goto_0
    iget p2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->Q:F

    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->L:F

    add-float v1, v0, v4

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_5

    const/16 v0, 0x96

    .line 14
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->V1:I

    goto :goto_1

    .line 15
    :cond_5
    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->e:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    sub-float/2addr v1, v4

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_6

    const/16 v0, 0xd2

    .line 16
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->V1:I

    .line 17
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->a1:Z

    if-eqz v0, :cond_7

    .line 18
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->P:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->V2:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->P:F

    goto :goto_2

    .line 19
    :cond_7
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->P:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->V2:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->P:F

    .line 20
    :goto_2
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->V1:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->V2:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->Q:F

    .line 21
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->P:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->L:F

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected E(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->a2:I

    mul-int/lit8 v3, v2, 0x5

    if-ge v1, v3, :cond_3

    .line 2
    div-int v3, v1, v2

    .line 3
    rem-int v2, v1, v2

    .line 4
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->R:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .line 5
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->M:Landroid/graphics/Paint;

    iget v5, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->E:I

    const/16 v6, 0xff

    add-int/lit8 v7, v2, 0x1

    div-int/2addr v6, v7

    invoke-static {v5, v6}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget v4, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->N:F

    int-to-float v2, v2

    iget v5, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->K:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v7, v5, v6

    mul-float v2, v2, v7

    add-float v8, v4, v2

    int-to-float v2, v3

    .line 8
    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->J:F

    add-float v4, v3, v6

    mul-float v2, v2, v4

    add-float v9, v2, v6

    add-float v10, v8, v5

    add-float v11, v9, v3

    .line 9
    iget-object v12, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->M:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected F(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->F:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget v3, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->O:F

    iget v4, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->B:F

    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->K:F

    add-float v5, v3, v0

    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    int-to-float v0, v0

    add-float v6, v4, v0

    iget-object v7, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->z:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public g(Lwd/i;II)V
    .locals 3
    .param p1    # Lwd/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2
    div-int/lit8 v1, p2, 0x5

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->J:F

    int-to-float v0, v0

    const v2, 0x3c93f291    # 0.01806f

    mul-float v2, v2, v0

    .line 3
    iput v2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->K:F

    const v2, 0x3da3d70a    # 0.08f

    mul-float v2, v2, v0

    .line 4
    iput v2, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->N:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v2

    .line 5
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->O:F

    const v0, 0x3fcccccd    # 1.6f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 6
    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    .line 7
    invoke-super {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->g(Lwd/i;II)V

    return-void
.end method

.method protected w(Landroid/graphics/Canvas;II)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->E(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->F(Landroid/graphics/Canvas;)V

    .line 3
    iget p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->D:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameHitBlockHeader;->D(Landroid/graphics/Canvas;I)V

    :cond_1
    return-void
.end method
