.class public Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;->a:F

    if-eqz p2, :cond_0

    .line 5
    sget-object v1, Lcom/guochao/faceshow/R$styleable;->RatioHeightImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;->a:F

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 9
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;->a:F

    if-eqz p2, :cond_0

    .line 10
    sget-object v0, Lcom/guochao/faceshow/R$styleable;->RatioHeightImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;->a:F

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRatio()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;->a:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    int-to-float p2, p1

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;->a:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;->a:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
