.class public Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private A:F

.field private B:I

.field B3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private C4:Lcom/guochao/faceshow/aaspring/views/k;

.field private D:I

.field private E:F

.field private F:F

.field private G:Z

.field H:F

.field I:F

.field J:F

.field K:Z

.field L:Landroid/graphics/Paint;

.field M:Landroid/graphics/RectF;

.field N:Landroid/graphics/RectF;

.field O:Landroid/graphics/Rect;

.field P:Landroid/graphics/RectF;

.field Q:Landroid/graphics/Rect;

.field R:Lcom/guochao/faceshow/aaspring/views/r;

.field V1:Lcom/guochao/faceshow/aaspring/views/r;

.field V2:Landroid/graphics/Bitmap;

.field private V3:I

.field private a:I

.field a1:Lcom/guochao/faceshow/aaspring/views/r;

.field a2:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[Ljava/lang/CharSequence;

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:F

.field private v:I

.field private w:Z

.field private x:I

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->G:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->K:Z

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->L:Landroid/graphics/Paint;

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->M:Landroid/graphics/RectF;

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->N:Landroid/graphics/RectF;

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->O:Landroid/graphics/Rect;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->P:Landroid/graphics/RectF;

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B3:Ljava/util/List;

    .line 12
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e(Landroid/util/AttributeSet;)V

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->f()V

    .line 14
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->h(Landroid/util/AttributeSet;)V

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->i()V

    return-void
.end method

.method private b(Z)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    if-eqz p1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    :cond_0
    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/views/r;->J(Z)V

    .line 4
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/r;->J(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/r;->J(Z)V

    .line 7
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    if-ne p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/r;->J(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e(Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/R$styleable;->RangeSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0x12

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->E:F

    const/16 v0, 0xf

    const/high16 v2, 0x42c80000    # 100.0f

    .line 4
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->F:F

    const/16 v0, 0x11

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->u:F

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->v:I

    const/16 v2, 0x13

    const v3, -0xb4269e    # -2.70962E38f

    .line 7
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->o:I

    const/16 v2, 0x18

    const/high16 v3, -0x40800000    # -1.0f

    .line 8
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->n:F

    const/16 v2, 0x14

    const v3, -0x282829

    .line 9
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->p:I

    const/16 v2, 0x15

    .line 10
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->q:I

    const/16 v2, 0x16

    .line 11
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->r:I

    const/16 v2, 0x17

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/views/t;->b(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    const/16 v2, 0x28

    .line 13
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->f:I

    const/16 v2, 0x25

    const/4 v3, 0x1

    .line 14
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->i:I

    const/16 v2, 0x27

    .line 15
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->j:I

    const/16 v2, 0x2a

    .line 16
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->m:[Ljava/lang/CharSequence;

    const/16 v2, 0x2c

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v4, v5}, Lcom/guochao/faceshow/aaspring/views/t;->b(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->g:I

    const/16 v2, 0x2d

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lcom/guochao/faceshow/aaspring/views/t;->b(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->h:I

    .line 19
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->p:I

    const/16 v4, 0x2b

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->k:I

    .line 20
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->o:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->l:I

    const/16 v2, 0x1f

    .line 21
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B:I

    const/16 v2, 0x1a

    const v4, -0x626263

    .line 22
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->x:I

    const/16 v2, 0x1d

    .line 23
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->A:F

    const/16 v2, 0x1e

    .line 24
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->y:F

    const/16 v2, 0x1c

    .line 25
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->z:F

    const/16 v1, 0x1b

    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->D:I

    const/16 v0, 0x19

    .line 27
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C:Z

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->L:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a2:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->q:I

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/views/t;->f(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a2:Landroid/graphics/Bitmap;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V2:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->r:I

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/views/t;->f(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V2:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private h(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/r;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/r;-><init>(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/r;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/views/r;-><init>(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/r;->S(Z)V

    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->D:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->y:F

    float-to-int v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->z:F

    float-to-int v2, v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->D:I

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/views/t;->f(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B:I

    if-gt v1, v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B3:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->x()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->K:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->K:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->H()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->x()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->K:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->K:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->I()V

    :cond_0
    return-void
.end method

.method private t()Z
    .locals 3

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->z:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->y:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected a(F)F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressRight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move v1, v0

    .line 5
    :goto_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    if-ne p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iget p1, p1, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->J:F

    sub-float v2, p1, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    sub-float v1, p1, v0

    goto :goto_1

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    if-ne p1, v2, :cond_4

    .line 9
    iget p1, v0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->J:F

    add-float v2, p1, v0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    add-float v1, p1, v0

    :cond_4
    :goto_1
    return v1
.end method

.method protected c(Landroid/view/MotionEvent;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method protected d(Landroid/view/MotionEvent;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->v:I

    return v0
.end method

.method public getLeftSeekBar()Lcom/guochao/faceshow/aaspring/views/r;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    return-object v0
.end method

.method public getMaxProgress()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->F:F

    return v0
.end method

.method public getMinInterval()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->u:F

    return v0
.end method

.method public getMinProgress()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->E:F

    return v0
.end method

.method public getProgressBottom()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->b:I

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->o:I

    return v0
.end method

.method public getProgressDefaultColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->p:I

    return v0
.end method

.method public getProgressDefaultDrawableId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->r:I

    return v0
.end method

.method public getProgressDrawableId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->q:I

    return v0
.end method

.method public getProgressHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    return v0
.end method

.method public getProgressLeft()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->c:I

    return v0
.end method

.method public getProgressPaddingRight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V3:I

    return v0
.end method

.method public getProgressRadius()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->n:F

    return v0
.end method

.method public getProgressRight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->d:I

    return v0
.end method

.method public getProgressTop()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a:I

    return v0
.end method

.method public getProgressWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t:I

    return v0
.end method

.method public getRangeSeekBarState()[Lcom/guochao/faceshow/aaspring/views/s;
    .locals 6

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/s;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/s;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/r;->s()F

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/s;->a:Ljava/lang/String;

    .line 4
    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->E:F

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/views/t;->a(FF)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 5
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/s;->c:Z

    goto :goto_0

    .line 6
    :cond_0
    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->F:F

    invoke-static {v1, v3}, Lcom/guochao/faceshow/aaspring/views/t;->a(FF)I

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iput-boolean v2, v0, Lcom/guochao/faceshow/aaspring/views/s;->d:Z

    .line 8
    :cond_1
    :goto_0
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/s;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/views/s;-><init>()V

    .line 9
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/r;->s()F

    move-result v3

    iput v3, v1, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    .line 11
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/guochao/faceshow/aaspring/views/s;->a:Ljava/lang/String;

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iget v3, v3, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->E:F

    invoke-static {v3, v5}, Lcom/guochao/faceshow/aaspring/views/t;->a(FF)I

    move-result v3

    if-nez v3, :cond_2

    .line 13
    iput-boolean v2, v1, Lcom/guochao/faceshow/aaspring/views/s;->c:Z

    goto :goto_1

    .line 14
    :cond_2
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iget v3, v3, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->F:F

    invoke-static {v3, v5}, Lcom/guochao/faceshow/aaspring/views/t;->a(FF)I

    move-result v3

    if-nez v3, :cond_3

    .line 15
    iput-boolean v2, v1, Lcom/guochao/faceshow/aaspring/views/s;->d:Z

    :cond_3
    :goto_1
    new-array v3, v4, [Lcom/guochao/faceshow/aaspring/views/s;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v2

    return-object v3
.end method

.method protected getRawHeight()F
    .locals 5

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->t()F

    move-result v0

    .line 3
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->j:I

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->m:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/r;->w()F

    move-result v1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkRawHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/r;->w()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->t()F

    move-result v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/r;->t()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 7
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->j:I

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->m:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/r;->w()F

    move-result v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/r;->w()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 9
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkRawHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 10
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method public getRightSeekBar()Lcom/guochao/faceshow/aaspring/views/r;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    return-object v0
.end method

.method public getSeekBarMode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    return v0
.end method

.method public getSteps()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B:I

    return v0
.end method

.method public getStepsBitmaps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B3:Ljava/util/List;

    return-object v0
.end method

.method public getStepsColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->x:I

    return v0
.end method

.method public getStepsDrawableId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->D:I

    return v0
.end method

.method public getStepsHeight()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->z:F

    return v0
.end method

.method public getStepsRadius()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->A:F

    return v0
.end method

.method public getStepsWidth()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->y:F

    return v0
.end method

.method public getTickMarkGravity()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->i:I

    return v0
.end method

.method public getTickMarkInRangeTextColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->l:I

    return v0
.end method

.method public getTickMarkLayoutGravity()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->j:I

    return v0
.end method

.method public getTickMarkMode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->f:I

    return v0
.end method

.method protected getTickMarkRawHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->m:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 2
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->g:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->h:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/t;->g(Ljava/lang/String;F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x3

    return v2

    :cond_0
    return v1
.end method

.method public getTickMarkTextArray()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->m:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTickMarkTextColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->k:I

    return v0
.end method

.method public getTickMarkTextMargin()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->g:I

    return v0
.end method

.method public getTickMarkTextSize()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->h:I

    return v0
.end method

.method protected j(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V2:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/t;->i(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V2:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->p:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->M:Landroid/graphics/RectF;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->n:F

    invoke-virtual {p1, v0, v2, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressTop()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->N:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iget v5, v4, Lcom/guochao/faceshow/aaspring/views/r;->u:I

    int-to-float v5, v5

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/views/r;->y()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iget v6, v6, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    mul-float v4, v4, v6

    add-float/2addr v5, v4

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->N:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iget v5, v4, Lcom/guochao/faceshow/aaspring/views/r;->u:I

    int-to-float v5, v5

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/views/r;->y()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    mul-float v3, v3, v4

    add-float/2addr v5, v3

    iput v5, v0, Landroid/graphics/RectF;->right:F

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressBottom()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressTop()I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->N:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iget v5, v4, Lcom/guochao/faceshow/aaspring/views/r;->u:I

    int-to-float v5, v5

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/views/r;->y()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->N:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iget v5, v4, Lcom/guochao/faceshow/aaspring/views/r;->u:I

    int-to-float v5, v5

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/views/r;->y()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v5, v4

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    mul-float v3, v3, v4

    add-float/2addr v5, v3

    iput v5, v0, Landroid/graphics/RectF;->right:F

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressBottom()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a2:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/t;->i(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->O:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 16
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a2:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a2:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 18
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    if-ne v3, v2, :cond_2

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->O:Landroid/graphics/Rect;

    int-to-float p2, p2

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iget v2, v2, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    mul-float v2, v2, p2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 20
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iget v2, v2, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    mul-float p2, p2, v2

    float-to-int p2, p2

    iput p2, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 21
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->O:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, v2, Landroid/graphics/Rect;->right:I

    .line 23
    :goto_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a2:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->O:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->N:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 24
    :cond_3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->o:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->N:Landroid/graphics/RectF;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->n:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method protected k(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->o()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/r;->O(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/r;->b(Landroid/graphics/Canvas;)V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->o()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/r;->O(Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/r;->b(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method protected l(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressWidth()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B:I

    div-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->z:F

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B:I

    if-gt v3, v4, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v4

    mul-int v5, v3, v0

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->y:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->P:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->y:F

    add-float/2addr v7, v4

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressBottom()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B3:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B3:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B3:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->P:Landroid/graphics/RectF;

    invoke-virtual {p1, v4, v5, v6, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->x:I

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->P:Landroid/graphics/RectF;

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->A:F

    invoke-virtual {p1, v4, v5, v5, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected m(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->m:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t:I

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    div-int/2addr v1, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->m:[Ljava/lang/CharSequence;

    array-length v5, v4

    if-ge v3, v5, :cond_6

    .line 4
    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v0, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 7
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->k:I

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->f:I

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x2

    if-ne v5, v2, :cond_3

    .line 9
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->i:I

    if-ne v5, v7, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v6, v3, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_1
    int-to-float v5, v5

    goto :goto_2

    :cond_1
    if-ne v5, v2, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v7, v3, v1

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v5

    mul-int v6, v3, v1

    add-int/2addr v5, v6

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/views/t;->h(Ljava/lang/String;)F

    move-result v5

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getRangeSeekBarState()[Lcom/guochao/faceshow/aaspring/views/s;

    move-result-object v8

    .line 15
    aget-object v9, v8, v0

    iget v9, v9, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    invoke-static {v5, v9}, Lcom/guochao/faceshow/aaspring/views/t;->a(FF)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    aget-object v8, v8, v2

    iget v8, v8, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    invoke-static {v5, v8}, Lcom/guochao/faceshow/aaspring/views/t;->a(FF)I

    move-result v8

    if-eq v8, v2, :cond_4

    iget v8, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    if-ne v8, v7, :cond_4

    .line 16
    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->l:I

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t:I

    int-to-float v8, v8

    iget v9, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->E:F

    sub-float/2addr v5, v9

    mul-float v8, v8, v5

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->F:F

    sub-float/2addr v5, v9

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float v5, v7, v5

    .line 19
    :goto_2
    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->j:I

    if-nez v6, :cond_5

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressTop()I

    move-result v6

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->g:I

    sub-int/2addr v6, v7

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressBottom()I

    move-result v6

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->g:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->Q:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    :goto_3
    int-to-float v6, v6

    .line 22
    invoke-virtual {p1, v4, v5, v6, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected n(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->v:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-nez p2, :cond_4

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/r;->o()I

    move-result p2

    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/r;->o()I

    move-result p2

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/r;->n()I

    move-result p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->n()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->w()F

    move-result v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/views/r;->w()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 7
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    int-to-float v4, v2

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    int-to-float v2, v2

    sub-float v2, v0, v2

    div-float/2addr v2, v3

    add-float/2addr v2, p2

    float-to-int v2, v2

    .line 8
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a:I

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->m:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->j:I

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkRawHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a:I

    .line 11
    :cond_3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a:I

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->b:I

    goto :goto_3

    :cond_4
    if-ne p2, v2, :cond_6

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->m:[Ljava/lang/CharSequence;

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->j:I

    if-ne p2, v2, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkRawHeight()I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->b:I

    goto :goto_2

    :cond_5
    int-to-float p2, v0

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->w()F

    move-result v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/views/r;->w()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v3

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->b:I

    .line 15
    :goto_2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->b:I

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a:I

    goto :goto_3

    .line 16
    :cond_6
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a:I

    add-int/2addr v0, p2

    .line 17
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->b:I

    .line 18
    :goto_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/r;->y()F

    move-result p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->y()F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    .line 19
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->c:I

    sub-int p2, p1, p2

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->d:I

    .line 21
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->c:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t:I

    .line 22
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->M:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 23
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->d:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V3:I

    .line 24
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->n:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_7

    .line 25
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressBottom()I

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressTop()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const p2, 0x3ee66666    # 0.45f

    mul-float p1, p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->n:F

    .line 26
    :cond_7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->g()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->m(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->j(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->l(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->k(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_0

    .line 3
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_2

    :cond_0
    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    if-ne v0, p2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_2

    .line 6
    :cond_1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->v:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->m:[Ljava/lang/CharSequence;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->j:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getRawHeight()F

    move-result p2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getTickMarkRawHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getRawHeight()F

    move-result p2

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/views/r;->w()F

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/r;->w()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float/2addr v2, v0

    :goto_0
    sub-float/2addr p2, v2

    mul-float p2, p2, v0

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getRawHeight()F

    move-result p2

    :goto_1
    float-to-int p2, p2

    .line 11
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 12
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    :try_start_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/views/SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p1, Lcom/guochao/faceshow/aaspring/views/SavedState;->minValue:F

    .line 4
    iget v1, p1, Lcom/guochao/faceshow/aaspring/views/SavedState;->maxValue:F

    .line 5
    iget v2, p1, Lcom/guochao/faceshow/aaspring/views/SavedState;->rangeInterval:F

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s(FFF)V

    .line 7
    iget v0, p1, Lcom/guochao/faceshow/aaspring/views/SavedState;->currSelectedMin:F

    .line 8
    iget p1, p1, Lcom/guochao/faceshow/aaspring/views/SavedState;->currSelectedMax:F

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->q(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/SavedState;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/views/SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->E:F

    iput v0, v1, Lcom/guochao/faceshow/aaspring/views/SavedState;->minValue:F

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->F:F

    iput v0, v1, Lcom/guochao/faceshow/aaspring/views/SavedState;->maxValue:F

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->u:F

    iput v0, v1, Lcom/guochao/faceshow/aaspring/views/SavedState;->rangeInterval:F

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getRangeSeekBarState()[Lcom/guochao/faceshow/aaspring/views/s;

    move-result-object v0

    const/4 v2, 0x0

    .line 7
    aget-object v2, v0, v2

    iget v2, v2, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    iput v2, v1, Lcom/guochao/faceshow/aaspring/views/SavedState;->currSelectedMin:F

    const/4 v2, 0x1

    .line 8
    aget-object v0, v0, v2

    iget v0, v0, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    iput v0, v1, Lcom/guochao/faceshow/aaspring/views/SavedState;->currSelectedMax:F

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->n(II)V

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->E:F

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->F:F

    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->u:F

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s(FFF)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressBottom()I

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressTop()I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x2

    div-int/2addr p1, p2

    .line 5
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result p4

    invoke-virtual {p3, p4, p1}, Lcom/guochao/faceshow/aaspring/views/r;->G(II)V

    .line 6
    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    if-ne p3, p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lcom/guochao/faceshow/aaspring/views/r;->G(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->G:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_18

    if-eq v0, v1, :cond_11

    if-eq v0, v3, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto/16 :goto_6

    .line 3
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    if-ne v0, v3, :cond_2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/r;->O(Z)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    if-ne v0, v2, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->o()V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    if-ne v0, v2, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->o()V

    .line 9
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/r;->O(Z)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C4:Lcom/guochao/faceshow/aaspring/views/k;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getRangeSeekBarState()[Lcom/guochao/faceshow/aaspring/views/s;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C4:Lcom/guochao/faceshow/aaspring/views/k;

    aget-object v3, v0, v4

    iget v3, v3, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    aget-object v0, v0, v1

    iget v0, v0, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    invoke-interface {v2, p0, v3, v0, v4}, Lcom/guochao/faceshow/aaspring/views/k;->c(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;FFZ)V

    .line 13
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 15
    :cond_6
    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->b(Z)V

    goto/16 :goto_6

    .line 16
    :cond_7
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->c(Landroid/view/MotionEvent;)F

    move-result v0

    .line 17
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    if-ne v5, v3, :cond_d

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iget v3, v3, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iget v5, v5, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_d

    .line 18
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/r;->D()V

    .line 19
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C4:Lcom/guochao/faceshow/aaspring/views/k;

    if-eqz v3, :cond_9

    .line 20
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    if-ne v5, v6, :cond_8

    const/4 v5, 0x1

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3, p0, v5}, Lcom/guochao/faceshow/aaspring/views/k;->b(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Z)V

    .line 21
    :cond_9
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->H:F

    sub-float v3, v0, v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_a

    .line 22
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    if-eq v3, v5, :cond_b

    .line 23
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/r;->O(Z)V

    .line 24
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->o()V

    .line 25
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    goto :goto_2

    .line 26
    :cond_a
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    if-eq v3, v5, :cond_b

    .line 27
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/r;->O(Z)V

    .line 28
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->o()V

    .line 29
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    .line 30
    :cond_b
    :goto_2
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C4:Lcom/guochao/faceshow/aaspring/views/k;

    if-eqz v3, :cond_d

    .line 31
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    if-ne v5, v6, :cond_c

    const/4 v5, 0x1

    goto :goto_3

    :cond_c
    const/4 v5, 0x0

    :goto_3
    invoke-interface {v3, p0, v5}, Lcom/guochao/faceshow/aaspring/views/k;->a(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Z)V

    .line 32
    :cond_d
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->p()V

    .line 33
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    iget v5, v3, Lcom/guochao/faceshow/aaspring/views/r;->z:F

    cmpl-float v6, v5, v2

    if-ltz v6, :cond_e

    goto :goto_4

    :cond_e
    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v5

    :goto_4
    iput v2, v3, Lcom/guochao/faceshow/aaspring/views/r;->z:F

    .line 34
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->H:F

    .line 35
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a(F)F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/guochao/faceshow/aaspring/views/r;->T(F)V

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/r;->O(Z)V

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C4:Lcom/guochao/faceshow/aaspring/views/k;

    if-eqz v0, :cond_f

    .line 38
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getRangeSeekBarState()[Lcom/guochao/faceshow/aaspring/views/s;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C4:Lcom/guochao/faceshow/aaspring/views/k;

    aget-object v3, v0, v4

    iget v3, v3, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    aget-object v0, v0, v1

    iget v0, v0, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    invoke-interface {v2, p0, v3, v0, v1}, Lcom/guochao/faceshow/aaspring/views/k;->c(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;FFZ)V

    .line 40
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 43
    :cond_10
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->b(Z)V

    goto/16 :goto_6

    .line 44
    :cond_11
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C:Z

    if-eqz v0, :cond_12

    .line 45
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->c(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a(F)F

    move-result v0

    .line 46
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 47
    new-instance v5, Ljava/math/BigDecimal;

    div-float/2addr v0, v2

    float-to-double v6, v0

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v5, v4, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    .line 48
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    int-to-float v0, v0

    mul-float v0, v0, v2

    invoke-virtual {v5, v0}, Lcom/guochao/faceshow/aaspring/views/r;->T(F)V

    .line 49
    :cond_12
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    if-ne v0, v3, :cond_13

    .line 50
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/r;->O(Z)V

    .line 51
    :cond_13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/r;->O(Z)V

    .line 52
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->D()V

    .line 53
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->o()V

    .line 54
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C4:Lcom/guochao/faceshow/aaspring/views/k;

    if-eqz v0, :cond_14

    .line 55
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getRangeSeekBarState()[Lcom/guochao/faceshow/aaspring/views/s;

    move-result-object v0

    .line 56
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C4:Lcom/guochao/faceshow/aaspring/views/k;

    aget-object v3, v0, v4

    iget v3, v3, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    aget-object v0, v0, v1

    iget v0, v0, Lcom/guochao/faceshow/aaspring/views/s;->b:F

    invoke-interface {v2, p0, v3, v0, v4}, Lcom/guochao/faceshow/aaspring/views/k;->c(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;FFZ)V

    .line 57
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 59
    :cond_15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C4:Lcom/guochao/faceshow/aaspring/views/k;

    if-eqz v0, :cond_17

    .line 60
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    if-ne v2, v3, :cond_16

    goto :goto_5

    :cond_16
    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/views/k;->b(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Z)V

    .line 61
    :cond_17
    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->b(Z)V

    .line 62
    :goto_6
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 63
    :cond_18
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->H:F

    .line 64
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->d(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->I:F

    .line 65
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    if-ne v0, v3, :cond_1c

    .line 66
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_19

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->c(Landroid/view/MotionEvent;)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->d(Landroid/view/MotionEvent;)F

    move-result v5

    invoke-virtual {v0, v3, v5}, Lcom/guochao/faceshow/aaspring/views/r;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 67
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    .line 68
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->p()V

    goto :goto_8

    .line 69
    :cond_19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->c(Landroid/view/MotionEvent;)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->d(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-virtual {v0, v3, p1}, Lcom/guochao/faceshow/aaspring/views/r;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 70
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    .line 71
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->p()V

    goto :goto_8

    .line 72
    :cond_1a
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->H:F

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getProgressLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    mul-float p1, p1, v2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 73
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 74
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iget v2, v2, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1b

    .line 75
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    goto :goto_7

    .line 76
    :cond_1b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    .line 77
    :goto_7
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->H:F

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a(F)F

    move-result p1

    .line 78
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/r;->T(F)V

    goto :goto_8

    .line 79
    :cond_1c
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    .line 80
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->p()V

    .line 81
    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 83
    :cond_1d
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C4:Lcom/guochao/faceshow/aaspring/views/k;

    if-eqz p1, :cond_1f

    .line 84
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V1:Lcom/guochao/faceshow/aaspring/views/r;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    if-ne v0, v2, :cond_1e

    const/4 v4, 0x1

    :cond_1e
    invoke-interface {p1, p0, v4}, Lcom/guochao/faceshow/aaspring/views/k;->a(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Z)V

    .line 85
    :cond_1f
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->b(Z)V

    return v1
.end method

.method public q(FF)V
    .locals 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-float v0, p2, p1

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->u:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sub-float p1, p2, v1

    .line 4
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->E:F

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_4

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->F:F

    cmpl-float v2, p2, v1

    if-gtz v2, :cond_3

    sub-float/2addr v1, v0

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v1

    iput v0, v2, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->E:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v1

    iput v2, v0, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C4:Lcom/guochao/faceshow/aaspring/views/k;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, p0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/views/k;->c(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;FFZ)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress() max > (preset max - offsetValue) . #max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " #preset max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress() min < (preset min - offsetValue) . #min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " #preset min:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r(FF)V
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->u:F

    invoke-virtual {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s(FFF)V

    return-void
.end method

.method public s(FFF)V
    .locals 4

    cmpg-float v0, p2, p1

    if-lez v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_3

    sub-float v1, p2, p1

    cmpl-float v2, p3, v1

    if-gez v2, :cond_2

    .line 1
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->F:F

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->E:F

    .line 3
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->u:F

    div-float/2addr p3, v1

    .line 4
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->J:F

    .line 5
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    iget p2, p1, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    add-float v1, p2, p3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    add-float v1, p2, p3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iget v3, v2, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    add-float/2addr p2, p3

    .line 7
    iput p2, v2, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    sub-float v2, v1, p3

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    sub-float v0, v1, p3

    cmpg-float p2, v0, p2

    if-gez p2, :cond_1

    sub-float/2addr v1, p3

    .line 9
    iput v1, p1, Lcom/guochao/faceshow/aaspring/views/r;->y:F

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRange() interval must be less than (max - min) ! #minInterval:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " #max - min:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRange() interval must be greater than zero ! #minInterval:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRange() max must be greater than min ! #max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " #min:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setEnableThumbOverlap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->w:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->G:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->v:I

    return-void
.end method

.method public setIndicatorText(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/r;->L(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/r;->L(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIndicatorTextDecimalFormat(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/r;->M(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/r;->M(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setIndicatorTextStringFormat(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/r;->N(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/r;->N(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnRangeChangedListener(Lcom/guochao/faceshow/aaspring/views/k;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C4:Lcom/guochao/faceshow/aaspring/views/k;

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->F:F

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->q(FF)V

    return-void
.end method

.method public setProgressBottom(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->b:I

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->o:I

    return-void
.end method

.method public setProgressDefaultColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->p:I

    return-void
.end method

.method public setProgressDefaultDrawableId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->r:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->V2:Landroid/graphics/Bitmap;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->g()V

    return-void
.end method

.method public setProgressDrawableId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->q:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a2:Landroid/graphics/Bitmap;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->g()V

    return-void
.end method

.method public setProgressHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->s:I

    return-void
.end method

.method public setProgressLeft(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->c:I

    return-void
.end method

.method public setProgressRadius(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->n:F

    return-void
.end method

.method public setProgressRight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->d:I

    return-void
.end method

.method public setProgressTop(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a:I

    return-void
.end method

.method public setProgressWidth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t:I

    return-void
.end method

.method public setSeekBarMode(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->e:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->a1:Lcom/guochao/faceshow/aaspring/views/r;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/r;->S(Z)V

    return-void
.end method

.method public setSteps(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B:I

    return-void
.end method

.method public setStepsAutoBonding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->C:Z

    return-void
.end method

.method public setStepsBitmaps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B:I

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B3:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepsBitmaps must > steps !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStepsColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->x:I

    return-void
.end method

.method public setStepsDrawable(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B:I

    if-le v0, v1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->y:F

    float-to-int v3, v3

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->z:F

    float-to-int v4, v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/views/t;->f(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->setStepsBitmaps(Ljava/util/List;)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepsWidth must > 0, stepsHeight must > 0,steps must > 0 First!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stepsDrawableIds must > steps !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStepsDrawableId(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->B3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->D:I

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->i()V

    return-void
.end method

.method public setStepsHeight(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->z:F

    return-void
.end method

.method public setStepsRadius(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->A:F

    return-void
.end method

.method public setStepsWidth(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->y:F

    return-void
.end method

.method public setTickMarkGravity(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->i:I

    return-void
.end method

.method public setTickMarkInRangeTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->l:I

    return-void
.end method

.method public setTickMarkLayoutGravity(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->j:I

    return-void
.end method

.method public setTickMarkMode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->f:I

    return-void
.end method

.method public setTickMarkTextArray([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->m:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setTickMarkTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->k:I

    return-void
.end method

.method public setTickMarkTextMargin(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->g:I

    return-void
.end method

.method public setTickMarkTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->h:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->L:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->R:Lcom/guochao/faceshow/aaspring/views/r;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/r;->R(Ljava/lang/String;)V

    return-void
.end method
