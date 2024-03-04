.class public Lcom/scwang/smartrefresh/header/FlyRefreshHeader;
.super Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;
.source "SourceFile"


# instance fields
.field protected e:Landroid/view/View;

.field protected f:Landroid/animation/AnimatorSet;

.field protected g:Lwd/j;

.field protected h:Lwd/i;

.field protected i:Lcom/scwang/smartrefresh/header/flyrefresh/MountainSceneView;

.field protected j:I

.field protected k:F

.field protected l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->j:I

    .line 3
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->j:I

    .line 6
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/header/FalsifyHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->j:I

    .line 9
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->l:Z

    return-void
.end method


# virtual methods
.method public a(Lwd/j;II)V
    .locals 8
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->h:Lwd/i;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lwd/i;->d(I)Landroid/animation/ValueAnimator;

    .line 2
    iget p2, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->k:F

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    cmpl-float v3, p2, v0

    if-lez v3, :cond_0

    new-array v3, v2, [F

    aput p2, v3, p3

    aput v0, v3, v1

    .line 3
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v3, 0x12c

    .line 4
    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    new-instance v3, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$a;

    invoke-direct {v3, p0}, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$a;-><init>(Lcom/scwang/smartrefresh/header/FlyRefreshHeader;)V

    invoke-virtual {p2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 7
    iput v0, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->k:F

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->l:Z

    if-nez p2, :cond_2

    .line 9
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->f:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->end()V

    .line 11
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 12
    :cond_1
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->l:Z

    .line 13
    invoke-interface {p1, p3}, Lwd/j;->f(Z)Lwd/j;

    .line 14
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->g:Lwd/j;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    .line 15
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget v3, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->j:I

    sub-int/2addr p2, v3

    neg-int p2, p2

    mul-int/lit8 p2, p2, 0x2

    const/4 v3, 0x3

    div-int/2addr p2, v3

    .line 16
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v5, v2, [F

    aput v0, v5, p3

    int-to-float p1, p1

    aput p1, v5, v1

    const-string/jumbo p1, "translationX"

    invoke-static {v4, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 17
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v5, v2, [F

    aput v0, v5, p3

    int-to-float p2, p2

    aput p2, v5, v1

    const-string/jumbo p2, "translationY"

    invoke-static {v4, p2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 18
    invoke-static {v4, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v5, v2, [F

    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v6

    aput v6, v5, p3

    aput v0, v5, v1

    const-string v0, "rotation"

    invoke-static {v4, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 20
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v5, v2, [F

    invoke-virtual {v4}, Landroid/view/View;->getRotationX()F

    move-result v6

    aput v6, v5, p3

    const/high16 v6, 0x42480000    # 50.0f

    aput v6, v5, v1

    const-string v6, "rotationX"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 22
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v6, 0x320

    .line 24
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v6, 0x6

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p1, v6, p3

    aput-object p2, v6, v1

    aput-object v0, v6, v2

    aput-object v4, v6, v3

    const/4 p1, 0x4

    .line 25
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v0, v2, [F

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result v3

    aput v3, v0, p3

    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v0, v1

    const-string v4, "scaleX"

    invoke-static {p2, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v6, p1

    const/4 p1, 0x5

    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v0, v2, [F

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result v2

    aput v2, v0, p3

    aput v3, v0, v1

    const-string p3, "scaleY"

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v6, p1

    .line 28
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 29
    iput-object v5, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->f:Landroid/animation/AnimatorSet;

    .line 30
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void
.end method

.method public c(Lwd/j;Z)I
    .locals 1
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->l:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->r()V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->c(Lwd/j;Z)I

    move-result p1

    return p1
.end method

.method public g(Lwd/i;II)V
    .locals 0
    .param p1    # Lwd/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->h:Lwd/i;

    .line 2
    invoke-interface {p1}, Lwd/i;->k()Lwd/j;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->g:Lwd/j;

    const/4 p2, 0x0

    .line 3
    invoke-interface {p1, p2}, Lwd/j;->a(Z)Lwd/j;

    return-void
.end method

.method public o(ZFIII)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->l:Z

    if-nez p1, :cond_5

    :cond_0
    if-gez p3, :cond_2

    .line 2
    iget p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->j:I

    if-lez p1, :cond_1

    const/4 p3, 0x0

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_0
    iput p3, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->j:I

    .line 4
    iput p2, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->k:F

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->i:Lcom/scwang/smartrefresh/header/flyrefresh/MountainSceneView;

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/flyrefresh/MountainSceneView;->c(F)V

    .line 7
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->i:Lcom/scwang/smartrefresh/header/flyrefresh/MountainSceneView;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    if-eqz p1, :cond_5

    add-int/2addr p4, p5

    const/high16 p5, -0x3dcc0000    # -45.0f

    if-lez p4, :cond_4

    int-to-float p2, p3

    mul-float p2, p2, p5

    int-to-float p3, p4

    div-float/2addr p2, p3

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    :cond_4
    mul-float p2, p2, p5

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    :cond_5
    :goto_1
    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->s(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public s(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->l:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->g:Lwd/j;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->f:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 4
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_1
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->l:Z

    .line 6
    iget-object v2, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->g:Lwd/j;

    invoke-interface {v2, v1}, Lwd/j;->d(I)Lwd/j;

    .line 7
    iget-object v2, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    neg-int v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    .line 8
    invoke-static {v3}, Lae/b;->b(F)I

    move-result v3

    neg-int v3, v3

    .line 9
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0x320

    .line 10
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 11
    iget-object v7, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    const/4 v8, 0x2

    new-array v9, v8, [F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v10

    aput v10, v9, v1

    int-to-float v2, v2

    const/4 v10, 0x1

    aput v2, v9, v10

    const-string/jumbo v11, "translationX"

    invoke-static {v7, v11, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 12
    iget-object v9, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v12, v8, [F

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v13

    aput v13, v12, v1

    int-to-float v3, v3

    aput v3, v12, v10

    const-string/jumbo v13, "translationY"

    invoke-static {v9, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const v12, 0x3dcccccd    # 0.1f

    const/high16 v14, 0x3f800000    # 1.0f

    .line 13
    invoke-static {v12, v14}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FF)Landroid/view/animation/Interpolator;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    iget-object v12, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v14, v8, [F

    invoke-virtual {v12}, Landroid/view/View;->getRotation()F

    move-result v15

    aput v15, v14, v1

    const/4 v15, 0x0

    aput v15, v14, v10

    const-string v15, "rotation"

    invoke-static {v12, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 15
    iget-object v14, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v15, v8, [F

    invoke-virtual {v14}, Landroid/view/View;->getRotationX()F

    move-result v16

    aput v16, v15, v1

    const/high16 v16, 0x41f00000    # 30.0f

    aput v16, v15, v10

    const-string v5, "rotationX"

    invoke-static {v14, v5, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 16
    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v12, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v14, 0x6

    new-array v14, v14, [Landroid/animation/Animator;

    aput-object v7, v14, v1

    aput-object v9, v14, v10

    aput-object v12, v14, v8

    const/4 v7, 0x3

    aput-object v6, v14, v7

    .line 17
    iget-object v6, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v9, v8, [F

    .line 18
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v12

    aput v12, v9, v1

    const v12, 0x3f666666    # 0.9f

    aput v12, v9, v10

    const-string v15, "scaleX"

    invoke-static {v6, v15, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v9, 0x4

    aput-object v6, v14, v9

    iget-object v6, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v9, v8, [F

    .line 19
    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v17

    aput v17, v9, v1

    aput v12, v9, v10

    const-string v12, "scaleY"

    invoke-static {v6, v12, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const/4 v9, 0x5

    aput-object v6, v14, v9

    .line 20
    invoke-virtual {v4, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 21
    new-instance v6, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$b;

    invoke-direct {v6, v0}, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$b;-><init>(Lcom/scwang/smartrefresh/header/FlyRefreshHeader;)V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 22
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v9, 0x320

    .line 23
    invoke-virtual {v6, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 24
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 25
    iget-object v9, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v10, v8, [F

    aput v2, v10, v1

    const/4 v2, 0x0

    const/4 v14, 0x1

    aput v2, v10, v14

    invoke-static {v9, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 26
    iget-object v10, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v11, v8, [F

    aput v3, v11, v1

    aput v2, v11, v14

    invoke-static {v10, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 27
    iget-object v3, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v10, v8, [F

    fill-array-data v10, :array_0

    invoke-static {v3, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v9, v5, v1

    aput-object v2, v5, v14

    aput-object v3, v5, v8

    .line 28
    iget-object v2, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v3, v8, [F

    fill-array-data v3, :array_1

    .line 29
    invoke-static {v2, v15, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v5, v7

    iget-object v2, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->e:Landroid/view/View;

    new-array v3, v8, [F

    fill-array-data v3, :array_2

    .line 30
    invoke-static {v2, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v5, v3

    .line 31
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x64

    .line 32
    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 33
    new-instance v2, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$c;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lcom/scwang/smartrefresh/header/FlyRefreshHeader$c;-><init>(Lcom/scwang/smartrefresh/header/FlyRefreshHeader;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 34
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->f:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v6, v3, v1

    .line 35
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 36
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
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
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/FlyRefreshHeader;->i:Lcom/scwang/smartrefresh/header/flyrefresh/MountainSceneView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/header/flyrefresh/MountainSceneView;->setPrimaryColor(I)V

    :cond_0
    return-void
.end method
