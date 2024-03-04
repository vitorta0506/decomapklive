.class public Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$a;,
        Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;
    }
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;

.field f:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$a;

.field private g:Z

.field private h:Z

.field i:Z

.field j:F

.field k:I

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->g:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->i:Z

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->l:Z

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->m:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->g:Z

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->i:Z

    .line 9
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->l:Z

    .line 10
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->m:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->g:Z

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->i:Z

    .line 14
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->l:Z

    .line 15
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->m:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->h:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->g:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->h:Z

    .line 3
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    const/4 v4, 0x4

    const-string v5, "scaleY"

    const-string v6, "scaleX"

    const-string v7, "translationX"

    const-string v8, "translationY"

    const/4 v9, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eq v1, v3, :cond_c

    if-eq v1, v11, :cond_1

    if-eq v1, v9, :cond_c

    .line 5
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 6
    :cond_1
    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->a:F

    cmpg-float v1, v1, v12

    if-gtz v1, :cond_2

    .line 7
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->h:Z

    .line 8
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 9
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    iget v13, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->k:I

    if-eq v1, v13, :cond_3

    .line 10
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 11
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_5

    .line 12
    iput v12, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->a:F

    .line 13
    iput v12, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->b:F

    .line 14
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v13, v3, [F

    aput v12, v13, v2

    .line 15
    invoke-static {v0, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v13, v3, [F

    aput v12, v13, v2

    .line 16
    invoke-static {v0, v7, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v13, v3, [F

    aput v10, v13, v2

    .line 17
    invoke-static {v0, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v13, v3, [F

    aput v10, v13, v2

    .line 18
    invoke-static {v0, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v8, v4, v2

    aput-object v7, v4, v3

    aput-object v6, v4, v11

    aput-object v5, v4, v9

    .line 19
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 20
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 21
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->e:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;

    if-eqz v1, :cond_4

    .line 22
    invoke-interface {v1, v2}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;->onDragPercent(I)V

    .line 23
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->e:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;->onCancel()V

    .line 24
    :cond_4
    iput v12, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->a:F

    .line 25
    iput v12, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->b:F

    .line 26
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->m:Z

    .line 27
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->l:Z

    .line 28
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->h:Z

    .line 29
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 30
    :cond_5
    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->l:Z

    if-nez v1, :cond_6

    .line 31
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 32
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 33
    iget v4, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->c:F

    sub-float/2addr v1, v4

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchTouchEvent: move x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FullScreenScrollToExitView"

    invoke-static {v5, v4}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 36
    iget v6, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->a:F

    sub-float v6, v4, v6

    .line 37
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchTouchEvent: move y"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 39
    iget-boolean v5, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->m:Z

    if-nez v5, :cond_8

    .line 40
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_7

    .line 41
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->l:Z

    .line 42
    iput-boolean v3, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->m:Z

    .line 43
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 44
    :cond_7
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v12

    if-lez v2, :cond_8

    .line 45
    iput-boolean v3, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->l:Z

    .line 46
    iput-boolean v3, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->m:Z

    .line 47
    :cond_8
    iget v2, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->a:F

    cmpg-float v2, v4, v2

    if-gez v2, :cond_9

    goto :goto_0

    :cond_9
    move v12, v6

    .line 48
    :goto_0
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v2, v5

    double-to-float v2, v2

    cmpg-float v3, v2, v10

    if-gez v3, :cond_b

    .line 49
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->e:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;

    if-eqz v3, :cond_a

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v5, v5, v2

    float-to-int v5, v5

    .line 50
    invoke-interface {v3, v5}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;->onDragPercent(I)V

    :cond_a
    sub-float/2addr v10, v2

    .line 51
    invoke-virtual {v0, v10}, Landroid/view/View;->setScaleX(F)V

    .line 52
    invoke-virtual {v0, v10}, Landroid/view/View;->setScaleY(F)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/2addr v2, v11

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    div-int/2addr v2, v11

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 55
    invoke-virtual {v0, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 57
    :cond_b
    iput v4, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->b:F

    .line 58
    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->d:F

    .line 59
    iput v12, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->j:F

    .line 60
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 61
    :cond_c
    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->l:Z

    if-eqz v1, :cond_10

    .line 62
    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->b:F

    iget v13, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->a:F

    sub-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    const/4 v14, 0x5

    div-int/2addr v13, v14

    int-to-float v13, v13

    const-string v15, "pivotY"

    const-string v14, "pivotX"

    cmpl-float v1, v1, v13

    if-lez v1, :cond_e

    new-array v1, v3, [F

    aput v12, v1, v2

    .line 63
    invoke-static {v0, v14, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v4, v3, [F

    aput v12, v4, v2

    .line 64
    invoke-static {v0, v15, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 65
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v11, [Landroid/animation/Animator;

    aput-object v1, v6, v2

    aput-object v4, v6, v3

    .line 66
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 67
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 68
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->f:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$a;

    if-eqz v1, :cond_d

    .line 69
    invoke-interface {v1, v2}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$a;->onDragFinish(Z)V

    goto :goto_1

    .line 70
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Landroidx/core/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    goto :goto_1

    .line 71
    :cond_e
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v13, v3, [F

    aput v12, v13, v2

    .line 72
    invoke-static {v0, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v13, v3, [F

    aput v12, v13, v2

    .line 73
    invoke-static {v0, v7, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v13, v3, [F

    aput v10, v13, v2

    .line 74
    invoke-static {v0, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v13, v3, [F

    aput v10, v13, v2

    .line 75
    invoke-static {v0, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v10, v3, [F

    aput v12, v10, v2

    .line 76
    invoke-static {v0, v14, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v13, v3, [F

    aput v12, v13, v2

    .line 77
    invoke-static {v0, v15, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const/4 v14, 0x6

    new-array v14, v14, [Landroid/animation/Animator;

    aput-object v8, v14, v2

    aput-object v7, v14, v3

    aput-object v6, v14, v11

    aput-object v5, v14, v9

    aput-object v10, v14, v4

    const/4 v3, 0x5

    aput-object v13, v14, v3

    .line 78
    invoke-virtual {v1, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 79
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 80
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->e:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;

    if-eqz v1, :cond_f

    .line 81
    invoke-interface {v1, v2}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;->onDragPercent(I)V

    .line 82
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->e:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;->onCancel()V

    .line 83
    :cond_f
    :goto_1
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->i:Z

    .line 84
    :cond_10
    iput v12, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->a:F

    .line 85
    iput v12, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->b:F

    .line 86
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->m:Z

    .line 87
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->l:Z

    .line 88
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->h:Z

    .line 89
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 90
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->a:F

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->c:F

    .line 92
    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->d:F

    .line 93
    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->a:F

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->b:F

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_12

    .line 95
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 96
    :cond_12
    iput-boolean v3, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->l:Z

    .line 97
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->m:Z

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->k:I

    .line 99
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 100
    iput-boolean v3, v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->h:Z

    return v3
.end method

.method public getOnDragFinishListener()Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->f:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$a;

    return-object v0
.end method

.method public getOnDragListener()Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->e:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;

    return-object v0
.end method

.method public setDragToFinishing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->h:Z

    return-void
.end method

.method public setGestureEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->g:Z

    return-void
.end method

.method public setOnDragFinishListener(Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->f:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$a;

    return-void
.end method

.method public setOnDragListener(Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->e:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2$b;

    return-void
.end method
