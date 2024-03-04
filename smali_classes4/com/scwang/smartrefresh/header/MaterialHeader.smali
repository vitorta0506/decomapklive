.class public Lcom/scwang/smartrefresh/header/MaterialHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lwd/g;


# instance fields
.field protected d:Z

.field protected e:I

.field protected f:Landroid/widget/ImageView;

.field protected g:Lrd/a;

.field protected h:I

.field protected i:I

.field protected j:Landroid/graphics/Path;

.field protected k:Landroid/graphics/Paint;

.field protected l:Z

.field protected m:Lcom/scwang/smartrefresh/layout/constant/RefreshState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/MaterialHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/header/MaterialHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->l:Z

    .line 5
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->b:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/high16 v0, 0x42c80000    # 100.0f

    .line 6
    invoke-static {v0}, Lae/b;->b(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 7
    new-instance v0, Lrd/a;

    invoke-direct {v0, p0}, Lrd/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    const v1, -0x50506

    .line 8
    invoke-virtual {v0, v1}, Lrd/a;->e(I)V

    .line 9
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lrd/a;->setAlpha(I)V

    .line 10
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Lrd/a;->f([I)V

    .line 11
    new-instance v0, Lcom/scwang/smartrefresh/header/material/CircleImageView;

    invoke-direct {v0, p1, v1}, Lcom/scwang/smartrefresh/header/material/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 12
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 14
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 16
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->e:I

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->j:Landroid/graphics/Path;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->k:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->k:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    sget-object v0, Lcom/scwang/smartrefresh/header/R$styleable;->MaterialHeader:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 22
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->MaterialHeader_mhShowBezierWave:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->l:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->l:Z

    .line 23
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->k:Landroid/graphics/Paint;

    sget v0, Lcom/scwang/smartrefresh/header/R$styleable;->MaterialHeader_mhPrimaryColor:I

    const v3, -0xee4401

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->MaterialHeader_mhShadowRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 26
    sget p3, Lcom/scwang/smartrefresh/header/R$styleable;->MaterialHeader_mhShadowColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 27
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->k:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {v0, p2, v1, v1, p3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 p2, 0x0

    .line 28
    invoke-virtual {p0, v2, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        -0xff6634
        -0xbbbc
        -0x996700
        -0x559934
        -0x7800
    .end array-data
.end method


# virtual methods
.method public a(Lwd/j;II)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    invoke-virtual {p1}, Lrd/a;->start()V

    return-void
.end method

.method public c(Lwd/j;Z)I
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 2
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    invoke-virtual {p2}, Lrd/a;->stop()V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Z

    const/4 p1, 0x0

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->l:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->j:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->j:Landroid/graphics/Path;

    iget v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->i:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->j:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->i:I

    int-to-float v3, v3

    iget v4, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->h:I

    int-to-float v4, v4

    const v5, 0x3ff33333    # 1.9f

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->i:I

    int-to-float v5, v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->j:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->j:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public e(Lwd/j;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 2
    iput-object p3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->m:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 3
    sget-object p2, Lcom/scwang/smartrefresh/header/MaterialHeader$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Z

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void
.end method

.method public g(Lwd/i;II)V
    .locals 0
    .param p1    # Lwd/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->l:Z

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 2
    invoke-interface {p1, p0, p3}, Lwd/i;->h(Lwd/h;Z)Lwd/i;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->i:I

    iput p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->h:I

    :cond_1
    return-void
.end method

.method public o(ZFIII)V
    .locals 6

    .line 1
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->l:Z

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->i:I

    const/4 p2, 0x0

    sub-int p5, p3, p4

    .line 3
    invoke-static {p2, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->h:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    invoke-virtual {p1}, Lrd/a;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->d:Z

    if-nez p1, :cond_3

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->m:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/high16 p5, 0x40800000    # 4.0f

    const/high16 v0, 0x3f800000    # 1.0f

    if-eq p1, p2, :cond_2

    int-to-float p1, p3

    mul-float p1, p1, v0

    int-to-float p2, p4

    div-float/2addr p1, p2

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v1, p1

    const-wide v3, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v1, v3

    const-wide/16 v3, 0x0

    .line 8
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-float p1, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr p1, v1

    .line 9
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v1, p4

    int-to-float p4, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p2, v1

    .line 10
    invoke-static {p4, v2}, Ljava/lang/Math;->min(FF)F

    move-result p4

    div-float/2addr p4, p2

    const/4 p2, 0x0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    div-float/2addr p4, p5

    float-to-double v2, p4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 11
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float p4, v2

    mul-float p4, p4, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v3, p1, v2

    .line 12
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lrd/a;->l(Z)V

    .line 13
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v4, p2, v2}, Lrd/a;->j(FF)V

    .line 14
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p2, v2}, Lrd/a;->d(F)V

    const/high16 p2, -0x41800000    # -0.25f

    const v2, 0x3ecccccd    # 0.4f

    mul-float p1, p1, v2

    add-float/2addr p1, p2

    mul-float p4, p4, v1

    add-float/2addr p1, p4

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    .line 15
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    invoke-virtual {p2, p1}, Lrd/a;->g(F)V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 17
    div-int/lit8 p2, p3, 0x2

    iget p4, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->e:I

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    int-to-float p2, p2

    int-to-float p3, p3

    .line 18
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    mul-float p3, p3, p5

    .line 19
    iget p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->e:I

    int-to-float p2, p2

    div-float/2addr p3, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    iget p5, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->i:I

    if-lez p5, :cond_1

    .line 7
    div-int/lit8 v1, p4, 0x2

    sub-int/2addr p5, v1

    .line 8
    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p3, 0x2

    sub-int v1, p2, p3

    add-int/2addr p2, p3

    add-int/2addr p4, p5

    invoke-virtual {p1, v1, p5, p2, p4}, Landroid/view/View;->layout(IIII)V

    .line 9
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lrd/a;->l(Z)V

    .line 10
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    const/4 p3, 0x0

    const p4, 0x3f4ccccd    # 0.8f

    invoke-virtual {p2, p3, p4}, Lrd/a;->j(FF)V

    .line 11
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->g:Lrd/a;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Lrd/a;->d(F)V

    .line 12
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_1
    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p3, 0x2

    sub-int p5, p2, p3

    neg-int p4, p4

    add-int/2addr p2, p3

    invoke-virtual {p1, p5, p4, p2, v0}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->f:Landroid/widget/ImageView;

    .line 3
    iget p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->e:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->e:I

    .line 4
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
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

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->k:Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
