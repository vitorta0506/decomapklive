.class public Lcom/guochao/faceshow/views/ZZTimeRangeSlider;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Lcom/guochao/faceshow/views/ThumbView;

.field private final d:Lcom/guochao/faceshow/views/ThumbView;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:Z

.field private o:Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->i:I

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->j:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->k:I

    rsub-int/lit8 v2, p3, 0x5

    .line 7
    div-int/2addr v2, v1

    iput v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->l:I

    .line 8
    sget-object v2, Lcom/guochao/faceshow/R$styleable;->RangeSlider:[I

    invoke-virtual {p1, p2, v2, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v2, 0x9

    const/4 v3, 0x7

    .line 9
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->h:I

    const/4 v2, 0x3

    .line 10
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->m:F

    .line 11
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->b:Landroid/graphics/Paint;

    const/4 v4, 0x4

    const/high16 v5, -0x60000000

    .line 12
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->a:Landroid/graphics/Paint;

    const/4 v4, 0x2

    const/high16 v5, -0x1000000

    .line 14
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->e:I

    .line 16
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 17
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 18
    new-instance v4, Lcom/guochao/faceshow/views/ThumbView;

    iget v6, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->h:I

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    invoke-direct {v4, p1, v6, v2}, Lcom/guochao/faceshow/views/ThumbView;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    .line 19
    new-instance v2, Lcom/guochao/faceshow/views/ThumbView;

    iget v6, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->h:I

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_1
    invoke-direct {v2, p1, v6, v3}, Lcom/guochao/faceshow/views/ThumbView;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    const/16 p1, 0xa

    .line 20
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->setTickCount(I)V

    .line 21
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    const/16 v0, 0x8

    iget v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->l:I

    .line 22
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->k(II)V

    .line 24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    return-void
.end method

.method private b(II)Z
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->l:I

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    int-to-float p1, p1

    add-float/2addr v0, p1

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->getIntervalLength()F

    move-result p1

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->i:I

    iget v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->k:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    .line 4
    iget v3, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->j:I

    div-int/2addr v3, v2

    int-to-float v2, v3

    mul-float v2, v2, p1

    cmpl-float p1, v0, v1

    if-lez p1, :cond_0

    cmpg-float p1, v0, v2

    if-gez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->h:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->a(F)I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/ThumbView;->setTickIndex(I)V

    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->g(I)V

    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    int-to-float p1, p1

    add-float/2addr v0, p1

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->getIntervalLength()F

    move-result p1

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->i:I

    iget v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->k:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    .line 4
    iget v3, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->j:I

    div-int/2addr v3, v2

    int-to-float v2, v3

    mul-float v2, v2, p1

    cmpl-float p1, v0, v1

    if-lez p1, :cond_0

    cmpg-float p1, v0, v2

    if-gez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->h:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->a(F)I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/ThumbView;->setTickIndex(I)V

    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->g(I)V

    :cond_0
    return-void
.end method

.method private f(Lcom/guochao/faceshow/views/ThumbView;I)Z
    .locals 2

    int-to-float v0, p2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->getIntervalLength()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/ThumbView;->setTickIndex(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private g(I)V
    .locals 0

    return-void
.end method

.method private getIntervalLength()F
    .locals 2

    invoke-direct {p0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->getRangeLength()F

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->l:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getRangeLength()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->h:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->a(F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->f(Lcom/guochao/faceshow/views/ThumbView;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->g(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/ThumbView;->setPressed(Z)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->a(F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v1

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v1, 0x1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->f(Lcom/guochao/faceshow/views/ThumbView;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->g(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/ThumbView;->setPressed(Z)V

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 1

    invoke-direct {p0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->getIntervalLength()F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getLeftIndex()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v0

    return v0
.end method

.method public getRightIndex()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v0

    return v0
.end method

.method public j(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->f(Lcom/guochao/faceshow/views/ThumbView;I)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->f(Lcom/guochao/faceshow/views/ThumbView;I)Z

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public k(II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->b(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/ThumbView;->setTickIndex(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result p1

    if-eq p1, p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/ThumbView;->setTickIndex(I)V

    goto :goto_0

    .line 6
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thumb index left "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", or right "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of bounds. Check that it is greater than the minimum ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->i:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") and less than the maximum value ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->j:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v7

    int-to-float v0, v0

    .line 5
    iget v3, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->m:F

    sub-float/2addr v0, v3

    int-to-float v1, v1

    add-float v5, v1, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    add-float v8, v6, v3

    .line 6
    iget-object v9, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->a:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 3
    iget-object p3, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 4
    iget-object p3, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->f(Lcom/guochao/faceshow/views/ThumbView;I)Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->f(Lcom/guochao/faceshow/views/ThumbView;I)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    goto/16 :goto_3

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 4
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->n:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->f:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->e:I

    if-le v0, v2, :cond_2

    .line 5
    iput-boolean v3, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->n:Z

    .line 6
    :cond_2
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->n:Z

    if-eqz v0, :cond_4

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->g:I

    sub-int v0, p1, v0

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v2}, Lcom/guochao/faceshow/views/ThumbView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d(I)V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v2}, Lcom/guochao/faceshow/views/ThumbView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 14
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->e(I)V

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 16
    :cond_4
    :goto_1
    iput p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->g:I

    goto/16 :goto_3

    .line 17
    :cond_5
    iput-boolean v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->n:Z

    .line 18
    iput v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->g:I

    iput v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->f:I

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/ThumbView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->h()V

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->o:Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;

    if-eqz p1, :cond_6

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v1

    invoke-interface {p1, v3, v0, v1}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;->a(III)V

    :cond_6
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/ThumbView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 26
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->i()V

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->o:Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;

    if-eqz p1, :cond_6

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/views/ThumbView;->getRangeIndex()I

    move-result v1

    invoke-interface {p1, v2, v0, v1}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;->a(III)V

    goto :goto_2

    .line 30
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 32
    iput v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->f:I

    iput v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->g:I

    .line 33
    iput-boolean v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->n:Z

    .line 34
    iget-object v4, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v4}, Lcom/guochao/faceshow/views/ThumbView;->isPressed()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v4, v0, p1}, Lcom/guochao/faceshow/views/ThumbView;->a(II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/views/ThumbView;->setPressed(Z)V

    .line 36
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->o:Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;

    if-eqz p1, :cond_6

    .line 37
    invoke-interface {p1, v3}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;->b(I)V

    goto :goto_2

    .line 38
    :cond_9
    iget-object v4, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v4}, Lcom/guochao/faceshow/views/ThumbView;->isPressed()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v4, v0, p1}, Lcom/guochao/faceshow/views/ThumbView;->a(II)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/views/ThumbView;->setPressed(Z)V

    .line 40
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->o:Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;

    if-eqz p1, :cond_6

    .line 41
    invoke-interface {p1, v2}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;->b(I)V

    goto :goto_2

    :cond_a
    :goto_3
    return v1
.end method

.method public setLeftThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/ThumbView;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLineColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLineSize(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->m:F

    return-void
.end method

.method public setMaskColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setRangeChangeListener(Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->o:Lcom/guochao/faceshow/views/ZZTimeRangeSlider$a;

    return-void
.end method

.method public setRightThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/ThumbView;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->h:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/ThumbView;->setThumbWidth(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/ThumbView;->setThumbWidth(I)V

    return-void
.end method

.method public setTickCount(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->i:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->k:I

    div-int/2addr v0, v1

    .line 2
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->j:I

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->l:I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/ZZTimeRangeSlider;->d:Lcom/guochao/faceshow/views/ThumbView;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/ThumbView;->setTickIndex(I)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "tickCount less than 2; invalid tickCount."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
