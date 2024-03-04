.class public Lcom/github/gzuliyujiang/wheelpicker/widget/NumberWheelLayout;
.super Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;
.source "SourceFile"


# instance fields
.field private f:Li1/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public d(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/NumberWheelLayout;->f:Li1/f;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->getWheelView()Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/NumberWheelLayout;->f:Li1/f;

    check-cast p1, Ljava/lang/Number;

    invoke-interface {v0, p2, p1}, Li1/f;->a(ILjava/lang/Number;)V

    :cond_0
    return-void
.end method

.method protected f(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2
    sget v1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_itemTextSize:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v2, 0x41700000    # 15.0f

    mul-float p1, p1, v2

    float-to-int p1, p1

    .line 4
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setTextSize(I)V

    .line 5
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_visibleItemCount:I

    const/4 v1, 0x5

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setVisibleItemCount(I)V

    .line 6
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_sameWidthEnabled:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setSameWidthEnabled(Z)V

    .line 7
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_maxWidthText:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setMaxWidthText(Ljava/lang/String;)V

    .line 8
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_itemTextColorSelected:I

    const/high16 v2, -0x1000000

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setSelectedTextColor(I)V

    .line 9
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_itemTextColor:I

    const v2, -0x777778

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setTextColor(I)V

    .line 10
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_itemSpace:I

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setItemSpace(I)V

    .line 11
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_cyclicEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCyclicEnabled(Z)V

    .line 12
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_indicatorEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorEnabled(Z)V

    .line 13
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_indicatorColor:I

    const v2, -0x11cccd

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorColor(I)V

    .line 14
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_indicatorSize:I

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorSize(F)V

    .line 15
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_curtainEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurtainEnabled(Z)V

    .line 16
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_curtainColor:I

    const v0, -0x77000001

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurtainColor(I)V

    .line 17
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_atmosphericEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setAtmosphericEnabled(Z)V

    .line 18
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_curvedEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurvedEnabled(Z)V

    .line 19
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_curvedMaxAngle:I

    const/16 v0, 0x5a

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurvedMaxAngle(I)V

    .line 20
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_itemTextAlign:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setTextAlign(I)V

    .line 21
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->getLabelView()Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_label:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_minNumber:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 23
    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_maxNumber:I

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 24
    sget v3, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_stepNumber:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 25
    sget v3, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout_wheel_isDecimal:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p0, p1, v0, v2}, Lcom/github/gzuliyujiang/wheelpicker/widget/NumberWheelLayout;->k(FFF)V

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    float-to-int p2, v0

    float-to-int v0, v2

    .line 27
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/NumberWheelLayout;->l(III)V

    :goto_0
    return-void
.end method

.method protected i()[I
    .locals 1

    sget-object v0, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->NumberWheelLayout:[I

    return-object v0
.end method

.method public k(FFF)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sub-float p2, p1, v0

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    cmpg-float p2, v0, p1

    if-gtz p2, :cond_0

    .line 4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v0, p3

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, v1}, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->setData(Ljava/util/List;)V

    return-void
.end method

.method public l(III)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int p2, p1, v0

    .line 3
    div-int/2addr p2, p3

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-gt v0, p1, :cond_0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, p3

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, v1}, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use setRange instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnNumberSelectedListener(Li1/f;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/NumberWheelLayout;->f:Li1/f;

    return-void
.end method

.method public setOnOptionSelectedListener(Li1/g;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use setOnNumberSelectedListener instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
