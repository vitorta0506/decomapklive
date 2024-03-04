.class public Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;",
        ">;",
        "Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Calendar;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/TransactionType;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

.field topLL:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvIncome:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvMore:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvSpending:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->i:I

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k0()V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->i:I

    return p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->j:I

    return p1
.end method

.method private k0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->i:I

    const/16 v1, 0xf

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->a:I

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1208de

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvMore:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->a:I

    const-string v1, "Z"

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "S"

    goto :goto_1

    :cond_4
    const-string v1, "F"

    .line 12
    :cond_5
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->j:I

    if-lez v2, :cond_6

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v2, "tokens/orderSum/querySumByType"

    .line 15
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v2

    const-string v3, "type"

    .line 16
    invoke-virtual {v2, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, "dealTypes"

    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    const-string v2, "parentTypes"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvDate:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getFirstDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dealDateStart"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvDate:Landroid/widget/TextView;

    .line 20
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getLastDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dealDateEnd"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;)V

    .line 21
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private l0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->g:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->g:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v1, 0xa

    if-ge v2, v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->c:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->c:Ljava/lang/String;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private o0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->l:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/mine/model/TransactionType;

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/mine/model/TransactionType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvMore:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->S1(Ljava/util/List;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->l:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->setOnSelectItemListener(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$c;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->l:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "SelectRecordType"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private p0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->g:Ljava/util/Calendar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->Q1(Ljava/util/Calendar;Z)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->setOnDatePickListener(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DatePick"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static q0(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "recordType"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "date"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/app/Dialog;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;ILcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0083

    return v0
.end method

.method public i0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;ILcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->a:I

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;->c(Landroid/content/Context;ILcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;I)V

    return-void
.end method

.method public initView()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setStatusBarTextBlack(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "recordType"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->a:I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->f:Ljava/lang/String;

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->a:I

    if-nez v1, :cond_0

    const v1, 0x7f1208db

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->topLL:Landroid/view/View;

    const v2, 0x7f0f0050

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    const v1, 0x7f1208dc

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->topLL:Landroid/view/View;

    const v2, 0x7f0f004d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f1208dd

    .line 10
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->topLL:Landroid/view/View;

    const v2, 0x7f0f004f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->g:Ljava/util/Calendar;

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->l0()V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->f:Ljava/lang/String;

    const-string v2, "/"

    const-string v4, "-"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->f:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->g:Ljava/util/Calendar;

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 18
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->g:Ljava/util/Calendar;

    const/4 v4, 0x2

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {v2, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->a:I

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/RecordUtils;->getRecordTypeList(Landroid/app/Activity;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->h:Ljava/util/List;

    .line 21
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getEmptyView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0603ce

    .line 22
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v1, 0x43160000    # 150.0f

    .line 23
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f0a0330

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0255

    .line 25
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLeftBackIcon(I)V

    return-void
.end method

.method public loadData(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->i:I

    const/16 v1, 0xf

    const/16 v2, 0x14

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->a:I

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1208de

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvMore:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->a:I

    if-nez v0, :cond_4

    const-string v0, "Z"

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const-string v0, "F"

    goto :goto_1

    :cond_5
    const-string v0, "S"

    .line 14
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->j:I

    if-lez v3, :cond_6

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v3, "tokens/order/pageListByType"

    .line 17
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v3

    const-string v4, "type"

    .line 18
    invoke-virtual {v3, v4, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->k:Ljava/util/List;

    const-string v4, "parentTypes"

    .line 19
    invoke-virtual {v0, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v3, "dealTypes"

    .line 20
    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvDate:Landroid/widget/TextView;

    .line 21
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getFirstDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "dealDateStart"

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvDate:Landroid/widget/TextView;

    .line 22
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getLastDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "dealDateEnd"

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "page"

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pageSize"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;I)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public m0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d025b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public n0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;ILcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a06e0

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0c67

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0d08

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordTimeZoneTipActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->p0()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->o0()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->m0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/RecordViewHolder;ILcom/guochao/faceshow/aaspring/beans/NewRecordBeans$NewRecordBean;)V

    return-void
.end method

.method public u(Landroid/app/Dialog;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const p1, 0x7f120b06

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "%d"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->d:I

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getMonthOfYear(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->e:I

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0xa

    if-ge p2, v2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvDate:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getMonthOfYear(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p3

    const-string p1, "%d-0%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvDate:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->getMonthOfYear(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p3

    const-string p1, "%d-%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->reload()V

    return-void
.end method
