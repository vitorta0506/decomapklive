.class public Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/mine/view/fragment/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

.field private f:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

.field llDiamod:Landroidx/appcompat/widget/LinearLayoutCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llF:Landroidx/appcompat/widget/LinearLayoutCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvDiamondDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvDiamondIncome:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvDiamondSpending:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFIncome:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFSpending:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvGDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvGIncome:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvGSpending:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->a:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->b:I

    return p1
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->c:I

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->c:I

    return p1
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->X1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->Y1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->Z1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    return-object p0
.end method

.method private X1(Ljava/lang/String;)V
    .locals 5

    const-string v0, "tokens/orderSum/querySumByType"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "Z"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "/"

    const-string v2, "-"

    .line 3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getFirstDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dealDateStart"

    invoke-virtual {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getLastDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "dealDateEnd"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->d:Ljava/util/List;

    const-string v1, "parentTypes"

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private Y1(Ljava/lang/String;)V
    .locals 5

    const-string v0, "tokens/orderSum/querySumByType"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "F"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "/"

    const-string v2, "-"

    .line 3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getFirstDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dealDateStart"

    invoke-virtual {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getLastDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "dealDateEnd"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->d:Ljava/util/List;

    const-string v1, "parentTypes"

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private Z1(Ljava/lang/String;)V
    .locals 5

    const-string v0, "tokens/orderSum/querySumByType"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "S"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "/"

    const-string v2, "-"

    .line 3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getFirstDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dealDateStart"

    invoke-virtual {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getLastDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "dealDateEnd"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->d:Ljava/util/List;

    const-string v1, "parentTypes"

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private a2(Landroid/widget/TextView;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 4
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v4

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->Q1(Ljava/util/Calendar;Z)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$d;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->setOnDatePickListener(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "DatePick"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b2(Landroid/widget/TextView;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 4
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v4

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->Q1(Ljava/util/Calendar;Z)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->setOnDatePickListener(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "DatePick"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public E0()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->i0()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01d0

    return v0
.end method

.method public i0()V
    .locals 0

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v0

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-ge p1, v4, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "%d/0%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "%d/%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->a:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvDiamondDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvFDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvGDate:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected loadData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->X1(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->Y1(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->Z1(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvGDate:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->b2(Landroid/widget/TextView;)V

    goto :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvFDate:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->b2(Landroid/widget/TextView;)V

    goto :goto_0

    .line 4
    :sswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvDiamondDate:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->a2(Landroid/widget/TextView;)V

    goto :goto_0

    .line 5
    :sswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvGDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->q0(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :sswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvFDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->q0(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 7
    :sswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;->tvDiamondDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->q0(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a06c9 -> :sswitch_5
        0x7f0a06cb -> :sswitch_4
        0x7f0a06d2 -> :sswitch_3
        0x7f0a0c6f -> :sswitch_2
        0x7f0a0c81 -> :sswitch_1
        0x7f0a0c92 -> :sswitch_0
    .end sparse-switch
.end method
