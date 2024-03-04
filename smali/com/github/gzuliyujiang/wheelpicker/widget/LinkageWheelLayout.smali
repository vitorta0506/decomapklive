.class public Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;
.super Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;
.source "SourceFile"


# instance fields
.field private c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

.field private d:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

.field private e:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:I

.field private m:I

.field private n:I

.field private o:Li1/b;

.field private p:Li1/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic k(Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;)Lcom/github/gzuliyujiang/wheelview/widget/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    return-object p0
.end method

.method static synthetic l(Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;)Lcom/github/gzuliyujiang/wheelview/widget/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    return-object p0
.end method

.method static synthetic m(Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;)Lcom/github/gzuliyujiang/wheelview/widget/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    return-object p0
.end method

.method static synthetic n(Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;)Li1/e;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->p:Li1/e;

    return-object p0
.end method

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->o:Li1/b;

    invoke-interface {v1}, Li1/b;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setData(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    iget v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->l:I

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setDefaultPosition(I)V

    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->o:Li1/b;

    iget v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->l:I

    invoke-interface {v1, v2}, Li1/b;->b(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setData(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    iget v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->m:I

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setDefaultPosition(I)V

    return-void
.end method

.method private q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->o:Li1/b;

    invoke-interface {v0}, Li1/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->o:Li1/b;

    iget v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->l:I

    iget v3, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->m:I

    invoke-interface {v1, v2, v3}, Li1/b;->g(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setData(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    iget v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->n:I

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setDefaultPosition(I)V

    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->p:Li1/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    new-instance v1, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout$a;

    invoke-direct {v1, p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout$a;-><init>(Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public d(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_linkage_first_wheel:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 3
    iput p2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->l:I

    .line 4
    iput v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->m:I

    .line 5
    iput v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->n:I

    .line 6
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->p()V

    .line 7
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->q()V

    .line 8
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->r()V

    return-void

    .line 9
    :cond_0
    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_linkage_second_wheel:I

    if-ne p1, v0, :cond_1

    .line 10
    iput p2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->m:I

    .line 11
    iput v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->n:I

    .line 12
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->q()V

    .line 13
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->r()V

    return-void

    .line 14
    :cond_1
    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_linkage_third_wheel:I

    if-ne p1, v0, :cond_2

    .line 15
    iput p2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->n:I

    .line 16
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->r()V

    :cond_2
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
    sget v1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_itemTextSize:I

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
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_visibleItemCount:I

    const/4 v1, 0x5

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setVisibleItemCount(I)V

    .line 6
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_sameWidthEnabled:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setSameWidthEnabled(Z)V

    .line 7
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_maxWidthText:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setMaxWidthText(Ljava/lang/String;)V

    .line 8
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_itemTextColorSelected:I

    const/high16 v2, -0x1000000

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setSelectedTextColor(I)V

    .line 9
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_itemTextColor:I

    const v2, -0x777778

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setTextColor(I)V

    .line 10
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_itemSpace:I

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setItemSpace(I)V

    .line 11
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_cyclicEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCyclicEnabled(Z)V

    .line 12
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_indicatorEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorEnabled(Z)V

    .line 13
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_indicatorColor:I

    const v2, -0x363637

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorColor(I)V

    .line 14
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_indicatorSize:I

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorSize(F)V

    .line 15
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_curtainEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurtainEnabled(Z)V

    .line 16
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_curtainColor:I

    const v0, -0x77000001

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurtainColor(I)V

    .line 17
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_atmosphericEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setAtmosphericEnabled(Z)V

    .line 18
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_curvedEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurvedEnabled(Z)V

    .line 19
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_curvedMaxAngle:I

    const/16 v0, 0x5a

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurvedMaxAngle(I)V

    .line 20
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_itemTextAlign:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setTextAlign(I)V

    .line 21
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_firstVisible:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->setFirstVisible(Z)V

    .line 22
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_thirdVisible:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->setThirdVisible(Z)V

    .line 23
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_firstLabel:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_secondLabel:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    sget v1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout_wheel_thirdLabel:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-virtual {p0, p1, v0, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->s(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected g(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_linkage_first_wheel:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_linkage_second_wheel:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 3
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_linkage_third_wheel:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 4
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_linkage_first_label:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->f:Landroid/widget/TextView;

    .line 5
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_linkage_second_label:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->g:Landroid/widget/TextView;

    .line 6
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_linkage_third_label:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->h:Landroid/widget/TextView;

    return-void
.end method

.method public final getFirstLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getFirstWheelView()Lcom/github/gzuliyujiang/wheelview/widget/WheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    return-object v0
.end method

.method public final getSecondLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getSecondWheelView()Lcom/github/gzuliyujiang/wheelview/widget/WheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    return-object v0
.end method

.method public final getThirdLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getThirdWheelView()Lcom/github/gzuliyujiang/wheelview/widget/WheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    return-object v0
.end method

.method protected h()I
    .locals 1

    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$layout;->wheel_picker_linkage:I

    return v0
.end method

.method protected i()[I
    .locals 1

    sget-object v0, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->LinkageWheelLayout:[I

    return-object v0
.end method

.method protected j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/gzuliyujiang/wheelview/widget/WheelView;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setData(Li1/b;)V
    .locals 3
    .param p1    # Li1/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->o:Li1/b;

    .line 2
    invoke-interface {p1}, Li1/b;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->setFirstVisible(Z)V

    .line 3
    invoke-interface {p1}, Li1/b;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->setThirdVisible(Z)V

    .line 4
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->i:Ljava/lang/Object;

    invoke-interface {p1, v0}, Li1/b;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->l:I

    .line 5
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->j:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Li1/b;->c(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->m:I

    .line 6
    iget v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->l:I

    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->k:Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v2}, Li1/b;->d(IILjava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->n:I

    .line 7
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->o()V

    .line 8
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->p()V

    .line 9
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->q()V

    return-void
.end method

.method public setFirstVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnLinkageSelectedListener(Li1/e;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->p:Li1/e;

    return-void
.end method

.method public setThirdVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/LinkageWheelLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
