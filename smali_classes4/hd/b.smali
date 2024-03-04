.class public Lhd/b;
.super Lhd/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhd/a<",
        "Landroid/animation/ValueAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lgd/a;

.field e:I

.field f:I


# direct methods
.method public constructor <init>(Led/b$a;)V
    .locals 0
    .param p1    # Led/b$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lhd/a;-><init>(Led/b$a;)V

    .line 2
    new-instance p1, Lgd/a;

    invoke-direct {p1}, Lgd/a;-><init>()V

    iput-object p1, p0, Lhd/b;->d:Lgd/a;

    return-void
.end method

.method static synthetic f(Lhd/b;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lhd/b;->j(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private i(II)Z
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

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private j(Landroid/animation/ValueAnimator;)V
    .locals 2
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

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v1, p0, Lhd/b;->d:Lgd/a;

    invoke-virtual {v1, v0}, Lgd/a;->c(I)V

    .line 4
    iget-object v0, p0, Lhd/b;->d:Lgd/a;

    invoke-virtual {v0, p1}, Lgd/a;->d(I)V

    .line 5
    iget-object p1, p0, Lhd/a;->b:Led/b$a;

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lhd/b;->d:Lgd/a;

    invoke-interface {p1, v0}, Led/b$a;->a(Lfd/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lhd/b;->g()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(F)Lhd/a;
    .locals 0

    invoke-virtual {p0, p1}, Lhd/b;->k(F)Lhd/b;

    move-result-object p1

    return-object p1
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
    new-instance v1, Lhd/b$a;

    invoke-direct {v1, p0}, Lhd/b$a;-><init>(Lhd/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method h(Z)Landroid/animation/PropertyValuesHolder;
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lhd/b;->f:I

    .line 2
    iget v0, p0, Lhd/b;->e:I

    const-string v1, "ANIMATION_COLOR_REVERSE"

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lhd/b;->e:I

    .line 4
    iget v0, p0, Lhd/b;->f:I

    const-string v1, "ANIMATION_COLOR"

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput v0, v2, p1

    .line 5
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object p1
.end method

.method public k(F)Lhd/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lhd/a;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lhd/a;->a:J

    long-to-float v1, v1

    mul-float p1, p1, v1

    float-to-long v1, p1

    .line 3
    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhd/a;->c:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lhd/a;->c:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-object p0
.end method

.method public l(II)Lhd/b;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lhd/a;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lhd/b;->i(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lhd/b;->e:I

    .line 3
    iput p2, p0, Lhd/b;->f:I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lhd/b;->h(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lhd/b;->h(Z)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lhd/a;->c:Landroid/animation/Animator;

    check-cast v2, Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v3, p1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_0
    return-object p0
.end method
