.class public Lcom/guochao/faceshow/aaspring/views/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Z

.field B:Z

.field C:Landroid/graphics/Bitmap;

.field D:Landroid/graphics/Bitmap;

.field E:Landroid/graphics/Bitmap;

.field F:Landroid/animation/ValueAnimator;

.field G:Ljava/lang/String;

.field H:Z

.field I:Z

.field J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

.field K:Ljava/lang/String;

.field L:Landroid/graphics/Path;

.field M:Landroid/graphics/Rect;

.field N:Landroid/graphics/Rect;

.field O:Landroid/graphics/Paint;

.field P:Ljava/text/DecimalFormat;

.field Q:I

.field R:I

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field t:F

.field u:I

.field v:I

.field w:I

.field x:I

.field y:F

.field z:F


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Landroid/util/AttributeSet;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->z:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->H:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->I:Z

    .line 5
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    .line 8
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->O:Landroid/graphics/Paint;

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    .line 10
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/views/r;->B:Z

    .line 11
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/r;->A(Landroid/util/AttributeSet;)V

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/r;->B()V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->C()V

    return-void
.end method

.method private A(Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->d()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/R$styleable;->RangeSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->d:I

    const/4 v0, 0x3

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->e:I

    const/16 v0, 0xb

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->a:I

    const/4 v0, 0x4

    const/4 v4, -0x1

    .line 5
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->b:I

    const/16 v0, 0xe

    .line 6
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->c:I

    const/16 v0, 0xd

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->d()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v5, v6}, Lcom/guochao/faceshow/aaspring/views/t;->b(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->g:I

    const/16 v0, 0xc

    .line 8
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->h:I

    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->d()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060053

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->j:I

    const/4 v0, 0x7

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->k:I

    const/16 v0, 0x8

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->l:I

    const/16 v0, 0x9

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->m:I

    const/4 v0, 0x6

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->n:I

    .line 14
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->f:I

    const/16 v0, 0x20

    const v3, 0x7f0803c1

    .line 15
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->o:I

    const/16 v0, 0x22

    .line 16
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->p:I

    const/16 v0, 0x24

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->d()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/views/t;->b(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->q:I

    const/16 v0, 0x21

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/views/t;->b(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->r:I

    const/16 v0, 0x23

    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->t:F

    const/16 v0, 0xa

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->i:F

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private B()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->e:I

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/r;->K(I)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->o:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->q:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/r;->r:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/r;->P(III)V

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->p:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->q:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/r;->r:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/r;->Q(III)V

    return-void
.end method


# virtual methods
.method protected C()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->q:I

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->Q:I

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->r:I

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->R:I

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->g:I

    int-to-float v0, v0

    const-string v1, "8"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/views/t;->g(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->b:I

    .line 5
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->f:I

    if-gtz v0, :cond_1

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->q:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->f:I

    :cond_1
    return-void
.end method

.method public D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/r;->z:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->F:Landroid/animation/ValueAnimator;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/r$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/r$a;-><init>(Lcom/guochao/faceshow/aaspring/views/r;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->F:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/r$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/r$b;-><init>(Lcom/guochao/faceshow/aaspring/views/r;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected E(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 10

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->g:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->j:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->l:I

    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->c:I

    if-le v1, v0, :cond_1

    move v0, v1

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->m:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->n:I

    add-int/2addr v1, v3

    .line 8
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->b:I

    if-le v3, v1, :cond_2

    move v1, v3

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->Q:I

    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v7, v0

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 10
    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/r;->x:I

    sub-int/2addr v6, v1

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/r;->R:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/r;->d:I

    sub-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v0

    .line 11
    iput v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    .line 12
    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->E:Landroid/graphics/Bitmap;

    const/4 v5, 0x2

    if-nez v3, :cond_3

    .line 14
    div-int/2addr v4, v5

    .line 15
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->f:I

    sub-int v7, v4, v3

    sub-int v8, v6, v3

    add-int/2addr v3, v4

    .line 16
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 17
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    int-to-float v4, v4

    int-to-float v6, v6

    invoke-virtual {v9, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 18
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    int-to-float v6, v7

    int-to-float v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    int-to-float v3, v3

    invoke-virtual {v4, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 21
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->L:Landroid/graphics/Path;

    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 22
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/r;->f:I

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 23
    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->d()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/views/t;->b(Landroid/content/Context;F)I

    move-result v3

    .line 25
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v6, v5

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    mul-float v7, v7, v8

    float-to-int v7, v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    .line 26
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/2addr v7, v5

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    sub-float/2addr v4, v9

    mul-float v8, v8, v4

    float-to-int v4, v8

    sub-int/2addr v7, v4

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressPaddingRight()I

    move-result v4

    sub-int/2addr v7, v4

    add-int/2addr v7, v3

    if-lez v6, :cond_4

    .line 27
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v6

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 28
    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v6

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    if-lez v7, :cond_5

    .line 29
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 30
    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 31
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->E:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    .line 32
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    invoke-static {p1, p2, v3, v4}, Lcom/guochao/faceshow/aaspring/views/t;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 33
    :cond_6
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->i:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 34
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->i:F

    invoke-virtual {p1, v3, v4, v4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 35
    :cond_7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 36
    :goto_1
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->k:I

    if-lez v3, :cond_8

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    goto :goto_2

    .line 38
    :cond_8
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->l:I

    if-lez v3, :cond_9

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_2

    .line 40
    :cond_9
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/2addr v0, v5

    add-int/2addr v0, v3

    .line 41
    :goto_2
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->m:I

    const/4 v4, 0x1

    if-lez v3, :cond_a

    .line 42
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->m:I

    add-int/2addr v1, v3

    goto :goto_3

    .line 43
    :cond_a
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->n:I

    if-lez v3, :cond_b

    .line 44
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->n:I

    sub-int/2addr v1, v3

    goto :goto_3

    .line 45
    :cond_b
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->N:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/r;->M:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v1, v6

    div-int/2addr v1, v5

    sub-int/2addr v3, v1

    add-int/lit8 v1, v3, 0x1

    .line 46
    :goto_3
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->h:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/r;->s:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v2, "51"

    .line 48
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v0, v0, -0xc

    int-to-float p3, v0

    add-int/lit8 v1, v1, -0x5

    int-to-float v0, v1

    const-string v1, "50+"

    .line 49
    invoke-virtual {p1, v1, p3, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_c
    int-to-float v0, v0

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    .line 50
    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_d
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p3, v3, v2

    .line 51
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/r;->s:Ljava/lang/String;

    aput-object p3, v3, v4

    const-string p3, "%s%s"

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v0, v0, -0xc

    int-to-float v0, v0

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    return-void
.end method

.method protected F(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->D:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->H:Z

    if-nez v4, :cond_0

    .line 2
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressHeight()I

    move-result v5

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/r;->R:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->C:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 4
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressHeight()I

    move-result v5

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/r;->R:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected G(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->C()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/r;->B()V

    int-to-float p1, p1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->y()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->u:I

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->y()F

    move-result v0

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->v:I

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->v()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int p1, p2, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->w:I

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->v()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/r;->x:I

    return-void
.end method

.method public H()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->z()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->Q:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->v()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->R:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressBottom()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->R:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/r;->w:I

    .line 5
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->x:I

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->o:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/r;->Q:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/guochao/faceshow/aaspring/views/r;->P(III)V

    return-void
.end method

.method public I()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->y()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->Q:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->w()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->R:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressBottom()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->R:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/r;->w:I

    .line 5
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->x:I

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->o:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/r;->Q:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/guochao/faceshow/aaspring/views/r;->P(III)V

    return-void
.end method

.method protected J(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->H:Z

    return-void
.end method

.method public K(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->e:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->u()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->E:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->G:Ljava/lang/String;

    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->P:Ljava/text/DecimalFormat;

    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->K:Ljava/lang/String;

    return-void
.end method

.method protected O(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->a:I

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->A:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->A:Z

    goto :goto_0

    .line 4
    :cond_2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->A:Z

    :goto_0
    return-void
.end method

.method public P(III)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->u()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->o:I

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->u()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/guochao/faceshow/aaspring/views/t;->e(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->C:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public Q(III)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->u()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->p:I

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->u()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/guochao/faceshow/aaspring/views/t;->e(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->D:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->s:Ljava/lang/String;

    return-void
.end method

.method public S(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->I:Z

    return-void
.end method

.method protected T(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    return-void
.end method

.method protected a(FF)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->u:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->v:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->w:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->x:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->I:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->u:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->A:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->O:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->G:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/views/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/views/r;->E(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/r;->F(Landroid/graphics/Canvas;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getRangeSeekBarState()[Lcom/guochao/faceshow/aaspring/views/s;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 3
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->B:Z

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->P:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_0

    .line 5
    aget-object p1, v0, v2

    iget p1, p1, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    aget-object p1, v0, v2

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/s;->a:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/r;->P:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_2

    .line 8
    aget-object p1, v0, v3

    iget p1, p1, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_2
    aget-object p1, v0, v3

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/s;->a:Ljava/lang/String;

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->K:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 11
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->f:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->j:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->b:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->d:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->n:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->k:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->l:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->m:I

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->i:F

    return v0
.end method

.method public n()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->b:I

    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->E:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->d:I

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 4
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->f:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->d:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->E:Landroid/graphics/Bitmap;

    const-string v1, "8"

    if-eqz v0, :cond_2

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->g:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/views/t;->g(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->n:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->d:I

    goto :goto_0

    .line 7
    :cond_2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->g:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/views/t;->g(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->n:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->f:I

    goto :goto_0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->a:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->h:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->g:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->c:I

    return v0
.end method

.method public s()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getMaxProgress()F

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getMinProgress()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->J:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getMinProgress()F

    move-result v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public t()F
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->e()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->h()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->w()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public u()Landroid/content/res/Resources;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/r;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->r:I

    return v0
.end method

.method public w()F
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->r:I

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->t:F

    mul-float v0, v0, v1

    return v0
.end method

.method public x()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->t:F

    return v0
.end method

.method public y()F
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->q:I

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/r;->t:F

    mul-float v0, v0, v1

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/r;->q:I

    return v0
.end method
