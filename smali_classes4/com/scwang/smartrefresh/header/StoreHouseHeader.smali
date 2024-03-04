.class public Lcom/scwang/smartrefresh/header/StoreHouseHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lwd/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltd/a;",
            ">;"
        }
    .end annotation
.end field

.field protected e:I

.field protected f:F

.field protected g:I

.field protected h:I

.field protected i:F

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:I

.field protected r:Z

.field protected s:Z

.field protected t:Landroid/graphics/Matrix;

.field protected u:Lwd/i;

.field protected v:Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;

.field protected w:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    const/4 p3, -0x1

    .line 5
    iput p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->e:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->f:F

    .line 7
    iput p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->g:I

    .line 8
    iput p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->h:I

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->i:F

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->j:I

    .line 11
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->k:I

    .line 12
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->l:I

    .line 13
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->m:I

    const/16 v2, 0x3e8

    .line 14
    iput v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->n:I

    .line 15
    iput v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->o:I

    .line 16
    iput p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->p:I

    .line 17
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->q:I

    .line 18
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->r:Z

    .line 19
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->s:Z

    .line 20
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->t:Landroid/graphics/Matrix;

    .line 21
    new-instance p3, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;-><init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;Lcom/scwang/smartrefresh/header/StoreHouseHeader$a;)V

    iput-object p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->v:Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;

    .line 22
    new-instance p3, Landroid/view/animation/Transformation;

    invoke-direct {p3}, Landroid/view/animation/Transformation;-><init>()V

    iput-object p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->w:Landroid/view/animation/Transformation;

    .line 23
    new-instance p3, Lae/b;

    invoke-direct {p3}, Lae/b;-><init>()V

    .line 24
    invoke-virtual {p3, v0}, Lae/b;->a(F)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->e:I

    const/high16 v0, 0x42200000    # 40.0f

    .line 25
    invoke-virtual {p3, v0}, Lae/b;->a(F)I

    move-result p3

    iput p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->g:I

    .line 26
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->h:I

    const p3, -0xcccccd

    .line 27
    iput p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->q:I

    const p3, -0x333334

    .line 28
    invoke-virtual {p0, p3}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->u(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    .line 29
    sget-object p3, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhLineWidth:I

    iget p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->e:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->e:I

    .line 31
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhDropHeight:I

    iget p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->g:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->g:I

    .line 32
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhEnableFadeAnimation:I

    iget-boolean p3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->s:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->s:Z

    .line 33
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->s(Ljava/lang/String;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    goto :goto_0

    :cond_0
    const-string p2, "StoreHouse"

    .line 35
    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->s(Ljava/lang/String;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    .line 36
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    iget p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->k:I

    invoke-static {v0}, Lae/b;->b(F)I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public a(Lwd/j;II)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->r:Z

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->v:Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;

    invoke-static {p1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->b(Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c(Lwd/j;Z)I
    .locals 2
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->r:Z

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->v:Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;

    invoke-static {v0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;->c(Lcom/scwang/smartrefresh/header/StoreHouseHeader$b;)V

    if-eqz p2, :cond_0

    .line 3
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->s:Z

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lcom/scwang/smartrefresh/header/StoreHouseHeader$a;

    invoke-direct {p1, p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$a;-><init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 p1, 0xfa

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltd/a;

    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->h:I

    invoke-virtual {v0, v1}, Ltd/a;->b(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->i:F

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_6

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltd/a;

    .line 6
    iget v6, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->l:I

    int-to-float v6, v6

    iget-object v7, v5, Ltd/a;->a:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v8

    .line 7
    iget v8, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->m:I

    int-to-float v8, v8

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v7

    .line 8
    iget-boolean v7, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->r:Z

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v9

    iget-object v7, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->w:Landroid/view/animation/Transformation;

    invoke-virtual {v5, v9, v10, v7}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 10
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4

    :cond_1
    const/4 v7, 0x0

    cmpl-float v9, v2, v7

    if-nez v9, :cond_2

    .line 11
    iget v6, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->h:I

    invoke-virtual {v5, v6}, Ltd/a;->b(I)V

    goto :goto_5

    :cond_2
    int-to-float v9, v4

    const v10, 0x3e99999a    # 0.3f

    mul-float v9, v9, v10

    int-to-float v11, v1

    div-float/2addr v9, v11

    sub-float/2addr v10, v9

    const v11, 0x3ecccccd    # 0.4f

    cmpl-float v12, v2, v3

    if-eqz v12, :cond_5

    sub-float v10, v3, v10

    cmpl-float v10, v2, v10

    if-ltz v10, :cond_3

    goto :goto_3

    :cond_3
    cmpg-float v10, v2, v9

    if-gtz v10, :cond_4

    goto :goto_2

    :cond_4
    sub-float v7, v2, v9

    const v9, 0x3f333333    # 0.7f

    div-float/2addr v7, v9

    .line 12
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 13
    :goto_2
    iget v9, v5, Ltd/a;->b:F

    sub-float v10, v3, v7

    mul-float v9, v9, v10

    add-float/2addr v6, v9

    .line 14
    iget v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->g:I

    neg-int v9, v9

    int-to-float v9, v9

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    .line 15
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->t:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 16
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->t:Landroid/graphics/Matrix;

    const/high16 v10, 0x43b40000    # 360.0f

    mul-float v10, v10, v7

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 17
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->t:Landroid/graphics/Matrix;

    invoke-virtual {v9, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 18
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->t:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-float v7, v7, v11

    .line 19
    invoke-virtual {v5, v7}, Ltd/a;->d(F)V

    .line 20
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->t:Landroid/graphics/Matrix;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_4

    .line 21
    :cond_5
    :goto_3
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 22
    invoke-virtual {v5, v11}, Ltd/a;->d(F)V

    .line 23
    :goto_4
    invoke-virtual {v5, p1}, Ltd/a;->a(Landroid/graphics/Canvas;)V

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 25
    :cond_6
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->r:Z

    if-eqz v1, :cond_7

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 28
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public g(Lwd/i;II)V
    .locals 0
    .param p1    # Lwd/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->u:Lwd/i;

    .line 2
    iget p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->q:I

    invoke-interface {p1, p0, p2}, Lwd/i;->j(Lwd/h;I)Lwd/i;

    return-void
.end method

.method public o(ZFIII)V
    .locals 0

    const p1, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, p1

    .line 1
    iput p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->i:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 2
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->j:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->l:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->k:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->m:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->g:I

    return-void
.end method

.method public r(Ljava/util/List;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)",
            "Lcom/scwang/smartrefresh/header/StoreHouseHeader;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3
    new-instance v3, Lae/b;

    invoke-direct {v3}, Lae/b;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 4
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v12, v6, :cond_1

    .line 5
    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 6
    new-instance v8, Landroid/graphics/PointF;

    aget v7, v6, v2

    invoke-virtual {v3, v7}, Lae/b;->a(F)I

    move-result v7

    int-to-float v7, v7

    iget v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->f:F

    mul-float v7, v7, v9

    aget v9, v6, v1

    invoke-virtual {v3, v9}, Lae/b;->a(F)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->f:F

    mul-float v9, v9, v10

    invoke-direct {v8, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7
    new-instance v9, Landroid/graphics/PointF;

    const/4 v7, 0x2

    aget v7, v6, v7

    invoke-virtual {v3, v7}, Lae/b;->a(F)I

    move-result v7

    int-to-float v7, v7

    iget v10, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->f:F

    mul-float v7, v7, v10

    const/4 v10, 0x3

    aget v6, v6, v10

    invoke-virtual {v3, v6}, Lae/b;->a(F)I

    move-result v6

    int-to-float v6, v6

    iget v10, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->f:F

    mul-float v6, v6, v10

    invoke-direct {v9, v7, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8
    iget v6, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 9
    iget v6, v9, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 10
    iget v6, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 11
    iget v6, v9, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 12
    new-instance v13, Ltd/a;

    iget v10, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->p:I

    iget v11, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->e:I

    move-object v6, v13

    move v7, v12

    invoke-direct/range {v6 .. v11}, Ltd/a;-><init>(ILandroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 13
    iget v6, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->h:I

    invoke-virtual {v13, v6}, Ltd/a;->b(I)V

    .line 14
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    float-to-double v1, v4

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->j:I

    float-to-double v1, v5

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->k:I

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 1

    const/16 v0, 0x19

    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->t(Ljava/lang/String;I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    return-object p0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->q:I

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->u:Lwd/i;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p0, v0}, Lwd/i;->j(Lwd/h;I)Lwd/i;

    .line 5
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 6
    aget p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->u(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    :cond_1
    return-void
.end method

.method public t(Ljava/lang/String;I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 1

    int-to-float p2, p2

    const v0, 0x3c23d70a    # 0.01f

    mul-float p2, p2, v0

    const/16 v0, 0xe

    .line 1
    invoke-static {p1, p2, v0}, Ltd/b;->a(Ljava/lang/String;FI)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->r(Ljava/util/List;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    return-object p0
.end method

.method public u(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->p:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltd/a;

    invoke-virtual {v1, p1}, Ltd/a;->e(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
