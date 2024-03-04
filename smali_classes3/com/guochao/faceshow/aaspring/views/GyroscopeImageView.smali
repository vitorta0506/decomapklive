.class public Lcom/guochao/faceshow/aaspring/views/GyroscopeImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/GyroscopeImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/GyroscopeImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/GyroscopeImageView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/GyroscopeImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    const v0, 0x3da3d70a    # 0.08f

    mul-float p1, p1, v0

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/GyroscopeImageView;->a:F

    sub-int/2addr v1, p2

    int-to-float p1, v1

    const p2, 0x3e19999a    # 0.15f

    mul-float p1, p1, p2

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/GyroscopeImageView;->b:F

    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
