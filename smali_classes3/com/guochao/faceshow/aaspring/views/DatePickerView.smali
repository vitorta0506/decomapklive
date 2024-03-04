.class public Lcom/guochao/faceshow/aaspring/views/DatePickerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;,
        Lcom/guochao/faceshow/aaspring/views/DatePickerView$f;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field c:I

.field d:I

.field e:I

.field f:Ljava/util/Calendar;

.field private g:Lcom/guochao/faceshow/aaspring/views/DatePickerView$f;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field j:Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

.field k:Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

.field l:Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

.field mWheelViewDay:Lcom/guochao/faceshow/views/wheelview/WheelView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mWheelViewMonth:Lcom/guochao/faceshow/views/wheelview/WheelView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mWheelViewYear:Lcom/guochao/faceshow/views/wheelview/WheelView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x12

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->a:I

    const/16 p1, 0x10

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->b:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->h:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->i:Ljava/util/List;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x12

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->a:I

    const/16 p1, 0x10

    .line 9
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->b:I

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->h:Ljava/util/List;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->i:Ljava/util/List;

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x12

    .line 14
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->a:I

    const/16 p1, 0x10

    .line 15
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->b:I

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->h:Ljava/util/List;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->i:Ljava/util/List;

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->h()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/DatePickerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/DatePickerView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->i(III)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/views/DatePickerView;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->l(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;)V

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/views/DatePickerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/views/DatePickerView;II)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->g(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/views/DatePickerView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->b:I

    return p0
.end method

.method private g(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 1
    rem-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    if-nez v1, :cond_0

    rem-int/lit8 p1, p1, 0x64

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    const/4 p1, 0x5

    if-eq p2, p1, :cond_3

    const/16 p1, 0xa

    if-eq p2, p1, :cond_3

    const/16 p1, 0xc

    if-eq p2, p1, :cond_3

    const/4 p1, 0x7

    if-eq p2, p1, :cond_3

    const/16 p1, 0x8

    if-eq p2, p1, :cond_3

    const/16 p1, 0x1e

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const/16 p1, 0x1d

    goto :goto_1

    :cond_2
    const/16 p1, 0x1c

    goto :goto_1

    :cond_3
    const/16 p1, 0x1f

    .line 2
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_2
    if-gt v1, p1, :cond_4

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object p2
.end method

.method private getMonthList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0xc

    if-gt v2, v3, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getYearList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x79e

    .line 2
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private i(III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "year:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " month:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " day:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatePickerView"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->g:Lcom/guochao/faceshow/aaspring/views/DatePickerView$f;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/DatePickerView$f;->I1(Ljava/util/Calendar;III)V

    :cond_0
    return-void
.end method

.method private l(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lmb/b;->f()Ljava/util/ArrayList;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->a:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v3, "#222222"

    .line 7
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 8
    :cond_0
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->b:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v3, "#80333333"

    .line 9
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getOnDateChangedListener()Lcom/guochao/faceshow/aaspring/views/DatePickerView$f;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->g:Lcom/guochao/faceshow/aaspring/views/DatePickerView$f;

    return-object v0
.end method

.method public h()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d02ba

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-static {p0}, Lbutterknife/ButterKnife;->b(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->i:Ljava/util/List;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->getYearList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->g(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/views/wheelview/WheelView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->i:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;-><init>(Lcom/guochao/faceshow/aaspring/views/DatePickerView;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->j:Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setViewAdapter(Lmb/c;)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/views/wheelview/WheelView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->getMonthList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;-><init>(Lcom/guochao/faceshow/aaspring/views/DatePickerView;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->k:Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setViewAdapter(Lmb/c;)V

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewDay:Lcom/guochao/faceshow/views/wheelview/WheelView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->h:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;-><init>(Lcom/guochao/faceshow/aaspring/views/DatePickerView;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->l:Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setViewAdapter(Lmb/c;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/views/wheelview/WheelView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/DatePickerView$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/DatePickerView;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->addChangingListener(Llb/b;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/views/wheelview/WheelView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/DatePickerView;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->addChangingListener(Llb/b;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewDay:Lcom/guochao/faceshow/views/wheelview/WheelView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/DatePickerView$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView$c;-><init>(Lcom/guochao/faceshow/aaspring/views/DatePickerView;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->addChangingListener(Llb/b;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewDay:Lcom/guochao/faceshow/views/wheelview/WheelView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/DatePickerView$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView$d;-><init>(Lcom/guochao/faceshow/aaspring/views/DatePickerView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->i:Ljava/util/List;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->getMonthList()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewDay:Lcom/guochao/faceshow/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->h:Ljava/util/List;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setCurrentItem(I)V

    return-void
.end method

.method public k(III)V
    .locals 2

    .line 1
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->d:I

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->e:I

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->c:I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->j()V

    return-void
.end method

.method public setDefaultDate(Ljava/util/Calendar;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->c:I

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->e:I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->d:I

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->j()V

    return-void
.end method

.method public setOnDateChangedListener(Lcom/guochao/faceshow/aaspring/views/DatePickerView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->g:Lcom/guochao/faceshow/aaspring/views/DatePickerView$f;

    return-void
.end method
