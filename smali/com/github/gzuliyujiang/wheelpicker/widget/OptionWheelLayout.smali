.class public Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;
.super Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;
.source "SourceFile"


# instance fields
.field private c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

.field private d:Landroid/widget/TextView;

.field private e:Li1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public d(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->e:Li1/g;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    invoke-virtual {v0, p2}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Li1/g;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected f(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 3
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
    sget v1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_itemTextSize:I

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
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_visibleItemCount:I

    const/4 v1, 0x5

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setVisibleItemCount(I)V

    .line 6
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_sameWidthEnabled:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setSameWidthEnabled(Z)V

    .line 7
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_maxWidthText:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setMaxWidthText(Ljava/lang/String;)V

    .line 8
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_itemTextColorSelected:I

    const/high16 v2, -0x1000000

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setSelectedTextColor(I)V

    .line 9
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_itemTextColor:I

    const v2, -0x777778

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setTextColor(I)V

    .line 10
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_itemSpace:I

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setItemSpace(I)V

    .line 11
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_cyclicEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCyclicEnabled(Z)V

    .line 12
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_indicatorEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorEnabled(Z)V

    .line 13
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_indicatorColor:I

    const v2, -0x11cccd

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorColor(I)V

    .line 14
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_indicatorSize:I

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorSize(F)V

    .line 15
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_curtainEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurtainEnabled(Z)V

    .line 16
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_curtainColor:I

    const v0, -0x77000001

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurtainColor(I)V

    .line 17
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_atmosphericEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setAtmosphericEnabled(Z)V

    .line 18
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_curvedEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurvedEnabled(Z)V

    .line 19
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_curvedMaxAngle:I

    const/16 v0, 0x5a

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurvedMaxAngle(I)V

    .line 20
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_itemTextAlign:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setTextAlign(I)V

    .line 21
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->d:Landroid/widget/TextView;

    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout_wheel_label:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected g(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_option_wheel:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_option_label:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->d:Landroid/widget/TextView;

    return-void
.end method

.method public final getLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getWheelView()Lcom/github/gzuliyujiang/wheelview/widget/WheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    return-object v0
.end method

.method protected h()I
    .locals 1

    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$layout;->wheel_picker_option:I

    return v0
.end method

.method protected i()[I
    .locals 1

    sget-object v0, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->OptionWheelLayout:[I

    return-object v0
.end method

.method protected j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/gzuliyujiang/wheelview/widget/WheelView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    invoke-virtual {v0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setDefaultPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    invoke-virtual {v0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setDefaultPosition(I)V

    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    invoke-virtual {v0, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setDefaultValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setOnOptionSelectedListener(Li1/g;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/OptionWheelLayout;->e:Li1/g;

    return-void
.end method
