.class public Lhd/c;
.super Lhd/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhd/c$c;
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
.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lgd/b;


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
    new-instance p1, Lgd/b;

    invoke-direct {p1}, Lgd/b;-><init>()V

    iput-object p1, p0, Lhd/c;->i:Lgd/b;

    return-void
.end method

.method static synthetic f(Lhd/c;Landroid/animation/ValueAnimator;Lhd/c$c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lhd/c;->k(Landroid/animation/ValueAnimator;Lhd/c$c;)V

    return-void
.end method

.method private h(IIJLhd/c$c;)Landroid/animation/ValueAnimator;
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
    new-instance p2, Lhd/c$a;

    invoke-direct {p2, p0, p5}, Lhd/c$a;-><init>(Lhd/c;Lhd/c$c;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private j(IIIII)Z
    .locals 2

    .line 1
    iget v0, p0, Lhd/c;->d:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget p1, p0, Lhd/c;->e:I

    if-eq p1, p2, :cond_1

    return v1

    .line 3
    :cond_1
    iget p1, p0, Lhd/c;->f:I

    if-eq p1, p3, :cond_2

    return v1

    .line 4
    :cond_2
    iget p1, p0, Lhd/c;->g:I

    if-eq p1, p4, :cond_3

    return v1

    .line 5
    :cond_3
    iget p1, p0, Lhd/c;->h:I

    if-eq p1, p5, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private k(Landroid/animation/ValueAnimator;Lhd/c$c;)V
    .locals 1
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhd/c$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    sget-object v0, Lhd/c$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lhd/c;->i:Lgd/b;

    invoke-virtual {p2, p1}, Lgd/b;->e(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lhd/c;->i:Lgd/b;

    invoke-virtual {p2, p1}, Lgd/b;->d(I)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p2, p0, Lhd/c;->i:Lgd/b;

    invoke-virtual {p2, p1}, Lgd/b;->f(I)V

    .line 6
    :goto_0
    iget-object p1, p0, Lhd/a;->b:Led/b$a;

    if-eqz p1, :cond_3

    .line 7
    iget-object p2, p0, Lhd/c;->i:Lgd/b;

    invoke-interface {p1, p2}, Led/b$a;->a(Lfd/a;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lhd/c;->g()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(F)Lhd/a;
    .locals 0

    invoke-virtual {p0, p1}, Lhd/c;->l(F)Lhd/c;

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

.method public i(J)Lhd/c;
    .locals 0

    invoke-super {p0, p1, p2}, Lhd/a;->b(J)Lhd/a;

    return-object p0
.end method

.method public l(F)Lhd/c;
    .locals 11

    .line 1
    iget-object v0, p0, Lhd/a;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    .line 2
    iget-wide v1, p0, Lhd/a;->a:J

    long-to-float v1, v1

    mul-float p1, p1, v1

    float-to-long v1, p1

    const/4 p1, 0x0

    .line 3
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 4
    check-cast v3, Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    if-eqz p1, :cond_1

    sub-long v6, v1, v4

    goto :goto_1

    :cond_1
    move-wide v6, v1

    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_2

    goto :goto_0

    :cond_2
    cmp-long v8, v6, v4

    if-ltz v8, :cond_3

    move-wide v6, v4

    .line 6
    :cond_3
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_4

    .line 7
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_4
    if-nez p1, :cond_0

    .line 8
    iget-wide v6, p0, Lhd/a;->a:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public m(IIIII)Lhd/c;
    .locals 17

    move-object/from16 v6, p0

    move/from16 v7, p5

    .line 1
    invoke-direct/range {p0 .. p5}, Lhd/c;->j(IIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lhd/c;->g()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, v6, Lhd/a;->c:Landroid/animation/Animator;

    move/from16 v1, p1

    .line 3
    iput v1, v6, Lhd/c;->d:I

    move/from16 v2, p2

    .line 4
    iput v2, v6, Lhd/c;->e:I

    move/from16 v8, p3

    .line 5
    iput v8, v6, Lhd/c;->f:I

    move/from16 v9, p4

    .line 6
    iput v9, v6, Lhd/c;->g:I

    .line 7
    iput v7, v6, Lhd/c;->h:I

    int-to-double v3, v7

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    div-double/2addr v3, v10

    double-to-int v10, v3

    .line 8
    iget-wide v3, v6, Lhd/a;->a:J

    const-wide/16 v11, 0x2

    div-long v11, v3, v11

    .line 9
    sget-object v5, Lhd/c$c;->a:Lhd/c$c;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lhd/c;->h(IIJLhd/c$c;)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 10
    sget-object v14, Lhd/c$c;->b:Lhd/c$c;

    move/from16 v1, p3

    move/from16 v2, p4

    move-wide v3, v11

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lhd/c;->h(IIJLhd/c$c;)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 11
    sget-object v16, Lhd/c$c;->c:Lhd/c$c;

    move/from16 v1, p5

    move v2, v10

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lhd/c;->h(IIJLhd/c$c;)Landroid/animation/ValueAnimator;

    move-result-object v5

    move/from16 v1, p4

    move/from16 v2, p3

    move-object v8, v5

    move-object v5, v14

    .line 12
    invoke-direct/range {v0 .. v5}, Lhd/c;->h(IIJLhd/c$c;)Landroid/animation/ValueAnimator;

    move-result-object v9

    move v1, v10

    move/from16 v2, p5

    move-object/from16 v5, v16

    .line 13
    invoke-direct/range {v0 .. v5}, Lhd/c;->h(IIJLhd/c$c;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 14
    iget-object v1, v6, Lhd/a;->c:Landroid/animation/Animator;

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-object v6
.end method
