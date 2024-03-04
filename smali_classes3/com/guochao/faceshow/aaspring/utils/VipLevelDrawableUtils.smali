.class public Lcom/guochao/faceshow/aaspring/utils/VipLevelDrawableUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVipImgByLevel(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x7f0804aa

    return p0

    :cond_0
    const p0, 0x7f0f063a

    return p0

    :cond_1
    const p0, 0x7f0f0630

    return p0
.end method

.method public static getVipLevelDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    if-eqz p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 p2, 0x40800000    # 4.0f

    .line 5
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 6
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 10
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 11
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, v2, v2, v1, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 12
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v0, v0, v3

    double-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v5, v1

    mul-double v5, v5, v3

    double-to-int v1, v5

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 14
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {v0, v2, v2, p0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    return-object v0
.end method

.method public static getVipLevelDrawableMall(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    if-eqz p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorViewMall;->setVipLevel(I)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 p2, 0x40800000    # 4.0f

    .line 5
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 6
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 10
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 11
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, v2, v2, v1, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 12
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v0, v0, v3

    double-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v5, v1

    mul-double v5, v5, v3

    double-to-int v1, v5

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 14
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {v0, v2, v2, p0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    return-object v0
.end method
