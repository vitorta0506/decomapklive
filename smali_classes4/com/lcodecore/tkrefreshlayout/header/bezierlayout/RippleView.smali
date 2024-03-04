.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;

.field d:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;I)I
    .locals 0

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->b:I

    return p1
.end method

.method static synthetic b(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;
    .locals 0

    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v0

    const/4 v0, 0x1

    .line 4
    div-int/lit8 v3, v1, 0x2

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    int-to-long v1, v1

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$a;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$b;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$b;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public getR()I
    .locals 1

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->b:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setR(I)V
    .locals 0

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->b:I

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->a:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setRippleEndListener(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->c:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$c;

    return-void
.end method
