.class public Lhd/j;
.super Lhd/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhd/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhd/a<",
        "Landroid/animation/AnimatorSet;",
        ">;"
    }
.end annotation


# instance fields
.field d:I

.field e:I

.field f:I

.field g:Z

.field h:I

.field i:I

.field private j:Lgd/h;


# direct methods
.method public constructor <init>(Led/b$a;)V
    .locals 0
    .param p1    # Led/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lhd/a;-><init>(Led/b$a;)V

    .line 2
    new-instance p1, Lgd/h;

    invoke-direct {p1}, Lgd/h;-><init>()V

    iput-object p1, p0, Lhd/j;->j:Lgd/h;

    return-void
.end method

.method static synthetic f(Lhd/j;Lgd/h;Landroid/animation/ValueAnimator;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lhd/j;->l(Lgd/h;Landroid/animation/ValueAnimator;Z)V

    return-void
.end method

.method private l(Lgd/h;Landroid/animation/ValueAnimator;Z)V
    .locals 1
    .param p1    # Lgd/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2
    iget-boolean v0, p0, Lhd/j;->g:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lgd/h;->c(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Lgd/h;->d(I)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 5
    invoke-virtual {p1, p2}, Lgd/h;->d(I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1, p2}, Lgd/h;->c(I)V

    .line 7
    :goto_0
    iget-object p2, p0, Lhd/a;->b:Led/b$a;

    if-eqz p2, :cond_3

    .line 8
    invoke-interface {p2, p1}, Led/b$a;->a(Lfd/a;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lhd/j;->g()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(F)Lhd/a;
    .locals 0

    invoke-virtual {p0, p1}, Lhd/j;->m(F)Lhd/j;

    move-result-object p1

    return-object p1
.end method

.method public g()Landroid/animation/AnimatorSet;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method h(Z)Lhd/j$b;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lhd/j;->d:I

    iget v0, p0, Lhd/j;->f:I

    add-int v1, p1, v0

    .line 2
    iget v2, p0, Lhd/j;->e:I

    add-int v3, v2, v0

    sub-int/2addr p1, v0

    sub-int/2addr v2, v0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lhd/j;->d:I

    iget v0, p0, Lhd/j;->f:I

    sub-int v1, p1, v0

    .line 4
    iget v2, p0, Lhd/j;->e:I

    sub-int v3, v2, v0

    add-int/2addr p1, v0

    add-int/2addr v2, v0

    :goto_0
    move v8, p1

    move v6, v1

    move v9, v2

    move v7, v3

    .line 5
    new-instance p1, Lhd/j$b;

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lhd/j$b;-><init>(Lhd/j;IIII)V

    return-object p1
.end method

.method i(IIJZLgd/h;)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance p2, Lhd/j$a;

    invoke-direct {p2, p0, p6, p5}, Lhd/j$a;-><init>(Lhd/j;Lgd/h;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public j(J)Lhd/j;
    .locals 0

    invoke-super {p0, p1, p2}, Lhd/a;->b(J)Lhd/a;

    return-object p0
.end method

.method k(IIIZ)Z
    .locals 2

    .line 1
    iget v0, p0, Lhd/j;->d:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget p1, p0, Lhd/j;->e:I

    if-eq p1, p2, :cond_1

    return v1

    .line 3
    :cond_1
    iget p1, p0, Lhd/j;->f:I

    if-eq p1, p3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean p1, p0, Lhd/j;->g:Z

    if-eq p1, p4, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public m(F)Lhd/j;
    .locals 6

    .line 1
    iget-object v0, p0, Lhd/a;->c:Landroid/animation/Animator;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-wide v1, p0, Lhd/a;->a:J

    long-to-float v1, v1

    mul-float p1, p1, v1

    float-to-long v1, p1

    .line 3
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 4
    check-cast v0, Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    move-wide v3, v1

    .line 6
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public n(IIIZ)Lhd/j;
    .locals 9

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lhd/j;->k(IIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lhd/j;->g()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lhd/a;->c:Landroid/animation/Animator;

    .line 3
    iput p1, p0, Lhd/j;->d:I

    .line 4
    iput p2, p0, Lhd/j;->e:I

    .line 5
    iput p3, p0, Lhd/j;->f:I

    .line 6
    iput-boolean p4, p0, Lhd/j;->g:Z

    sub-int p2, p1, p3

    .line 7
    iput p2, p0, Lhd/j;->h:I

    add-int/2addr p1, p3

    .line 8
    iput p1, p0, Lhd/j;->i:I

    .line 9
    iget-object p1, p0, Lhd/j;->j:Lgd/h;

    invoke-virtual {p1, p2}, Lgd/h;->d(I)V

    .line 10
    iget-object p1, p0, Lhd/j;->j:Lgd/h;

    iget p2, p0, Lhd/j;->i:I

    invoke-virtual {p1, p2}, Lgd/h;->c(I)V

    .line 11
    invoke-virtual {p0, p4}, Lhd/j;->h(Z)Lhd/j$b;

    move-result-object p1

    .line 12
    iget-wide p2, p0, Lhd/a;->a:J

    const-wide/16 v0, 0x2

    div-long/2addr p2, v0

    .line 13
    iget v3, p1, Lhd/j$b;->a:I

    iget v4, p1, Lhd/j$b;->b:I

    const/4 v7, 0x0

    iget-object v8, p0, Lhd/j;->j:Lgd/h;

    move-object v2, p0

    move-wide v5, p2

    invoke-virtual/range {v2 .. v8}, Lhd/j;->i(IIJZLgd/h;)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 14
    iget v3, p1, Lhd/j$b;->c:I

    iget v4, p1, Lhd/j$b;->d:I

    const/4 v7, 0x1

    iget-object v8, p0, Lhd/j;->j:Lgd/h;

    invoke-virtual/range {v2 .. v8}, Lhd/j;->i(IIJZLgd/h;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lhd/a;->c:Landroid/animation/Animator;

    check-cast p2, Landroid/animation/AnimatorSet;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    const/4 v0, 0x0

    aput-object p4, p3, v0

    const/4 p4, 0x1

    aput-object p1, p3, p4

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_0
    return-object p0
.end method
