.class public Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lkc/b;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:I

.field private d:I

.field e:F

.field f:F

.field g:Z

.field h:Landroid/animation/ValueAnimator;

.field i:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 4
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->c:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->g:Z

    .line 6
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d()V

    return-void
.end method

.method private d()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lnc/a;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    const/16 v1, 0x72

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x320

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$a;

    invoke-direct {v4, p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 10
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-array v0, v0, [F

    .line 11
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    .line 12
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$b;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$b;-><init>(Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 16
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->g:Z

    .line 2
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 3
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public b(FFF)V
    .locals 0

    const/high16 p2, 0x40000000    # 2.0f

    div-float p2, p1, p2

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    .line 1
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    cmpg-float p1, p1, p3

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->g:Z

    .line 4
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public c(FFF)V
    .locals 0

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->g:Z

    .line 4
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->c:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->c:I

    if-ge v1, v2, :cond_b

    .line 4
    iget-boolean v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->g:Z

    const/16 v3, 0xff

    const/4 v4, 0x4

    const/16 v5, 0x91

    const/16 v6, 0x69

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v9, :cond_2

    if-eq v1, v8, :cond_1

    if-eq v1, v4, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/guochao/twink/R$color;->Yellow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    div-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->f:F

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/guochao/twink/R$color;->Orange:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->f:F

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 12
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/guochao/twink/R$color;->Blue:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->e:F

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 14
    :cond_3
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 15
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/guochao/twink/R$color;->Green:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    mul-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->f:F

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 17
    :cond_4
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/guochao/twink/R$color;->Yellow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    div-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->f:F

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_5
    if-eqz v1, :cond_a

    if-eq v1, v7, :cond_9

    if-eq v1, v9, :cond_8

    if-eq v1, v8, :cond_7

    if-eq v1, v4, :cond_6

    goto/16 :goto_1

    .line 20
    :cond_6
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/guochao/twink/R$color;->Yellow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    div-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 23
    :cond_7
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 24
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/guochao/twink/R$color;->Orange:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 26
    :cond_8
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 27
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/guochao/twink/R$color;->Blue:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 29
    :cond_9
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 30
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/guochao/twink/R$color;->Green:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    mul-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 32
    :cond_a
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 33
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/guochao/twink/R$color;->Yellow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    div-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->b:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public onFinish(Lkc/c;)V
    .locals 0

    invoke-interface {p1}, Lkc/c;->a()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->g:Z

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCir_x(I)V
    .locals 0

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->d:I

    return-void
.end method
