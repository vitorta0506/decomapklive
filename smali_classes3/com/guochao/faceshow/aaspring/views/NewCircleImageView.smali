.class public Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
.super Lcom/google/android/material/imageview/ShapeableImageView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x26000000

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->a:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->b:F

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x26000000

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->a:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->b:F

    .line 8
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x26000000

    .line 10
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->a:I

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->b:F

    .line 12
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/guochao/lib_core/R$styleable;->NewCircleImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget v0, Lcom/guochao/lib_core/R$styleable;->NewCircleImageView_stroke_width:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->b:F

    .line 3
    sget v0, Lcom/guochao/lib_core/R$styleable;->NewCircleImageView_stroke_color:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->a:I

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    new-instance v0, Lcom/google/android/material/shape/RelativeCornerSize;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 6
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->b:F

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeWidth(F)V

    .line 7
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->a:I

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeColor(I)V

    return-void
.end method


# virtual methods
.method public setStrokeColor(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeWidth(F)V

    float-to-int p1, p1

    .line 2
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setPadding(IIII)V

    return-void
.end method
