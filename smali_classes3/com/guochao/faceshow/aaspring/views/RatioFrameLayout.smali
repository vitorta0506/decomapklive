.class public Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field a:F

.field b:I

.field c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 4
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->a:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->b:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->c:Z

    if-eqz p2, :cond_0

    .line 7
    sget-object v2, Lcom/guochao/faceshow/R$styleable;->RatioFrameLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->a:F

    .line 9
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->b:I

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->c:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->b:I

    const/high16 v1, 0x40000000    # 2.0f

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->a:F

    mul-float p2, p2, v0

    float-to-double v4, p2

    add-double/2addr v4, v2

    double-to-int p2, v4

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p2, p1

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->a:F

    mul-float p2, p2, v0

    float-to-double v0, p2

    add-double/2addr v0, v2

    double-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->a:F

    div-float/2addr p1, v0

    float-to-double v4, p1

    add-double/2addr v4, v2

    double-to-int p1, v4

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    int-to-float p2, p1

    .line 12
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->a:F

    div-float/2addr p2, v0

    float-to-double v0, p2

    add-double/2addr v0, v2

    double-to-int p2, v0

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public setRatio(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->a:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->a:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/RatioFrameLayout;->c:Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method
