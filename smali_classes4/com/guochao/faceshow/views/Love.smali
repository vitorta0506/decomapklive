.class public Lcom/guochao/faceshow/views/Love;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field b:[F

.field public c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/guochao/faceshow/views/Love;->b:[F

    const v0, 0x3f4ccccd    # 0.8f

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/views/Love;->c:F

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/Love;->c(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        -0x3e100000    # -30.0f
        -0x3e600000    # -20.0f
        0x0
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x5

    new-array p2, p2, [F

    .line 6
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/guochao/faceshow/views/Love;->b:[F

    const p2, 0x3f4ccccd    # 0.8f

    .line 7
    iput p2, p0, Lcom/guochao/faceshow/views/Love;->c:F

    .line 8
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/Love;->c(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        -0x3e100000    # -30.0f
        -0x3e600000    # -20.0f
        0x0
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x5

    new-array p2, p2, [F

    .line 10
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/guochao/faceshow/views/Love;->b:[F

    const p2, 0x3f4ccccd    # 0.8f

    .line 11
    iput p2, p0, Lcom/guochao/faceshow/views/Love;->c:F

    .line 12
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/Love;->c(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        -0x3e100000    # -30.0f
        -0x3e600000    # -20.0f
        0x0
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
    .end array-data
.end method

.method public static b(Landroid/view/View;FFJJ)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "alpha"

    .line 1
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    invoke-virtual {p0, p5, p6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4
    invoke-virtual {p0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/Love;->a:Landroid/content/Context;

    return-void
.end method

.method public static varargs d(Landroid/view/View;JJ[F)Landroid/animation/ObjectAnimator;
    .locals 1

    const-string v0, "rotation"

    .line 1
    invoke-static {p0, v0, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    invoke-virtual {p0, p3, p4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4
    new-instance p1, Lcom/guochao/faceshow/views/Love$b;

    invoke-direct {p1}, Lcom/guochao/faceshow/views/Love$b;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public static e(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 1
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    invoke-virtual {p0, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4
    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static f(Landroid/view/View;FFJJ)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string/jumbo p1, "translationY"

    .line 1
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    invoke-virtual {p0, p5, p6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4
    invoke-virtual {p0, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    new-instance v8, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/views/Love;->a:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x12c

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/lit16 v2, v2, -0x96

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f0092

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 8
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/views/Love;->c:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v2, v0, v9

    const v10, 0x3f666666    # 0.9f

    mul-float v3, v0, v10

    const-string v1, "scaleX"

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x0

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Lcom/guochao/faceshow/views/Love;->e(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    iget v0, p0, Lcom/guochao/faceshow/views/Love;->c:F

    mul-float v2, v0, v9

    mul-float v3, v0, v10

    const-string v1, "scaleY"

    move-object v0, v8

    .line 10
    invoke-static/range {v0 .. v7}, Lcom/guochao/faceshow/views/Love;->e(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    const/4 v0, 0x1

    new-array v5, v0, [F

    iget-object v0, p0, Lcom/guochao/faceshow/views/Love;->b:[F

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x4

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    aput v0, v5, v1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/views/Love;->d(Landroid/view/View;JJ[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x0

    move-object v0, v8

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/views/Love;->b(Landroid/view/View;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    iget v0, p0, Lcom/guochao/faceshow/views/Love;->c:F

    mul-float v2, v0, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v3, v0, v11

    const-string v1, "scaleX"

    const-wide/16 v4, 0x32

    const-wide/16 v6, 0x96

    move-object v0, v8

    .line 13
    invoke-static/range {v0 .. v7}, Lcom/guochao/faceshow/views/Love;->e(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    iget v0, p0, Lcom/guochao/faceshow/views/Love;->c:F

    mul-float v2, v0, v10

    mul-float v3, v0, v11

    const-string v1, "scaleY"

    move-object v0, v8

    .line 14
    invoke-static/range {v0 .. v7}, Lcom/guochao/faceshow/views/Love;->e(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    const/4 v1, 0x0

    const/high16 v2, -0x3bea0000    # -600.0f

    const-wide/16 v3, 0x320

    const-wide/16 v5, 0x190

    move-object v0, v8

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/views/Love;->f(Landroid/view/View;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    move-object v0, v8

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/views/Love;->b(Landroid/view/View;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    iget v0, p0, Lcom/guochao/faceshow/views/Love;->c:F

    mul-float v2, v0, v11

    const/high16 v10, 0x40400000    # 3.0f

    mul-float v3, v0, v10

    const-string v1, "scaleX"

    const-wide/16 v4, 0x2bc

    const-wide/16 v6, 0x190

    move-object v0, v8

    .line 17
    invoke-static/range {v0 .. v7}, Lcom/guochao/faceshow/views/Love;->e(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    iget v0, p0, Lcom/guochao/faceshow/views/Love;->c:F

    mul-float v2, v0, v11

    mul-float v3, v0, v10

    const-string v1, "scaleY"

    move-object v0, v8

    .line 18
    invoke-static/range {v0 .. v7}, Lcom/guochao/faceshow/views/Love;->e(Landroid/view/View;Ljava/lang/String;FFJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 19
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 20
    new-instance v0, Lcom/guochao/faceshow/views/Love$a;

    invoke-direct {v0, p0, v8}, Lcom/guochao/faceshow/views/Love$a;-><init>(Lcom/guochao/faceshow/views/Love;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
