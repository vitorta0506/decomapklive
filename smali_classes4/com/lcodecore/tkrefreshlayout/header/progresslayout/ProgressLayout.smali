.class public Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lkc/b;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

.field private d:Llc/a;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->e:Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 6
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42200000    # 40.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    iput p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->a:I

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 7
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->b:I

    .line 8
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d()V

    const/4 p1, 0x1

    .line 9
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 2
    new-instance v0, Llc/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Llc/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    .line 3
    invoke-virtual {v0, v2}, Llc/a;->k(I)V

    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 7
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    invoke-virtual {p1, p2}, Llc/a;->setAlpha(I)V

    .line 4
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 5
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 6
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    invoke-virtual {p1, p2}, Llc/a;->j(F)V

    .line 7
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    invoke-virtual {p1}, Llc/a;->start()V

    return-void
.end method

.method public b(FFF)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    iput-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->e:Z

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p3, p1, p2

    if-ltz p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 3
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 5
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public c(FFF)V
    .locals 4

    .line 1
    iget-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->e:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->e:Z

    .line 3
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    const/16 p3, 0x4c

    invoke-virtual {p2, p3}, Llc/a;->setAlpha(I)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p3, p1, p2

    if-ltz p3, :cond_2

    .line 6
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p3, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 7
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p3, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p3, p1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 9
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p3, p1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    :goto_0
    cmpg-float p3, p1, p2

    if-gtz p3, :cond_3

    .line 10
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    const/high16 v0, 0x42980000    # 76.0f

    const/high16 v1, 0x43330000    # 179.0f

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p3, v0}, Llc/a;->setAlpha(I)V

    :cond_3
    float-to-double v0, p1

    const-wide v2, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 p3, 0x40a00000    # 5.0f

    mul-float p1, p1, p3

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p1, p3

    const p3, 0x3f4ccccd    # 0.8f

    mul-float v0, p1, p3

    .line 12
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    const/4 v2, 0x0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {v1, v2, p3}, Llc/a;->p(FF)V

    .line 13
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p3, p2}, Llc/a;->j(F)V

    const/high16 p2, -0x41800000    # -0.25f

    const p3, 0x3ecccccd    # 0.4f

    mul-float p1, p1, p3

    add-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    .line 14
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    invoke-virtual {p2, p1}, Llc/a;->m(F)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onFinish(Lkc/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;

    invoke-direct {v1, p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$a;-><init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;Lkc/c;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    invoke-virtual {v0}, Llc/a;->stop()V

    .line 3
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    invoke-virtual {v0, v1}, Llc/a;->setAlpha(I)V

    .line 6
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 7
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 8
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    invoke-virtual {v0, p1}, Llc/a;->l([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 4
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    invoke-virtual {v0, p1}, Llc/a;->k(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->a:I

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->b:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->a:I

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->b:I

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    invoke-virtual {v0, p1}, Llc/a;->s(I)V

    .line 6
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->c:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->d:Llc/a;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
