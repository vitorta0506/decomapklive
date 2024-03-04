.class public Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ANIM_DURATION:I = 0x12c


# instance fields
.field finalBounds:Landroid/graphics/Rect;

.field globalOffset:Landroid/graphics/Point;

.field mContainer:Landroid/view/View;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mLarge:Landroid/view/View;

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private mScaleUp:Z

.field private mSmall:Landroid/view/View;

.field private mZoomUpListener:Landroid/animation/Animator$AnimatorListener;

.field startBounds:Landroid/graphics/Rect;

.field startScaleFinal:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->globalOffset:Landroid/graphics/Point;

    return-void
.end method

.method static synthetic access$002(Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mCurrentAnimator:Landroid/animation/Animator;

    return-object p1
.end method


# virtual methods
.method public isScaleUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mScaleUp:Z

    return v0
.end method

.method public resetZoom()V
    .locals 9

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mLarge:Landroid/view/View;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mSmall:Landroid/view/View;

    .line 9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    .line 15
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    .line 16
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 17
    iget v5, v4, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 18
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 19
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    .line 20
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    .line 21
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 22
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    :goto_0
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 24
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 25
    iput v2, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startScaleFinal:F

    .line 26
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 27
    sget-object v3, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 28
    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    sget-object v5, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v6, v4, [F

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    aput v8, v6, v7

    .line 30
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 31
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v4, [F

    iget v8, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startScaleFinal:F

    aput v8, v6, v7

    .line 32
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 33
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v4, [F

    iget v6, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startScaleFinal:F

    aput v6, v4, v7

    .line 34
    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v3, 0x12c

    .line 36
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 37
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    new-instance v3, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 41
    :cond_2
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 42
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mCurrentAnimator:Landroid/animation/Animator;

    .line 43
    iput-boolean v7, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mScaleUp:Z

    return-void
.end method

.method public resetZoom(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mSmall:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mSmall:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->resetZoom()V

    return-void
.end method

.method public setResetAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setScaleUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mScaleUp:Z

    return-void
.end method

.method public setZoomUpAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mZoomUpListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public startZoom(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mSmall:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mLarge:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mContainer:Landroid/view/View;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->globalOffset:Landroid/graphics/Point;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->globalOffset:Landroid/graphics/Point;

    invoke-virtual {p3, v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 10
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->globalOffset:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 11
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->globalOffset:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 12
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_1

    .line 14
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p3

    .line 16
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 18
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 19
    :cond_1
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p3

    .line 21
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 23
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotX(F)V

    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotY(F)V

    .line 28
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 29
    sget-object v1, Landroid/view/View;->X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    aput v4, v3, p1

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 30
    invoke-static {p2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v3, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v4, v2, [F

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v4, p1

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->finalBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    aput v6, v4, v5

    .line 31
    invoke-static {p2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v2, [F

    aput p3, v4, p1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    .line 32
    invoke-static {p2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput p3, v2, p1

    aput v6, v2, v5

    .line 33
    invoke-static {p2, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 p1, 0x12c

    .line 34
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 35
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$1;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 37
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mZoomUpListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 39
    :cond_2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 40
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mCurrentAnimator:Landroid/animation/Animator;

    .line 41
    iput p3, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->startScaleFinal:F

    .line 42
    iput-boolean v5, p0, Lcom/guochao/faceshow/aaspring/utils/ViewZoomHelper;->mScaleUp:Z

    return-void
.end method
