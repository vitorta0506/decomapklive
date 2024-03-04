.class public Lcom/guochao/faceshow/views/TCReversalSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/TCReversalSeekBar$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:Z

.field private q:F

.field private r:F

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:I

.field private u:F

.field private v:Lcom/guochao/faceshow/views/TCReversalSeekBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->q:F

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->h(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->q:F

    .line 6
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->h(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->q:F

    .line 9
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->h(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->q:F

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->d(F)F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->l:F

    .line 4
    iput v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->m:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->n:F

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->b:I

    int-to-float v0, v0

    iput v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->o:F

    return-void
.end method

.method private b()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->l:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->c(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget v3, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->m:F

    iget v4, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->a:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 4
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->c(F)V

    goto :goto_0

    .line 5
    :cond_1
    iget v3, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->t:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 6
    iget v3, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->h:I

    int-to-float v4, v3

    cmpl-float v4, v0, v4

    if-nez v4, :cond_2

    .line 7
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->c(F)V

    goto :goto_0

    :cond_2
    int-to-float v2, v3

    sub-float/2addr v2, v0

    .line 8
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->h:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float v0, v0, v1

    .line 9
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->c(F)V

    :goto_0
    return-void
.end method

.method private c(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->u:F

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->v:Lcom/guochao/faceshow/views/TCReversalSeekBar$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/views/TCReversalSeekBar$a;->b(F)V

    :cond_0
    return-void
.end method

.method private d(F)F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->l:F

    add-float/2addr v0, p1

    return v0
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->l:F

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->m:F

    add-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->v:Lcom/guochao/faceshow/views/TCReversalSeekBar$a;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/guochao/faceshow/views/TCReversalSeekBar$a;->c()V

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->p:Z

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->r:F

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private f(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 3
    iget-boolean p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->p:Z

    if-eqz p1, :cond_2

    .line 4
    iget p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->r:F

    sub-float p1, v0, p1

    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->q:F

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->a()V

    .line 6
    iget p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->m:F

    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->t:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->c:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->l:F

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->m:F

    .line 9
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->l:F

    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->t:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->d:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1

    .line 10
    iget p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->a:I

    int-to-float v1, p1

    iput v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->m:F

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->l:F

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->b()V

    .line 14
    iput v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->r:F

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private g(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 3
    iget-boolean p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->p:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->p:Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->v:Lcom/guochao/faceshow/views/TCReversalSeekBar$a;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/guochao/faceshow/views/TCReversalSeekBar$a;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private h(Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "#FF4081"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#BBBBBB"

    .line 2
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/guochao/faceshow/R$styleable;->TCReversalSeekBar:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->s:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v3, 0x2

    div-int/2addr v1, v3

    iput v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->t:I

    const/4 v1, 0x3

    .line 6
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v0, 0x0

    .line 8
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 9
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->u:F

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move v3, v0

    .line 12
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->i:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->j:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->k:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->u:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->c:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->d:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->e:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->f:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 7
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/graphics/RectF;->sort()V

    .line 9
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->g:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 11
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->c:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 12
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->e:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 13
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->m:F

    iget v2, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->t:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 14
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->f:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 15
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v0}, Landroid/graphics/RectF;->sort()V

    .line 17
    :cond_1
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->g:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 19
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->l:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 20
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->n:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 21
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->m:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 22
    iget v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->o:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->a:I

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->b:I

    .line 4
    iget p3, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->t:I

    iput p3, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->c:I

    sub-int p4, p1, p3

    .line 5
    iput p4, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->d:I

    const/16 v0, 0x12

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->e:I

    add-int/lit8 v0, p2, -0x12

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->f:I

    .line 8
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->g:I

    .line 9
    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->h:I

    sub-int/2addr p4, p3

    int-to-float p2, p4

    .line 10
    iget p4, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->u:F

    mul-float p2, p2, p4

    int-to-float p1, p1

    sub-float/2addr p1, p2

    int-to-float p2, p3

    sub-float/2addr p1, p2

    .line 11
    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->l:F

    .line 12
    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->r:F

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->f(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->g(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->e(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public setOnSeekProgressListener(Lcom/guochao/faceshow/views/TCReversalSeekBar$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->v:Lcom/guochao/faceshow/views/TCReversalSeekBar$a;

    return-void
.end method

.method public setProgress(F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/views/TCReversalSeekBar;->u:F

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress must between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
