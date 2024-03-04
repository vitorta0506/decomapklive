.class public Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$e;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:Ljava/util/Calendar;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$e;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    const/16 p1, 0x10

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->f:I

    const/16 p1, 0xf

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->g:I

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->j()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    const/16 p1, 0x10

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->f:I

    const/16 p1, 0xf

    .line 9
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->g:I

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->j()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    const/16 p1, 0x10

    .line 13
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->f:I

    const/16 p1, 0xf

    .line 14
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->g:I

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->j()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->k:Z

    return p0
.end method

.method private getMonthList()Ljava/util/List;
    .locals 3
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

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120468

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1202ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120570

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120105

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12058d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120473

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120472

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120107

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1207dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120696

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120692

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getSelectMonth()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->c:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f120468

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120692

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120696

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1207dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120107

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120472

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120473

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 10
    :pswitch_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12058d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :pswitch_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120105

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 12
    :pswitch_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120570

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 13
    :pswitch_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1202ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :pswitch_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getThisYearMonthList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getMonthList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-le v0, v2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getMonthList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getYearList()Ljava/util/List;
    .locals 9
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

    .line 2
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->k:Z

    const/4 v2, 0x1

    const/16 v3, 0x7e2

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    :goto_0
    if-gt v3, v1, :cond_2

    .line 5
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v4

    invoke-virtual {v4}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120b06

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getThisYearMonthList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getMonthList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "year:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " month:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatePickerView"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->h:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$e;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->d:Ljava/util/Calendar;

    invoke-interface {v0, v1, p1, p2}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$e;->A0(Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getOnDateChangedListener()Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$e;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->h:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$e;

    return-object v0
.end method

.method public j()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0363

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->b(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getYearList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getThisYearMonthList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setItems(Ljava/util/List;)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setItemsVisibleCount(I)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setTextSize(F)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setInitPosition(I)V

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setItems(Ljava/util/List;)V

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setItemsVisibleCount(I)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setTextSize(F)V

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getSelectMonth()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setInitPosition(I)V

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->d:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->i:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->j:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->i:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setOnItemScrollListener(Lna/a;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setOnItemScrollListener(Lna/a;)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;-><init>(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setListener(Lna/b;)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$d;-><init>(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setListener(Lna/b;)V

    return-void
.end method

.method public l()V
    .locals 8

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f120b06

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setInitPosition(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setInitPosition(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getMonthList()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getSelectMonth()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setInitPosition(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->i:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getSelectMonth()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->j:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->i:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultDate(Ljava/util/Calendar;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->d:Ljava/util/Calendar;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->b:I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->d:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->c:I

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->l()V

    :cond_0
    return-void
.end method

.method public setOnDateChangedListener(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->h:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$e;

    return-void
.end method

.method public setShowAll(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->k:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getYearList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getYearList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getMonthList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setItems(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setItems(Ljava/util/List;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setInitPosition(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->getSelectMonth()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setInitPosition(I)V

    return-void
.end method
