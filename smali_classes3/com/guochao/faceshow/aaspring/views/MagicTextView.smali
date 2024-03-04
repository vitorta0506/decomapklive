.class public Lcom/guochao/faceshow/aaspring/views/MagicTextView;
.super Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Canvas;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:F

.field private h:Ljava/lang/Integer;

.field private i:Landroid/graphics/Paint$Join;

.field private j:F

.field private k:[I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    .line 6
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/FaceCastTextViewBridge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    .line 9
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private d()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%dx%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    .line 4
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->e:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->e:Landroid/graphics/Bitmap;

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->c:Ljava/util/WeakHashMap;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->e:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(FFFI)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x38d1b717    # 1.0E-4f

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;-><init>(FFFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(FFFI)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x38d1b717    # 1.0E-4f

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;-><init>(FFFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->getCompoundPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->getCompoundPaddingRight()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->getCompoundPaddingTop()I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->getCompoundPaddingBottom()I

    move-result v1

    const/4 v3, 0x3

    aput v1, v0, v3

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->k:[I

    .line 5
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    return-void
.end method

.method public e(Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->a:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->b:Ljava/util/ArrayList;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->c:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->c:Ljava/util/WeakHashMap;

    :cond_0
    if-eqz p1, :cond_9

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/R$styleable;->MagicTextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0xd

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "fonts/%s.ttf"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v3, -0x1000000

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->setForegroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_3
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    .line 14
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 15
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/4 v7, 0x3

    .line 16
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 17
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 18
    invoke-virtual {p0, v0, v6, v7, v8}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->a(FFFI)V

    :cond_4
    const/4 v0, 0x5

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x8

    .line 20
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/4 v7, 0x6

    .line 21
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    const/4 v8, 0x7

    .line 22
    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 23
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 24
    invoke-virtual {p0, v6, v7, v5, v0}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->b(FFFI)V

    :cond_5
    const/16 v0, 0xb

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0xc

    const/high16 v6, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 27
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    const/16 v3, 0xa

    const/high16 v6, 0x41200000    # 10.0f

    .line 28
    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    const/4 v6, 0x0

    const/16 v7, 0x9

    .line 29
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_7

    if-eq p1, v4, :cond_6

    goto :goto_1

    .line 30
    :cond_6
    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_1

    .line 31
    :cond_7
    sget-object v6, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_1

    .line 32
    :cond_8
    sget-object v6, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 33
    :goto_1
    invoke-virtual {p0, v5, v0, v6, v3}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->f(FILandroid/graphics/Paint$Join;F)V

    :cond_9
    return-void
.end method

.method public f(FILandroid/graphics/Paint$Join;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->g:F

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->h:Ljava/lang/Integer;

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->i:Landroid/graphics/Paint$Join;

    .line 4
    iput p4, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->j:F

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    return-void
.end method

.method public getCompoundPaddingBottom()I
    .locals 2

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->k:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->k:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->k:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getCompoundPaddingTop()I
    .locals 2

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->k:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->invalidate(IIII)V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->c()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p0, v3, v3, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;

    .line 8
    iget v6, v5, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;->a:F

    iget v7, v5, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;->b:F

    iget v8, v5, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;->c:F

    iget v5, v5, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;->d:I

    invoke-virtual {p0, v6, v7, v8, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 9
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    invoke-virtual {p0, v4, v4, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 11
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    instance-of v6, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d()V

    .line 14
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    invoke-super {p0, v6}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 15
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->f:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 16
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 17
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 18
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->f:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v6, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 20
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 21
    :cond_1
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->h:Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 23
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->i:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 25
    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->j:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeMiter(F)V

    .line 26
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->h:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->g:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 28
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 29
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    :cond_2
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 32
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d()V

    .line 33
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 34
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;

    .line 35
    iget v9, v8, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;->d:I

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    invoke-super {p0, v9}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v9, -0x1000000

    .line 37
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 39
    new-instance v9, Landroid/graphics/BlurMaskFilter;

    iget v10, v8, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;->a:F

    sget-object v11, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v9, v10, v11}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 40
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 41
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    iget v10, v8, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;->b:F

    iget v8, v8, Lcom/guochao/faceshow/aaspring/views/MagicTextView$a;->c:F

    invoke-virtual {v9, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    invoke-super {p0, v8}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    .line 44
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v8, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->d:Landroid/graphics/Canvas;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 46
    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 47
    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 48
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    invoke-virtual {p0, v4, v4, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 50
    aget-object p1, v1, v5

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-virtual {p0, p1, v3, v4, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->g()V

    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->postInvalidate(IIII)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->l:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setForegroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MagicTextView;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method
