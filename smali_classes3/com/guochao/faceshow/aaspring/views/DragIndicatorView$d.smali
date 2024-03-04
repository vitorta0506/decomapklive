.class final Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field private h:Landroid/graphics/Path;

.field i:Z

.field j:F

.field k:F

.field l:F

.field m:F

.field n:Landroid/animation/ValueAnimator;

.field final synthetic o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->h:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->l:F

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->m:F

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->e(FF)V

    return-void
.end method

.method private e(FF)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->j:F

    .line 2
    iput v2, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->k:F

    .line 3
    iget v3, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->b:F

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_0

    .line 4
    iget v4, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->a:F

    sub-float v4, v1, v4

    sub-float v3, v2, v3

    goto :goto_0

    .line 5
    :cond_0
    iget v4, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->a:F

    sub-float/2addr v4, v1

    sub-float/2addr v3, v2

    :goto_0
    mul-float v5, v4, v4

    mul-float v3, v3, v3

    add-float/2addr v5, v3

    float-to-double v5, v5

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 7
    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->d(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->e(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)F

    move-result v6

    mul-float v6, v6, v3

    sub-float/2addr v5, v6

    iput v5, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c:F

    const v6, 0x3e4ccccd    # 0.2f

    .line 8
    iget-object v7, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v7}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->d(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    .line 9
    iput v6, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c:F

    .line 10
    :cond_1
    iget v5, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    div-float/2addr v4, v3

    float-to-double v4, v4

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v6, v4

    .line 12
    iget v8, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->a:F

    float-to-double v8, v8

    iget v10, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c:F

    float-to-double v10, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v10, v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    .line 13
    iget v9, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->b:F

    float-to-double v9, v9

    iget v11, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c:F

    float-to-double v11, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    add-double/2addr v9, v11

    double-to-float v9, v9

    .line 14
    iget v10, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->a:F

    float-to-double v10, v10

    iget v12, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c:F

    float-to-double v12, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v12, v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    .line 15
    iget v11, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->b:F

    float-to-double v11, v11

    iget v13, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c:F

    float-to-double v13, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v13, v13, v15

    add-double/2addr v11, v13

    double-to-float v11, v11

    float-to-double v12, v1

    .line 16
    iget-object v14, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v14}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->d(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)I

    move-result v14

    int-to-double v14, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v14, v12

    double-to-float v14, v14

    move/from16 v16, v14

    float-to-double v14, v2

    move/from16 v17, v3

    .line 17
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->d(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)I

    move-result v3

    int-to-double v2, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v2, v14

    double-to-float v2, v2

    .line 18
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->d(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)I

    move-result v3

    int-to-double v3, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v3, v3, v18

    add-double/2addr v12, v3

    double-to-float v3, v12

    .line 19
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->d(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    add-double/2addr v14, v4

    double-to-float v4, v14

    .line 20
    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->h:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 21
    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->h:Landroid/graphics/Path;

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 22
    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->h:Landroid/graphics/Path;

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->h:Landroid/graphics/Path;

    iget v6, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->a:F

    add-float/2addr v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget v10, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->b:F

    add-float v10, v10, p2

    div-float/2addr v10, v7

    invoke-virtual {v5, v6, v10, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 24
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->h:Landroid/graphics/Path;

    move/from16 v4, v16

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->h:Landroid/graphics/Path;

    iget v3, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->a:F

    add-float/2addr v3, v1

    div-float/2addr v3, v7

    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->b:F

    add-float v1, v1, p2

    div-float/2addr v1, v7

    invoke-virtual {v2, v3, v1, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 26
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->h:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 27
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->f(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 28
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->f(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    move-result-object v1

    iget v2, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->j:F

    iget v3, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->f:F

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setX(F)V

    .line 29
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->f(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    move-result-object v1

    iget v2, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->k:F

    iget v3, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->g:F

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setY(F)V

    :cond_2
    move/from16 v1, v17

    .line 30
    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->l:F

    goto :goto_1

    .line 31
    :cond_3
    iput v6, v0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->l:F

    .line 32
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public b(FFFFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->a:F

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->b:F

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->d:F

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->e:F

    .line 5
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c:F

    .line 6
    iput p4, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->f:F

    .line 7
    iput p5, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->g:F

    return-void
.end method

.method public c()V
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->i:Z

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->l:F

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->m:F

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->n:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    :cond_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$a;-><init>(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->j:F

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->k:F

    invoke-direct {v4, v5, v6}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;-><init>(FF)V

    aput-object v4, v2, v3

    new-instance v3, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->a:F

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->b:F

    invoke-direct {v3, v4, v5}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;-><init>(FF)V

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->n:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$b;-><init>(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$c;-><init>(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public d(FF)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->d:F

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->e:F

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->f:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->g:F

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->e(FF)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->b(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->c(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->b(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->c(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->b(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->a:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->b:F

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c:F

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->o:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;->b(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
