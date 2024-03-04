.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/common/u$g;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->b(Landroid/view/View;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$b;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static d(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/os/Handler;Ld9/i;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    :goto_0
    const/4 v3, 0x0

    .line 3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$d;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$d;-><init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Ld9/i;Landroid/os/Handler;)V

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static e(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Ld9/i;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x3e8

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$f;-><init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Ld9/i;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public static f(Landroid/widget/ImageView;)Landroid/animation/Animator;
    .locals 6

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 2
    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, -0x1

    .line 3
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    new-array v1, v1, [F

    .line 5
    fill-array-data v1, :array_1

    const-string v5, "scaleY"

    invoke-static {p0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 7
    invoke-virtual {p0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput-object p0, v1, v4

    .line 8
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 9
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x438

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 11
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static g(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/modulars/live/common/u$g;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    new-array v3, v0, [I

    .line 7
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 9
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v4

    invoke-virtual {v4}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ar"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x5dc

    goto :goto_0

    :cond_1
    const/16 v4, -0x5dc

    :goto_0
    int-to-float v4, v4

    .line 10
    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationX(F)V

    const-wide/16 v4, 0xc8

    .line 11
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-array v4, v0, [F

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v5

    aput v5, v4, v1

    const/4 v5, 0x1

    aput p2, v4, v5

    const-string p2, "translationX"

    invoke-static {p0, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v6, 0x12c

    .line 13
    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const v4, 0x3dcccccd    # 0.1f

    .line 14
    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleY(F)V

    new-array v4, v0, [F

    .line 15
    fill-array-data v4, :array_0

    const-string v8, "scaleY"

    invoke-static {p0, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 16
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 17
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x258

    .line 18
    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v1

    aput-object v4, v0, v5

    .line 19
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 20
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;

    invoke-direct {p2, p0, v3, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;-><init>(Landroid/view/View;[ILandroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/common/u$g;)V

    invoke-virtual {v2, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 22
    invoke-virtual {p0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static h(Landroid/view/View;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static i(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    const v0, 0x7f0a0209

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    const/4 p2, -0x2

    .line 4
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, 0x42a00000    # 80.0f

    .line 6
    invoke-static {p0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/high16 v3, 0x420c0000    # 35.0f

    .line 7
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    const/high16 p0, 0x42340000    # 45.0f

    .line 9
    invoke-static {p0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static j(IILandroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->k(IILandroid/widget/TextView;Ld9/e$a;)V

    return-void
.end method

.method public static k(IILandroid/widget/TextView;Ld9/e$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/widget/TextView;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3f99999a    # 1.2f

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->l(IILandroid/widget/TextView;Ld9/e$a;FF)V

    return-void
.end method

.method public static l(IILandroid/widget/TextView;Ld9/e$a;FF)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/widget/TextView;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;FF)V"
        }
    .end annotation

    move v4, p0

    move-object v1, p2

    move-object v5, p3

    sub-int v0, p1, v4

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v5, :cond_0

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ld9/e$a;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    new-array v3, v2, [F

    aput p4, v3, v0

    const-string v6, "scaleX"

    .line 6
    invoke-static {p2, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v6, v2, [F

    aput p4, v6, v0

    const-string v7, "scaleY"

    .line 7
    invoke-static {p2, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v7, 0x2bc

    .line 8
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 10
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v3, v10, v0

    aput-object v6, v10, v2

    .line 11
    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 12
    invoke-virtual {v9, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 13
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 14
    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;

    move-object v0, v7

    move-object v1, p2

    move/from16 v2, p5

    move v3, p1

    move v4, p0

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;-><init>(Landroid/widget/TextView;FIILd9/e$a;F)V

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static m(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Landroid/view/View;Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$e;

    invoke-direct {p1, p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$e;-><init>(ZLcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
