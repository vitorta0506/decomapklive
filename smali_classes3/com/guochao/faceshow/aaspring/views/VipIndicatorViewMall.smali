.class public Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall$SavedState;
    }
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field private b:I

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->b:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->c:F

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->b:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->c:F

    .line 8
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->b:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->c:F

    .line 12
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->c:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->c:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method a(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/guochao/lib_core/R$styleable;->VipIndicatorView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget v0, Lcom/guochao/lib_core/R$styleable;->VipIndicatorView_iconScale:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->c:F

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 6
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->a:Landroid/widget/ImageView;

    .line 7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 8
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->c:F

    mul-float v2, v2, v1

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x41700000    # 15.0f

    .line 11
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->c:F

    mul-float v1, v1, v0

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    .line 12
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->c:F

    mul-float v1, v1, v0

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p0, p1, p1, v0, p1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    const/4 p1, 0x2

    .line 15
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->setVipLevel(I)V

    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall$SavedState;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    .line 4
    iget p1, p1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall$SavedState;->a:I

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->setVipLevel(I)V

    .line 5
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall$SavedState;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->b:I

    iput v0, v1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall$SavedState;->a:I

    return-object v1
.end method

.method public setVipLevel(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->b:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->a:Landroid/widget/ImageView;

    sget v0, Lcom/guochao/lib_core/R$mipmap;->vvip_icon02_mall:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->a:Landroid/widget/ImageView;

    sget v0, Lcom/guochao/lib_core/R$mipmap;->vip_icon02_mall:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
