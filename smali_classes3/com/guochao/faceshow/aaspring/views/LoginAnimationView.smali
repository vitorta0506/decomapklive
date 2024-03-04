.class public Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# static fields
.field public static G:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:F

.field B:Z

.field C:Z

.field private D:I

.field private E:F

.field F:Landroid/animation/ValueAnimator;

.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Paint;

.field f:Landroid/graphics/Matrix;

.field g:Landroid/graphics/Matrix;

.field h:Landroid/graphics/Matrix;

.field i:Landroid/graphics/Matrix;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->G:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->l:I

    const/16 v0, 0x96

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m:I

    const/16 v0, 0x3c

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    const/16 v1, 0xf5

    .line 5
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->o:I

    .line 6
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b(I)D

    move-result-wide v0

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n(I)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->y:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->z:F

    .line 9
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->A:F

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->B:Z

    .line 11
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->C:Z

    .line 12
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->D:I

    const/high16 v0, 0x42c80000    # 100.0f

    .line 13
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->E:F

    .line 14
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->i(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0xa

    .line 16
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->l:I

    const/16 p2, 0x96

    .line 17
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m:I

    const/16 p2, 0x3c

    .line 18
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    const/16 v0, 0xf5

    .line 19
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->o:I

    .line 20
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b(I)D

    move-result-wide v0

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n(I)D

    move-result-wide v2

    double-to-float p2, v2

    float-to-double v2, p2

    div-double/2addr v0, v2

    double-to-float p2, v0

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    const/4 p2, 0x0

    .line 21
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->y:I

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->z:F

    .line 23
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->A:F

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->B:Z

    .line 25
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->C:Z

    .line 26
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->D:I

    const/high16 p2, 0x42c80000    # 100.0f

    .line 27
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->E:F

    .line 28
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->i(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xa

    .line 30
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->l:I

    const/16 p2, 0x96

    .line 31
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m:I

    const/16 p2, 0x3c

    .line 32
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    const/16 p3, 0xf5

    .line 33
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->o:I

    .line 34
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b(I)D

    move-result-wide p2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n(I)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    div-double/2addr p2, v0

    double-to-float p2, p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->y:I

    const/4 p3, 0x0

    .line 36
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->z:F

    .line 37
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->A:F

    const/4 p3, 0x1

    .line 38
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->B:Z

    .line 39
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->C:Z

    .line 40
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->D:I

    const/high16 p2, 0x42c80000    # 100.0f

    .line 41
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->E:F

    .line 42
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->G:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private b(I)D
    .locals 2

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->f:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->q:I

    neg-int v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->z:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->r:I

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->f:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    add-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->f:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->f:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->q:I

    neg-int v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->A:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->r:I

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->f:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    add-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->f:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_1
    :goto_0
    return-void
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->g:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->u:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->z:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->t:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->g:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    add-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->g:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->g:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->u:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->A:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->t:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->g:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    add-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->g:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_1
    :goto_0
    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->h:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->v:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->z:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->t:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->h:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    add-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->h:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->v:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->A:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    mul-float v3, v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->t:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->h:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    add-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_1
    :goto_0
    return-void
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->i:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->s:I

    neg-int v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->z:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->r:I

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->i:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    add-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->i:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->s:I

    neg-int v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->A:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->r:I

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->i:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    add-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_1
    :goto_0
    return-void
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x7d0
    .end array-data
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    return-void
.end method

.method private static l(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->G:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->G:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method private m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    :cond_0
    return-void
.end method

.method private n(I)D
    .locals 2

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method private q(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->E:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    if-lez p1, :cond_0

    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->E:F

    .line 3
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->z:F

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->w:I

    int-to-float v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->B:Z

    if-eqz v1, :cond_1

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->D:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->E:F

    add-float/2addr p1, v1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->z:F

    goto :goto_0

    .line 5
    :cond_1
    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->z:F

    .line 6
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->B:Z

    .line 7
    :goto_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->z:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->x:I

    int-to-float v4, v1

    const/4 v5, 0x1

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_2

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->C:Z

    if-nez p1, :cond_2

    .line 8
    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->A:F

    .line 9
    iput-boolean v5, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->C:Z

    .line 10
    :cond_2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->A:F

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_3

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->B:Z

    if-nez v1, :cond_3

    .line 11
    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->z:F

    .line 12
    iput-boolean v5, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->B:Z

    :cond_3
    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4

    .line 13
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->C:Z

    if-eqz v1, :cond_4

    .line 14
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->D:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->E:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->A:F

    goto :goto_1

    :cond_4
    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 15
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->C:Z

    if-eqz p1, :cond_5

    .line 16
    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->A:F

    .line 17
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->C:Z

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public i(Landroid/content/Context;)V
    .locals 7

    const v0, 0x7f0f03bf

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->l(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->a:Landroid/graphics/Bitmap;

    const v0, 0x7f0f03c0

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->l(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b:Landroid/graphics/Bitmap;

    const v0, 0x7f0f03c1

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->l(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->c:Landroid/graphics/Bitmap;

    const v0, 0x7f0f03c2

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->l(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->d:Landroid/graphics/Bitmap;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->f:Landroid/graphics/Matrix;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->g:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->h:Landroid/graphics/Matrix;

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->i:Landroid/graphics/Matrix;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->j:I

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->k:I

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->o:I

    .line 14
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->j(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    .line 15
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->l:I

    const/16 p1, 0x15e

    .line 16
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m:I

    .line 17
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->j:I

    int-to-double v0, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b(I)D

    move-result-wide v2

    mul-double v0, v0, v2

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->k:I

    div-int/lit8 p1, p1, 0x2

    int-to-double v2, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    rsub-int/lit8 p1, p1, 0x5a

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b(I)D

    move-result-wide v4

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->q:I

    int-to-double v0, p1

    .line 18
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->k:I

    int-to-double v2, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    rsub-int/lit8 p1, p1, 0x5a

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b(I)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->l:I

    mul-int/lit8 p1, p1, 0x2

    int-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->s:I

    .line 19
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->j:I

    int-to-double v0, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n(I)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->r:I

    .line 20
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->o:I

    int-to-double v0, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->k:I

    int-to-double v2, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    rsub-int/lit8 p1, p1, 0x5a

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n(I)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->t:I

    .line 21
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->o:I

    int-to-float p1, p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->k:I

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    float-to-double v3, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    rsub-int/lit8 p1, p1, 0x5a

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b(I)D

    move-result-wide v5

    div-double/2addr v3, v5

    add-double/2addr v0, v3

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->l:I

    int-to-double v3, p1

    add-double/2addr v0, v3

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->k:I

    int-to-double v3, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    rsub-int/lit8 p1, p1, 0x5a

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n(I)D

    move-result-wide v5

    mul-double v3, v3, v5

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p:F

    float-to-double v5, p1

    mul-double v3, v3, v5

    add-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->u:I

    .line 22
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->o:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-double v0, v0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->k:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    float-to-double v2, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    rsub-int/lit8 p1, p1, 0x5a

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b(I)D

    move-result-wide v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->k:I

    int-to-double v2, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    rsub-int/lit8 p1, p1, 0x5a

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->b(I)D

    move-result-wide v4

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->l:I

    int-to-double v2, p1

    sub-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->v:I

    .line 23
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->j:I

    int-to-double v0, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n(I)D

    move-result-wide v2

    mul-double v0, v0, v2

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->k:I

    int-to-double v2, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    rsub-int/lit8 p1, p1, 0x5a

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n(I)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->o:I

    int-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->w:I

    .line 24
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->j:I

    int-to-double v0, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->n(I)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->x:I

    .line 25
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->h()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/a;->a(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/a;->b(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->c()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->d(Landroid/graphics/Canvas;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->g(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->e(Landroid/graphics/Canvas;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->f(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/a;->c(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->k()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/a;->d(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->m()V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/a;->e(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->o()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/a;->f(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->p()V

    return-void
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->y:I

    sub-int v0, p1, v0

    .line 2
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->q(I)V

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->y:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLayHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->o:I

    return-void
.end method
