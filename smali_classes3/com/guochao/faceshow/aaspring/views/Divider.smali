.class public Lcom/guochao/faceshow/aaspring/views/Divider;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/Divider;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/Divider;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/Divider;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/R$styleable;->Divider:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->a:I

    if-gtz p2, :cond_0

    const-string p2, "#e5e9ed"

    .line 3
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->a:I

    :cond_0
    const/4 p2, 0x4

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->b:I

    const/4 p2, 0x3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->c:F

    const/4 p2, 0x2

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->d:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->e:F

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 11
    :cond_2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->a:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->b:I

    const/high16 p2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->c:F

    float-to-int p1, p1

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->e:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    float-to-int p2, p2

    goto :goto_0

    :cond_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_2

    .line 3
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->e:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    float-to-int p1, p1

    goto :goto_1

    :cond_2
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/Divider;->c:F

    float-to-int v0, v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_2
    return-void
.end method
