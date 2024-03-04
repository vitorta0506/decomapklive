.class public Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lkc/a;


# instance fields
.field private a:F

.field private b:[F

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/animation/ValueAnimator;",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 4
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->b:[F

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->d:Ljava/util/Map;

    const p2, -0x111112

    .line 6
    iput p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->f:I

    const p2, -0x18a6ba

    .line 7
    iput p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->g:I

    const/high16 p2, 0x42480000    # 50.0f

    .line 8
    invoke-static {p1, p2}, Lnc/a;->a(Landroid/content/Context;F)I

    move-result p2

    .line 9
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p3, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 10
    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p2, 0x40800000    # 4.0f

    .line 11
    invoke-static {p1, p2}, Lnc/a;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->a:F

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 13
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic d(Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;)[F
    .locals 0

    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->b:[F

    return-object p0
.end method

.method private e()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-array v3, v0, [F

    .line 3
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x2ee

    .line 4
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    .line 5
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 6
    aget v4, v1, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 7
    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->d:Ljava/util/Map;

    new-instance v5, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView$a;

    invoke-direct {v5, p0, v2}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView$a;-><init>(Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;I)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x78
        0xf0
        0x168
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->g()V

    return-void
.end method

.method public b(FFF)V
    .locals 0

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->h()V

    return-void
.end method

.method public c(FFF)V
    .locals 0

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->h()V

    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 5
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 6
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    :cond_3
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_4
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->g:I

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->setIndicatorColor(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 5
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->f:I

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->setIndicatorColor(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->a:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v2, v2, v0

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->a:F

    add-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, v4

    mul-float v6, v2, v5

    add-float/2addr v6, v1

    .line 5
    iget v7, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->a:F

    mul-float v7, v7, v5

    add-float/2addr v6, v7

    .line 6
    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->b:[F

    aget v6, v5, v4

    aget v5, v5, v4

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 8
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 0

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->h()V

    return-void
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->h()V

    return-void
.end method

.method public setAnimatingColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->g:I

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->f:I

    return-void
.end method
