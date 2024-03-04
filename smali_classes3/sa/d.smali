.class public Lsa/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/view/animation/AccelerateDecelerateInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lsa/d;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 8

    const p2, 0x7f0a00ac

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4
    iget-object v1, p0, Lsa/d;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const v1, 0x7f0a09a1

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 6
    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v5, v2, [F

    .line 7
    fill-array-data v5, :array_1

    const-string v6, "scaleY"

    invoke-static {v1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const v5, 0x7f0a06bd

    .line 8
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-array v7, v2, [F

    .line 9
    fill-array-data v7, :array_2

    invoke-static {v5, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v7, v2, [F

    .line 10
    fill-array-data v7, :array_3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v1, v6, v3

    aput-object v4, v6, v2

    const/4 v1, 0x3

    aput-object v5, v6, v1

    .line 11
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 12
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lsa/d;->b(Landroid/animation/AnimatorSet;)V

    .line 15
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(Landroid/animation/AnimatorSet;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 2
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method
