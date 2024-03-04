.class public Lcom/twitter/sdk/android/tweetui/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/internal/i$b;,
        Lcom/twitter/sdk/android/tweetui/internal/i$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private final c:F

.field private final d:F

.field private e:Lcom/twitter/sdk/android/tweetui/internal/i$a;

.field private f:F

.field private g:F

.field private h:I

.field private i:Z


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/internal/i$a;IF)V
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, p3

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/sdk/android/tweetui/internal/i;-><init>(Lcom/twitter/sdk/android/tweetui/internal/i$a;IFF)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetui/internal/i$a;IFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/i;->l(Lcom/twitter/sdk/android/tweetui/internal/i$a;)V

    .line 4
    iput p2, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->a:I

    .line 5
    iput p3, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->c:F

    .line 6
    iput p4, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->d:F

    return-void
.end method

.method public static synthetic a(Lcom/twitter/sdk/android/tweetui/internal/i;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/i;->j(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static d(Landroid/view/View;Lcom/twitter/sdk/android/tweetui/internal/i$a;)Lcom/twitter/sdk/android/tweetui/internal/i;
    .locals 3

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/i;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float p0, p0, v2

    invoke-direct {v0, p1, v1, p0}, Lcom/twitter/sdk/android/tweetui/internal/i;-><init>(Lcom/twitter/sdk/android/tweetui/internal/i$a;IF)V

    return-object v0
.end method

.method private synthetic j(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->e:Lcom/twitter/sdk/android/tweetui/internal/i$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/tweetui/internal/i$a;->a(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method b(F)F
    .locals 2

    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->c:F

    neg-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    neg-float p1, v0

    return p1

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method c(F)D
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 2
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->d:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 3
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v5, v0

    .line 4
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    return-wide v3
.end method

.method e(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/i;->n(Landroid/view/View;)V

    .line 3
    iput-boolean v2, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->i:Z

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->h:I

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 7
    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->b:F

    sub-float v4, v3, v4

    .line 8
    iget v5, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->f:F

    sub-float v5, v0, v5

    .line 9
    iget v6, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->g:F

    sub-float v6, v3, v6

    .line 10
    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->f:F

    .line 11
    iput v3, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->g:F

    .line 12
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/tweetui/internal/i;->i(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->i:Z

    if-nez p2, :cond_2

    .line 13
    invoke-virtual {p0, v4}, Lcom/twitter/sdk/android/tweetui/internal/i;->f(F)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 14
    invoke-virtual {p0, v5, v6}, Lcom/twitter/sdk/android/tweetui/internal/i;->g(FF)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 15
    :cond_2
    iput-boolean v1, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->i:Z

    .line 16
    invoke-virtual {p0, p1, v6}, Lcom/twitter/sdk/android/tweetui/internal/i;->k(Landroid/view/View;F)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/tweetui/internal/i;->i(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 18
    iget-boolean p2, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->i:Z

    if-eqz p2, :cond_4

    .line 19
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/i;->m(Landroid/view/View;)Z

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput-boolean v2, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->i:Z

    move v2, p1

    goto :goto_1

    .line 21
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->f:F

    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->g:F

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->b:F

    .line 23
    iput-boolean v2, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->i:Z

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->h:I

    :cond_6
    :goto_1
    return v2
.end method

.method f(F)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->a:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method g(FF)Z
    .locals 0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->i:Z

    return v0
.end method

.method i(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->h:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method k(Landroid/view/View;F)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-double v1, p2

    .line 2
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/i;->c(F)D

    move-result-wide v3

    mul-double v1, v1, v3

    double-to-float p2, v1

    add-float/2addr v0, p2

    .line 3
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/i;->b(F)F

    move-result p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 5
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->e:Lcom/twitter/sdk/android/tweetui/internal/i$a;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/i$a;->a(F)V

    :cond_0
    return-void
.end method

.method public l(Lcom/twitter/sdk/android/tweetui/internal/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->e:Lcom/twitter/sdk/android/tweetui/internal/i$a;

    return-void
.end method

.method m(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 2
    iget v1, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->d:F

    cmpl-float v2, v0, v1

    if-gtz v2, :cond_1

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/internal/i;->n(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/i;->e:Lcom/twitter/sdk/android/tweetui/internal/i$a;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/twitter/sdk/android/tweetui/internal/i$a;->onDismiss()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method n(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 3
    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/h;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/internal/h;-><init>(Lcom/twitter/sdk/android/tweetui/internal/i;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/twitter/sdk/android/tweetui/internal/i$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/twitter/sdk/android/tweetui/internal/i$b;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/internal/i$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/internal/i;->e(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method
