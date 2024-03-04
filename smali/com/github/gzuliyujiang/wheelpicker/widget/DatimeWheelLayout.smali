.class public Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;
.super Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;
.source "SourceFile"


# instance fields
.field private c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

.field private d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

.field private e:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

.field private f:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

.field private g:I

.field private h:Li1/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->g:I

    return-void
.end method

.method static synthetic k(Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;)Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    return-object p0
.end method

.method static synthetic l(Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;)Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    return-object p0
.end method

.method static synthetic m(Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;)Li1/d;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->h:Li1/d;

    return-object p0
.end method

.method static synthetic n(Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;)Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    return-object p0
.end method

.method static synthetic o(Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;)Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
    .locals 0

    iget-object p0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->f:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    return-object p0
.end method


# virtual methods
.method public d(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0, p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->d(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V

    .line 2
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0, p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->d(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V

    .line 3
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->h:Li1/d;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    new-instance p2, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout$a;

    invoke-direct {p2, p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout$a;-><init>(Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

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
    sget v1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_itemTextSize:I

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
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_visibleItemCount:I

    const/4 v1, 0x5

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setVisibleItemCount(I)V

    .line 6
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_sameWidthEnabled:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setSameWidthEnabled(Z)V

    .line 7
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_maxWidthText:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setMaxWidthText(Ljava/lang/String;)V

    .line 8
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_itemTextColorSelected:I

    const/high16 v2, -0x1000000

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setSelectedTextColor(I)V

    .line 9
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_itemTextColor:I

    const v2, -0x777778

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setTextColor(I)V

    .line 10
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_itemSpace:I

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setItemSpace(I)V

    .line 11
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_cyclicEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCyclicEnabled(Z)V

    .line 12
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_indicatorEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorEnabled(Z)V

    .line 13
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_indicatorColor:I

    const v2, -0x11cccd

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorColor(I)V

    .line 14
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_indicatorSize:I

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setIndicatorSize(F)V

    .line 15
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_curtainEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurtainEnabled(Z)V

    .line 16
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_curtainColor:I

    const v0, -0x77000001

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurtainColor(I)V

    .line 17
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_atmosphericEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setAtmosphericEnabled(Z)V

    .line 18
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_curvedEnabled:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurvedEnabled(Z)V

    .line 19
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_curvedMaxAngle:I

    const/16 v0, 0x5a

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setCurvedMaxAngle(I)V

    .line 20
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_itemTextAlign:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->setTextAlign(I)V

    .line 21
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_dateMode:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->setDateMode(I)V

    .line 22
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_timeMode:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->setTimeMode(I)V

    .line 23
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_yearLabel:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 24
    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_monthLabel:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    sget v1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_dayLabel:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {p0, p1, v0, v1}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->p(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 27
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_hourLabel:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 28
    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_minuteLabel:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    sget v1, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout_wheel_secondLabel:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-virtual {p0, p1, v0, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->s(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected g(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_date_wheel:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    .line 2
    sget p1, Lcom/github/gzuliyujiang/wheelpicker/R$id;->wheel_picker_time_wheel:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    .line 3
    new-instance p1, Lj1/b;

    invoke-direct {p1}, Lj1/b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->setDateFormatter(Li1/a;)V

    .line 4
    new-instance p1, Lj1/c;

    invoke-direct {p1}, Lj1/c;-><init>()V

    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->setTimeFormatter(Li1/i;)V

    .line 5
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->now()Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    move-result-object p1

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->yearOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->q(Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;)V

    return-void
.end method

.method public final getDayLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getDayLabelView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final getDayWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getDayWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    move-result-object v0

    return-object v0
.end method

.method public final getEndValue()Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->f:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    return-object v0
.end method

.method public final getHourLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getHourLabelView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final getHourWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getHourWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    move-result-object v0

    return-object v0
.end method

.method public final getMinuteLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getMinuteLabelView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final getMinuteWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getMinuteWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    move-result-object v0

    return-object v0
.end method

.method public final getMonthLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getMonthLabelView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final getMonthWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getMonthWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    move-result-object v0

    return-object v0
.end method

.method public final getSecondLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getSecondLabelView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final getSecondWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getSecondWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedDay()I
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getSelectedDay()I

    move-result v0

    return v0
.end method

.method public final getSelectedHour()I
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getSelectedHour()I

    move-result v0

    return v0
.end method

.method public final getSelectedMinute()I
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getSelectedMinute()I

    move-result v0

    return v0
.end method

.method public final getSelectedMonth()I
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getSelectedMonth()I

    move-result v0

    return v0
.end method

.method public final getSelectedSecond()I
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->getSelectedSecond()I

    move-result v0

    return v0
.end method

.method public final getSelectedYear()I
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getSelectedYear()I

    move-result v0

    return v0
.end method

.method public final getStartValue()Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    return-object v0
.end method

.method public final getYearLabelView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getYearLabelView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final getYearWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->getYearWheelView()Lcom/github/gzuliyujiang/wheelview/widget/NumberWheelView;

    move-result-object v0

    return-object v0
.end method

.method protected h()I
    .locals 1

    sget v0, Lcom/github/gzuliyujiang/wheelpicker/R$layout;->wheel_picker_datime:I

    return v0
.end method

.method protected i()[I
    .locals 1

    sget-object v0, Lcom/github/gzuliyujiang/wheelpicker/R$styleable;->DatimeWheelLayout:[I

    return-object v0
.end method

.method protected j()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/gzuliyujiang/wheelview/widget/WheelView;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v1}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public p(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public q(Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;)V
    .locals 1
    .param p1    # Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->r(Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;)V

    return-void
.end method

.method public r(Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;)V
    .locals 4
    .param p1    # Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    move-object p3, p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {p1}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->getDate()Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object v1

    invoke-virtual {p2}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->getDate()Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object v2

    invoke-virtual {p3}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->getDate()Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->x(Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/DateEntity;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0, v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->target(III)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->g:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0xc

    :goto_1
    const/16 v2, 0x3b

    .line 4
    invoke-static {v1, v2, v2}, Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;->target(III)Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {p3}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->getTime()Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;

    move-result-object p3

    invoke-virtual {v2, v0, v1, p3}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->u(Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;Lcom/github/gzuliyujiang/wheelpicker/entity/TimeEntity;)V

    .line 6
    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    .line 7
    iput-object p2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->f:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    return-void
.end method

.method public s(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDateFormatter(Li1/a;)V
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->setDateFormatter(Li1/a;)V

    return-void
.end method

.method public setDateMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->c:Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;

    invoke-virtual {v0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/DateWheelLayout;->setDateMode(I)V

    return-void
.end method

.method public setDefaultValue(Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;)V
    .locals 3
    .param p1    # Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->now()Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->e:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->f:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    if-nez v0, :cond_1

    const/16 v0, 0x1e

    .line 4
    invoke-static {v0}, Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;->yearOnFuture(I)Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->f:Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;

    .line 5
    :cond_1
    new-instance v0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout$b;

    invoke-direct {v0, p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout$b;-><init>(Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;Lcom/github/gzuliyujiang/wheelpicker/entity/DatimeEntity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOnDatimeSelectedListener(Li1/d;)V
    .locals 0

    iput-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->h:Li1/d;

    return-void
.end method

.method public setTimeFormatter(Li1/i;)V
    .locals 1

    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->setTimeFormatter(Li1/i;)V

    return-void
.end method

.method public setTimeMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->d:Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;

    invoke-virtual {v0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/TimeWheelLayout;->setTimeMode(I)V

    .line 2
    iput p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/DatimeWheelLayout;->g:I

    return-void
.end method
