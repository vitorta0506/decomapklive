.class public Lhd/d;
.super Lhd/b;
.source "SourceFile"


# instance fields
.field private g:Lgd/c;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Led/b$a;)V
    .locals 0
    .param p1    # Led/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lhd/b;-><init>(Led/b$a;)V

    .line 2
    new-instance p1, Lgd/c;

    invoke-direct {p1}, Lgd/c;-><init>()V

    iput-object p1, p0, Lhd/d;->g:Lgd/c;

    return-void
.end method

.method private j(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ANIMATION_COLOR"

    .line 1
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "ANIMATION_COLOR_REVERSE"

    .line 2
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "ANIMATION_RADIUS"

    .line 3
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "ANIMATION_RADIUS_REVERSE"

    .line 4
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "ANIMATION_STROKE"

    .line 5
    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "ANIMATION_STROKE_REVERSE"

    .line 6
    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    iget-object v5, p0, Lhd/d;->g:Lgd/c;

    invoke-virtual {v5, v0}, Lgd/a;->c(I)V

    .line 8
    iget-object v0, p0, Lhd/d;->g:Lgd/c;

    invoke-virtual {v0, v1}, Lgd/a;->d(I)V

    .line 9
    iget-object v0, p0, Lhd/d;->g:Lgd/c;

    invoke-virtual {v0, v2}, Lgd/c;->i(I)V

    .line 10
    iget-object v0, p0, Lhd/d;->g:Lgd/c;

    invoke-virtual {v0, v3}, Lgd/c;->j(I)V

    .line 11
    iget-object v0, p0, Lhd/d;->g:Lgd/c;

    invoke-virtual {v0, v4}, Lgd/c;->k(I)V

    .line 12
    iget-object v0, p0, Lhd/d;->g:Lgd/c;

    invoke-virtual {v0, p1}, Lgd/c;->l(I)V

    .line 13
    iget-object p1, p0, Lhd/a;->b:Led/b$a;

    if-eqz p1, :cond_0

    .line 14
    iget-object v0, p0, Lhd/d;->g:Lgd/c;

    invoke-interface {p1, v0}, Led/b$a;->a(Lfd/a;)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lhd/d;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lhd/d;->j(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private n(Z)Landroid/animation/PropertyValuesHolder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lhd/d;->h:I

    div-int/lit8 v0, p1, 0x2

    const-string v1, "ANIMATION_RADIUS_REVERSE"

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lhd/d;->h:I

    .line 3
    div-int/lit8 p1, v0, 0x2

    const-string v1, "ANIMATION_RADIUS"

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p1, v2, v0

    .line 4
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object p1
.end method

.method private o(Z)Landroid/animation/PropertyValuesHolder;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lhd/d;->h:I

    const-string v1, "ANIMATION_STROKE_REVERSE"

    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lhd/d;->h:I

    const-string v1, "ANIMATION_STROKE"

    move-object v2, v1

    move v1, p1

    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v0

    const/4 p1, 0x1

    aput v1, v3, p1

    .line 3
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 4
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object p1
.end method

.method private p(IIII)Z
    .locals 2

    .line 1
    iget v0, p0, Lhd/b;->e:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget p1, p0, Lhd/b;->f:I

    if-eq p1, p2, :cond_1

    return v1

    .line 3
    :cond_1
    iget p1, p0, Lhd/d;->h:I

    if-eq p1, p3, :cond_2

    return v1

    .line 4
    :cond_2
    iget p1, p0, Lhd/d;->i:I

    if-eq p1, p4, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public bridge synthetic a()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lhd/d;->g()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/animation/ValueAnimator;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v1, 0x15e

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance v1, Lhd/d$a;

    invoke-direct {v1, p0}, Lhd/d$a;-><init>(Lhd/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public q(IIII)Lhd/d;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lhd/a;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lhd/d;->p(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lhd/b;->e:I

    .line 3
    iput p2, p0, Lhd/b;->f:I

    .line 4
    iput p3, p0, Lhd/d;->h:I

    .line 5
    iput p4, p0, Lhd/d;->i:I

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lhd/b;->h(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 p3, 0x1

    .line 7
    invoke-virtual {p0, p3}, Lhd/b;->h(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 8
    invoke-direct {p0, p1}, Lhd/d;->n(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 9
    invoke-direct {p0, p3}, Lhd/d;->n(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 10
    invoke-direct {p0, p1}, Lhd/d;->o(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 11
    invoke-direct {p0, p3}, Lhd/d;->o(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lhd/a;->c:Landroid/animation/Animator;

    check-cast v4, Landroid/animation/ValueAnimator;

    const/4 v5, 0x6

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v5, p1

    aput-object p4, v5, p3

    const/4 p1, 0x2

    aput-object v0, v5, p1

    const/4 p1, 0x3

    aput-object v1, v5, p1

    const/4 p1, 0x4

    aput-object v2, v5, p1

    const/4 p1, 0x5

    aput-object v3, v5, p1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_0
    return-object p0
.end method
