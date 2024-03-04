.class public Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lwd/f;


# instance fields
.field protected d:Z

.field protected e:Z

.field protected f:Landroid/graphics/Paint;

.field protected g:I

.field protected h:I

.field protected i:F

.field protected j:[F

.field protected k:Z

.field protected l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/animation/ValueAnimator;",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, -0x111112

    .line 4
    iput p3, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->g:I

    const p3, -0x18a6ba

    .line 5
    iput p3, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->h:I

    const/4 p3, 0x3

    new-array v0, p3, [F

    .line 6
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->j:[F

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->k:Z

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->m:Ljava/util/Map;

    const/high16 v1, 0x42700000    # 60.0f

    .line 9
    invoke-static {v1}, Lae/b;->b(F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 10
    sget-object v1, Lcom/scwang/smartrefresh/layout/R$styleable;->BallPulseFooter:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->f:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 12
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->f:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 16
    invoke-static {}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values()[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p2

    sget v2, Lcom/scwang/smartrefresh/layout/R$styleable;->BallPulseFooter_srlClassicsSpinnerStyle:I

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object p2, p2, v2

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 17
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BallPulseFooter_srlNormalColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->s(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    .line 19
    :cond_0
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BallPulseFooter_srlAnimatingColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->r(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p1, 0x40800000    # 4.0f

    .line 22
    invoke-static {p1}, Lae/b;->b(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->i:F

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->l:Ljava/util/ArrayList;

    new-array p1, p3, [I

    .line 24
    fill-array-data p1, :array_1

    :goto_0
    if-ge v0, p3, :cond_2

    new-array p2, p3, [F

    .line 25
    fill-array-data p2, :array_2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v2, 0x2ee

    .line 26
    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 29
    aget v2, p1, v0

    int-to-long v2, v2

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 30
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->m:Ljava/util/Map;

    new-instance v3, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter$a;

    invoke-direct {v3, p0, v0, p0}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter$a;-><init>(Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;ILandroid/view/View;)V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x78
        0xf0
        0x168
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public b(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Lwd/j;Z)I
    .locals 1
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->l:Ljava/util/ArrayList;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->k:Z

    if-eqz v0, :cond_1

    .line 2
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->k:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->j:[F

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->f:Landroid/graphics/Paint;

    iget v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->g:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return p2

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->i:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v2, v5

    .line 4
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v4, v4, v2

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 5
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v3, v5, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, v3

    mul-float v6, v4, v5

    add-float/2addr v6, v0

    .line 7
    iget v7, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->i:F

    mul-float v7, v7, v5

    add-float/2addr v6, v7

    .line 8
    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->j:[F

    aget v6, v5, v3

    aget v5, v5, v3

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 10
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->f:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public k(Lwd/j;II)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->k:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->l:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->l:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/ValueAnimator;

    .line 4
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->m:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->k:Z

    .line 8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->f:Landroid/graphics/Paint;

    iget p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->h:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 5
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->h:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->e:Z

    .line 3
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->k:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public s(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->g:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->d:Z

    .line 3
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->k:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->e:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 2
    aget v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->r(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    .line 3
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->e:Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->d:Z

    if-nez v0, :cond_3

    .line 5
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 6
    aget p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->s(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    goto :goto_0

    .line 7
    :cond_1
    array-length v0, p1

    if-lez v0, :cond_2

    const v0, -0x66000001

    .line 8
    aget p1, p1, v2

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->s(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    .line 9
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->d:Z

    :cond_3
    return-void
.end method
