.class public Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/internal/i$b;


# instance fields
.field final a:Landroid/view/ScaleGestureDetector;

.field final b:Landroid/view/GestureDetector;

.field final c:Landroid/graphics/Matrix;

.field final d:Landroid/graphics/Matrix;

.field final e:Landroid/graphics/Matrix;

.field final f:Landroid/graphics/RectF;

.field final g:Landroid/graphics/RectF;

.field final h:[F

.field i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->c:Landroid/graphics/Matrix;

    .line 5
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->d:Landroid/graphics/Matrix;

    .line 6
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->e:Landroid/graphics/Matrix;

    .line 7
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->f:Landroid/graphics/RectF;

    .line 8
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->g:Landroid/graphics/RectF;

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 9
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->h:[F

    .line 10
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance p3, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$a;

    invoke-direct {p3, p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$a;-><init>(Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->a:Landroid/view/ScaleGestureDetector;

    .line 11
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$b;

    invoke-direct {p3, p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$b;-><init>(Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->b:Landroid/view/GestureDetector;

    return-void
.end method

.method public static synthetic b(Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->h(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic h(FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getScale()F

    move-result v0

    div-float/2addr p3, v0

    .line 3
    invoke-virtual {p0, p3, p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->l(FFF)V

    .line 4
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->k()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c(FFFF)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance p2, Lcom/twitter/sdk/android/tweetui/internal/e;

    invoke-direct {p2, p0, p3, p4}, Lcom/twitter/sdk/android/tweetui/internal/e;-><init>(Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;FF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method d(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->g:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->g:Landroid/graphics/RectF;

    return-object p1
.end method

.method e(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 5
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->d:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->f:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    return-void
.end method

.method f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->c:Landroid/graphics/Matrix;

    return-object v0
.end method

.method getScale()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->h:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method i(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method j()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->n()V

    .line 2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method l(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-void
.end method

.method m(FF)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method n()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->d(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v1, v2

    goto :goto_1

    .line 4
    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v1, v4

    if-lez v2, :cond_1

    neg-float v1, v1

    goto :goto_1

    .line 5
    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/4 v6, 0x1

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_3

    .line 8
    iput-boolean v6, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->i:Z

    .line 9
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_2
    sub-float v4, v2, v0

    goto :goto_3

    .line 10
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v2, v4

    if-lez v3, :cond_4

    .line 11
    iput-boolean v6, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->i:Z

    neg-float v4, v2

    goto :goto_3

    .line 12
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 13
    iput-boolean v6, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->i:Z

    .line 14
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->i:Z

    .line 16
    :goto_3
    invoke-virtual {p0, v4, v1}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->m(FF)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->f()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->e(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->k()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->i(Z)V

    .line 3
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->b:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
