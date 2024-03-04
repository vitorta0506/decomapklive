.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Lda/c;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

.field private q:Landroid/animation/ValueAnimator;

.field private r:Landroid/animation/ValueAnimator;

.field private s:Landroid/animation/AnimatorSet;

.field private t:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->l:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0603ca

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->g:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f06034a

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->h:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f06032b

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->i:I

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->m:Ljava/util/List;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->n:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->l(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->m(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->s:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private e(I)I
    .locals 2

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private f(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fc5c28f5c28f5c3L    # 0.17

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-double v1, v0

    const-wide v3, 0x3fa999999999999aL    # 0.05

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    const/16 v1, 0xf

    .line 4
    :cond_1
    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v1

    int-to-float v5, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v3

    int-to-float v7, v2

    add-int/2addr v3, v0

    int-to-float v8, v3

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->d:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v1

    int-to-float v5, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, v1

    int-to-float v6, v4

    add-int/2addr v2, v0

    int-to-float v7, v2

    int-to-float v8, v3

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->d:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    add-int/2addr v2, v1

    int-to-float v6, v2

    add-int/2addr v3, v0

    int-to-float v7, v3

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->d:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v3, v2, v0

    int-to-float v5, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, v1

    int-to-float v6, v4

    add-int/2addr v2, v1

    int-to-float v7, v2

    int-to-float v8, v3

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->d:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v1

    int-to-float v5, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v0

    int-to-float v6, v4

    int-to-float v7, v2

    int-to-float v8, v3

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->d:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 9
    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v1

    int-to-float v5, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v3

    add-int/2addr v2, v0

    int-to-float v7, v2

    add-int/2addr v3, v1

    int-to-float v8, v3

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->d:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v3, v0

    int-to-float v5, v5

    add-int/2addr v2, v1

    int-to-float v6, v2

    int-to-float v7, v3

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->d:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    int-to-float v4, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p2

    add-int/2addr v2, v1

    int-to-float v6, v2

    add-int/2addr p2, v1

    int-to-float v7, p2

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->d:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private g(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->h:I

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->g:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v2, p3

    int-to-float v2, v2

    .line 2
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v3

    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    .line 3
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v12, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v14, v3

    iget-object v15, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4
    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v8, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v11, v3

    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    .line 5
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v9, v1

    move/from16 v1, p4

    int-to-float v11, v1

    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private h(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->o:I

    if-nez v0, :cond_0

    .line 2
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->o:I

    .line 3
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->o:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v2, 0xa

    invoke-direct {v0, v1, v2, p2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f060c

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->q:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->s:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x1388

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->t:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    aput v3, v1, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0xf

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->q:Landroid/animation/ValueAnimator;

    new-array v0, v0, [I

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->t:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0xf

    aput v2, v0, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->r:Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lga/b;

    invoke-direct {v1, p0}, Lga/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->r:Landroid/animation/ValueAnimator;

    new-instance v1, Lga/c;

    invoke-direct {v1, p0}, Lga/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->s:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->s:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->d:Landroid/graphics/Paint;

    .line 3
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->j:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->d:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->e(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->l:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->e:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->p:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->getFrameLineColor()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->e:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->e(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 12
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->e(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private synthetic l(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->o:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic m(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->o:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public d(Lcom/google/zxing/ResultPoint;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->m:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_0

    const/4 v1, 0x0

    add-int/lit8 p1, p1, -0xa

    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->q:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->a:Lda/c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lda/c;->c()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->t:Landroid/graphics/Rect;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->a:Lda/c;

    invoke-virtual {v0}, Lda/c;->d()Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->t:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->j()V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->t:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->g(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->t:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->f(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->t:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->t:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->h(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setCameraManager(Lda/c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->a:Lda/c;

    return-void
.end method

.method public setZxingConfig(Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->p:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->getReactColor()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->j:I

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->getFrameLineColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->getFrameLineColor()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->l:I

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->getScanLineColor()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->k:I

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->k()V

    return-void
.end method
