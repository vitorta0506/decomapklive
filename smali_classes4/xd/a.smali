.class public Lxd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/e;
.implements Lzd/a;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Landroid/view/View;

.field protected f:I

.field protected g:Z

.field protected h:Z

.field protected i:Lxd/b;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lxd/a;->f:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lxd/a;->g:Z

    .line 4
    iput-boolean v0, p0, Lxd/a;->h:Z

    .line 5
    new-instance v0, Lxd/b;

    invoke-direct {v0}, Lxd/b;-><init>()V

    iput-object v0, p0, Lxd/a;->i:Lxd/b;

    .line 6
    iput-object p1, p0, Lxd/a;->c:Landroid/view/View;

    iput-object p1, p0, Lxd/a;->b:Landroid/view/View;

    iput-object p1, p0, Lxd/a;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2
    iget-object p1, p0, Lxd/a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v1, p0, Lxd/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 3
    iget-object p1, p0, Lxd/a;->c:Landroid/view/View;

    iget-object v1, p0, Lxd/a;->a:Landroid/view/View;

    if-eq p1, v1, :cond_0

    .line 4
    invoke-virtual {p0, v1, v0, p1}, Lxd/a;->j(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lxd/a;->c:Landroid/view/View;

    .line 5
    :cond_0
    iget-object p1, p0, Lxd/a;->c:Landroid/view/View;

    iget-object v1, p0, Lxd/a;->a:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lxd/a;->i:Lxd/b;

    const/4 v0, 0x0

    iput-object v0, p1, Lxd/b;->a:Landroid/graphics/PointF;

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lxd/a;->i:Lxd/b;

    iput-object v0, p1, Lxd/b;->a:Landroid/graphics/PointF;

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lxd/a;->i:Lxd/b;

    iput-boolean p1, v0, Lxd/b;->c:Z

    return-void
.end method

.method public c(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lxd/a;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-gez p1, :cond_0

    .line 2
    invoke-static {v0}, Lae/d;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-object v0, p0, Lxd/a;->c:Landroid/view/View;

    invoke-static {v0}, Lae/d;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iput p1, p0, Lxd/a;->f:I

    return-object p0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public canLoadMore()Z
    .locals 2

    iget-boolean v0, p0, Lxd/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxd/a;->i:Lxd/b;

    iget-object v1, p0, Lxd/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lxd/b;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canRefresh()Z
    .locals 2

    iget-boolean v0, p0, Lxd/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxd/a;->i:Lxd/b;

    iget-object v1, p0, Lxd/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lxd/b;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lxd/a;->c:Landroid/view/View;

    return-object v0
.end method

.method public e(Lwd/k;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lxd/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lxd/b;

    iput-object p1, p0, Lxd/a;->i:Lxd/b;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lxd/a;->i:Lxd/b;

    iput-object p1, v0, Lxd/b;->b:Lwd/k;

    :goto_0
    return-void
.end method

.method public f(III)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p2, v1, :cond_1

    .line 1
    iget-object v4, p0, Lxd/a;->b:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    if-lez p1, :cond_0

    int-to-float v4, p1

    .line 2
    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_1

    .line 4
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eq p3, v1, :cond_3

    .line 5
    iget-object v1, p0, Lxd/a;->b:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    if-gez p1, :cond_2

    int-to-float p2, p1

    .line 6
    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 8
    invoke-virtual {p3, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    move v0, p2

    :goto_1
    if-nez v0, :cond_4

    .line 9
    iget-object p2, p0, Lxd/a;->b:Landroid/view/View;

    int-to-float p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 10
    :cond_4
    iget-object p2, p0, Lxd/a;->b:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 11
    :goto_2
    iget-object p2, p0, Lxd/a;->d:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 12
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 13
    :cond_5
    iget-object p2, p0, Lxd/a;->e:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 14
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    return-void
.end method

.method public g(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lxd/a;->g:Z

    .line 2
    iput-boolean p2, p0, Lxd/a;->h:Z

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lxd/a;->a:Landroid/view/View;

    return-object v0
.end method

.method public h(Lwd/i;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lxd/a;->a:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lxd/a;->i(Landroid/view/View;Lwd/i;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    .line 2
    :cond_0
    iput-object p2, p0, Lxd/a;->d:Landroid/view/View;

    .line 3
    iput-object p3, p0, Lxd/a;->e:Landroid/view/View;

    .line 4
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lxd/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-interface {p1}, Lwd/i;->k()Lwd/j;

    move-result-object v1

    invoke-interface {v1}, Lwd/j;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lxd/a;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    iget-object v1, p0, Lxd/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lxd/a;->a:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 8
    invoke-interface {p1}, Lwd/i;->k()Lwd/j;

    move-result-object p1

    invoke-interface {p1}, Lwd/j;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iput-object v0, p0, Lxd/a;->a:Landroid/view/View;

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 14
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    invoke-static {p2}, Lae/e;->d(Landroid/view/View;)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    new-instance v4, Landroidx/legacy/widget/Space;

    iget-object v5, p0, Lxd/a;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 18
    invoke-virtual {p3, p1}, Landroid/view/View;->setClickable(Z)V

    .line 19
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 22
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-static {p3}, Lae/e;->d(Landroid/view/View;)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    new-instance v3, Landroidx/legacy/widget/Space;

    iget-object v4, p0, Lxd/a;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x50

    .line 26
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 27
    invoke-virtual {v0, p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method protected i(Landroid/view/View;Lwd/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lxd/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 2
    instance-of v2, v1, Landroidx/core/view/NestedScrollingParent;

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroidx/core/view/NestedScrollingChild;

    if-nez v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_1
    invoke-virtual {p0, p1, v2}, Lxd/a;->k(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p1

    if-ne p1, v1, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    .line 4
    iput-object v1, p0, Lxd/a;->c:Landroid/view/View;

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_5

    .line 5
    invoke-static {p1, p2, p0}, Lae/c;->a(Landroid/view/View;Lwd/i;Lzd/a;)V

    :cond_5
    move-object v1, p1

    goto :goto_0
.end method

.method protected j(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v2, v3, v4, v1}, Lae/d;->e(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    instance-of p1, v2, Landroidx/viewpager/widget/ViewPager;

    if-nez p1, :cond_0

    invoke-static {v2}, Lae/e;->b(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    :cond_0
    iget p1, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 9
    invoke-virtual {p0, v2, p2, p3}, Lxd/a;->j(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 10
    iget p1, v1, Landroid/graphics/PointF;->x:F

    neg-float p1, p1

    iget p3, v1, Landroid/graphics/PointF;->y:F

    neg-float p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/graphics/PointF;->offset(FF)V

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object p3
.end method

.method protected k(Landroid/view/View;Z)Landroid/view/View;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    if-eq v2, p1, :cond_2

    .line 4
    :cond_1
    invoke-static {v2}, Lae/e;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    goto :goto_0

    .line 5
    :cond_2
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 6
    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 7
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    return-object p1
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lxd/a;->c:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/widget/AbsListView;

    iget v1, p0, Lxd/a;->f:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Lae/e;->e(Landroid/widget/AbsListView;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lxd/a;->f:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollBy(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catchall_0
    :goto_0
    iput p1, p0, Lxd/a;->f:I

    return-void
.end method
