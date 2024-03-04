.class public Loa/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loa/g$c;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field protected final a:Landroid/view/animation/Interpolator;

.field protected final b:F

.field protected final c:F

.field protected final d:Loa/g$a;

.field final synthetic e:Loa/g;


# direct methods
.method public constructor <init>(Loa/g;F)V
    .locals 1

    .line 1
    iput-object p1, p0, Loa/g$b;->e:Loa/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Loa/g$b;->a:Landroid/view/animation/Interpolator;

    .line 3
    iput p2, p0, Loa/g$b;->b:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p2, p2, v0

    .line 4
    iput p2, p0, Loa/g$b;->c:F

    .line 5
    invoke-virtual {p1}, Loa/g;->b()Loa/g$a;

    move-result-object p1

    iput-object p1, p0, Loa/g$b;->d:Loa/g$a;

    return-void
.end method


# virtual methods
.method public a(Loa/g$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Loa/g$b;->e:Loa/g;

    iget-object v1, v0, Loa/g;->g:Loa/c;

    invoke-interface {p1}, Loa/g$c;->c()I

    move-result p1

    invoke-virtual {p0}, Loa/g$b;->c()I

    move-result v2

    invoke-interface {v1, v0, p1, v2}, Loa/c;->a(Loa/b;II)V

    .line 2
    invoke-virtual {p0}, Loa/g$b;->e()Landroid/animation/Animator;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected e()Landroid/animation/Animator;
    .locals 5

    .line 1
    iget-object v0, p0, Loa/g$b;->e:Loa/g;

    iget-object v0, v0, Loa/g;->b:Lpa/a;

    invoke-interface {v0}, Lpa/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Loa/g$b;->d:Loa/g$a;

    invoke-virtual {v1, v0}, Loa/g$a;->a(Landroid/view/View;)V

    .line 3
    iget-object v1, p0, Loa/g$b;->e:Loa/g;

    iget v2, v1, Loa/g;->i:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_3

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    iget-object v4, v1, Loa/g;->a:Loa/g$f;

    iget-boolean v4, v4, Loa/g$f;->c:Z

    if-nez v4, :cond_3

    :cond_0
    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    iget-object v1, v1, Loa/g;->a:Loa/g$f;

    iget-boolean v1, v1, Loa/g$f;->c:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    neg-float v1, v2

    .line 4
    iget v4, p0, Loa/g$b;->b:F

    div-float/2addr v1, v4

    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    neg-float v1, v2

    mul-float v1, v1, v2

    .line 5
    iget v2, p0, Loa/g$b;->c:F

    div-float/2addr v1, v2

    .line 6
    iget-object v2, p0, Loa/g$b;->d:Loa/g$a;

    iget v2, v2, Loa/g$a;->b:F

    add-float/2addr v2, v1

    float-to-int v1, v3

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Loa/g$b;->g(Landroid/view/View;IF)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v2}, Loa/g$b;->f(F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 9
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 10
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v2

    .line 11
    :cond_3
    :goto_1
    iget-object v0, p0, Loa/g$b;->d:Loa/g$a;

    iget v0, v0, Loa/g$a;->b:F

    invoke-virtual {p0, v0}, Loa/g$b;->f(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected f(F)Landroid/animation/ObjectAnimator;
    .locals 5

    .line 1
    iget-object v0, p0, Loa/g$b;->e:Loa/g;

    iget-object v0, v0, Loa/g;->b:Lpa/a;

    invoke-interface {v0}, Lpa/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v1, p0, Loa/g$b;->d:Loa/g$a;

    iget v2, v1, Loa/g$a;->c:F

    div-float/2addr p1, v2

    const/high16 v2, 0x44480000    # 800.0f

    mul-float p1, p1, v2

    .line 3
    iget-object v1, v1, Loa/g$a;->a:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    iget-object v3, p0, Loa/g$b;->e:Loa/g;

    iget-object v3, v3, Loa/g;->a:Loa/g$f;

    iget v3, v3, Loa/g$f;->b:F

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    float-to-int p1, p1

    const/16 v1, 0xc8

    .line 4
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    iget-object p1, p0, Loa/g$b;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method protected g(Landroid/view/View;IF)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 1
    iget-object v0, p0, Loa/g$b;->d:Loa/g$a;

    iget-object v0, v0, Loa/g$a;->a:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long p2, p2

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    iget-object p2, p0, Loa/g$b;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Loa/g$b;->e:Loa/g;

    iget-object v0, p1, Loa/g;->c:Loa/g$d;

    invoke-virtual {p1, v0}, Loa/g;->e(Loa/g$c;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Loa/g$b;->e:Loa/g;

    iget-object v1, v0, Loa/g;->h:Loa/d;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v2, 0x3

    invoke-interface {v1, v0, v2, p1}, Loa/d;->a(Loa/b;IF)V

    return-void
.end method
