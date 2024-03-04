.class public Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;
.super Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;
.source "SourceFile"


# instance fields
.field private c:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

.field private d:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

.field private e:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

.field private j:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/Integer;

.field private n:I

.field private o:Li1/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->n:I

    return-void
.end method

.method static synthetic k(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic l(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->l:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic m(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->m:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic n(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)Li1/h;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->o:Li1/h;

    return-object p0
.end method

.method static synthetic o(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->i:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    return-object p0
.end method

.method static synthetic p(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->j:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    return-object p0
.end method

.method private q()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->n:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0xc

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->i:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {v1}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getHour()I

    move-result v1

    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->j:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {v2}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getHour()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->i:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {v2}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getHour()I

    move-result v2

    iget-object v3, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->j:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {v3}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getHour()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->k:Ljava/lang/Integer;

    if-nez v2, :cond_2

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->k:Ljava/lang/Integer;

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;->K(III)V

    .line 9
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->k:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setDefaultValue(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->r(I)V

    return-void
.end method

.method private r(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->i:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getHour()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3b

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->j:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->i:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {p1}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getMinute()I

    move-result v1

    .line 3
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->j:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {p1}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getMinute()I

    move-result v2

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->i:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->i:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {p1}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getMinute()I

    move-result v1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->j:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->j:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    invoke-virtual {p1}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getMinute()I

    move-result v2

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->l:Ljava/lang/Integer;

    if-nez p1, :cond_3

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->l:Ljava/lang/Integer;

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v2, v0}, Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;->K(III)V

    .line 11
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->l:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setDefaultValue(Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->s()V

    return-void
.end method

.method private s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->m:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->m:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    const/16 v2, 0x3b

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;->K(III)V

    .line 4
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->m:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setDefaultValue(Ljava/lang/Object;)V

    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->o:Li1/h;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    new-instance v1, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$a;

    invoke-direct {v1, p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$a;-><init>(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;)V

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
    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_time_hour_wheel:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    invoke-virtual {p1, p2}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->k:Ljava/lang/Integer;

    .line 4
    iput-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->l:Ljava/lang/Integer;

    .line 5
    iput-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->m:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->r(I)V

    .line 7
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->w()V

    return-void

    .line 8
    :cond_0
    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_time_minute_wheel:I

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    invoke-virtual {p1, p2}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->l:Ljava/lang/Integer;

    .line 10
    iput-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->m:Ljava/lang/Integer;

    .line 11
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->s()V

    .line 12
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->w()V

    return-void

    .line 13
    :cond_1
    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_time_second_wheel:I

    if-ne p1, v0, :cond_2

    .line 14
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    invoke-virtual {p1, p2}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->v(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->m:Ljava/lang/Integer;

    .line 15
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->w()V

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
    sget v1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_itemTextSize:I

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
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_visibleItemCount:I

    const/4 v1, 0x5

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setVisibleItemCount(I)V

    .line 6
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_sameWidthEnabled:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setSameWidthEnabled(Z)V

    .line 7
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_maxWidthText:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setMaxWidthText(Ljava/lang/String;)V

    .line 8
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_itemTextColorSelected:I

    const/high16 v2, -0x1000000

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setSelectedTextColor(I)V

    .line 9
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_itemTextColor:I

    const v2, -0x777778

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setTextColor(I)V

    .line 10
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_itemSpace:I

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setItemSpace(I)V

    .line 11
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_cyclicEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCyclicEnabled(Z)V

    .line 12
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_indicatorEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorEnabled(Z)V

    .line 13
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_indicatorColor:I

    const v2, -0x11cccd

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorColor(I)V

    .line 14
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_indicatorSize:I

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorSize(F)V

    .line 15
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_curtainEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurtainEnabled(Z)V

    .line 16
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_curtainColor:I

    const v0, -0x77000001

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurtainColor(I)V

    .line 17
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_atmosphericEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setAtmosphericEnabled(Z)V

    .line 18
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_curvedEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurvedEnabled(Z)V

    .line 19
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_curvedMaxAngle:I

    const/16 v0, 0x5a

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurvedMaxAngle(I)V

    .line 20
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_itemTextAlign:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setTextAlign(I)V

    .line 21
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_timeMode:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->setTimeMode(I)V

    .line 22
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_hourLabel:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_minuteLabel:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    sget v1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout_wheel_secondLabel:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-virtual {p0, p1, v0, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected g(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_time_hour_wheel:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    .line 2
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_time_minute_wheel:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    .line 3
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_time_second_wheel:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    .line 4
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_time_hour_label:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->f:Landroid/widget/TextView;

    .line 5
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_time_minute_label:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->g:Landroid/widget/TextView;

    .line 6
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_time_second_label:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->h:Landroid/widget/TextView;

    .line 7
    new-instance p1, Lj1/c;

    invoke-direct {p1}, Lj1/c;-><init>()V

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->setTimeFormatter(Li1/i;)V

    .line 8
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->now()Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object p1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->hourOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->t(Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V

    return-void
.end method

.method public final getEndValue()Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->j:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    return-object v0
.end method

.method public final getHourLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getHourWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    return-object v0
.end method

.method public final getMinuteLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getMinuteWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    return-object v0
.end method

.method public final getSecondLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getSecondWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    return-object v0
.end method

.method public final getSelectedHour()I
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSelectedMinute()I
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSelectedSecond()I
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getStartValue()Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->i:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    return-object v0
.end method

.method protected h()I
    .locals 1

    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$layout;->wheel_picker_time:I

    return v0
.end method

.method protected i()[I
    .locals 1

    sget-object v0, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->TimeWheelLayout:[I

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

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultValue(Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V
    .locals 3
    .param p1    # Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->i:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->now()Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->i:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->j:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    if-nez v0, :cond_1

    const/16 v0, 0xc

    .line 4
    invoke-static {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->hourOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->j:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    .line 5
    :cond_1
    new-instance v0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$b;

    invoke-direct {v0, p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$b;-><init>(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOnTimeSelectedListener(Li1/h;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->o:Li1/h;

    return-void
.end method

.method public setTimeFormatter(Li1/i;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    new-instance v1, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$c;

    invoke-direct {v1, p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$c;-><init>(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;Li1/i;)V

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setFormatter(Lk1/c;)V

    .line 2
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    new-instance v1, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$d;

    invoke-direct {v1, p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$d;-><init>(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;Li1/i;)V

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setFormatter(Lk1/c;)V

    .line 3
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    new-instance v1, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$e;

    invoke-direct {v1, p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout$e;-><init>(Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;Li1/i;)V

    invoke-virtual {v0, v1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setFormatter(Lk1/c;)V

    return-void
.end method

.method public setTimeMode(I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->n:I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :cond_2
    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->n:I

    return-void
.end method

.method public t(Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V
    .locals 1
    .param p1    # Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->u(Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V

    return-void
.end method

.method public u(Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V
    .locals 0
    .param p1    # Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->i:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    .line 2
    iput-object p2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->j:Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getHour()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->k:Ljava/lang/Integer;

    .line 4
    invoke-virtual {p3}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->l:Ljava/lang/Integer;

    .line 5
    invoke-virtual {p3}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->getSecond()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->m:Ljava/lang/Integer;

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->q()V

    return-void
.end method

.method public v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->g:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
