.class public Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/Progress;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field llCause:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llModeBank:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llModeUsdt:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llModeZfb:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llName:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rcvProgress:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAccount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAccountHolder:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAccountMode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAccountTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvBankAddress:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvBankCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvBankName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCause:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvDeductFb:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvUSDT:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvWithdrawalMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvWithdrawalState:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvWithdrawalTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->d0(Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;)V

    return-void
.end method

.method private d0(Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAuditProces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v1, v3, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAuditProces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/Progress;->getSpeed()I

    move-result v3

    if-eq v3, v5, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAuditProces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/Progress;->getSpeed()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAuditProces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v6, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAuditProces()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {v3, v7}, Lcom/guochao/faceshow/aaspring/beans/Progress;->setDownColor(I)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAuditProces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/Progress;->getSpeed()I

    move-result v3

    if-ne v3, v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAuditProces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAuditProces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_4

    if-ne v2, v7, :cond_4

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/Progress;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/Progress;-><init>()V

    const/4 v2, 0x6

    .line 9
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/Progress;->setSpeed(I)V

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->setSpeed(I)V

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAmount_type()I

    move-result v1

    const-string v2, "ar"

    if-ne v1, v7, :cond_6

    .line 14
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalMoney:Landroid/widget/TextView;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getMoney()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "{0}\uffe5"

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalMoney:Landroid/widget/TextView;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getMoney()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "\uffe5{0}"

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 17
    :cond_6
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalMoney:Landroid/widget/TextView;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getMoney()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "{0} US$"

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 19
    :cond_7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalMoney:Landroid/widget/TextView;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getMoney()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "US$ {0}"

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getSpeed()I

    move-result v1

    const v2, 0x7f120ae1

    const v3, 0x7f06009c

    if-nez v1, :cond_8

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    const v3, 0x7f1208a7

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalTip:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 24
    :cond_8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getSpeed()I

    move-result v1

    if-ne v1, v7, :cond_9

    .line 25
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    const v3, 0x7f1207ab

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalTip:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 28
    :cond_9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getSpeed()I

    move-result v1

    if-ne v1, v6, :cond_a

    .line 29
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    const v3, 0x7f120104

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalTip:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 32
    :cond_a
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getSpeed()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_b

    .line 33
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    const v2, 0x7f120aee

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalTip:Landroid/widget/TextView;

    const v2, 0x7f120add

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 36
    :cond_b
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getSpeed()I

    move-result v1

    const v6, 0x7f120ad1

    const v8, 0x7f0603d6

    if-ne v1, v5, :cond_c

    .line 37
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    invoke-static {p0, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    const v2, 0x7f120adf

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalTip:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 40
    :cond_c
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getSpeed()I

    move-result v1

    if-ne v1, v4, :cond_d

    .line 41
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    invoke-static {p0, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    const v2, 0x7f12098a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalTip:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 44
    :cond_d
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalState:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvWithdrawalTip:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvDeductFb:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getDeduction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccountMode:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getPayTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getPay_type()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v5, :cond_e

    .line 50
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeZfb:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeUsdt:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeBank:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvBankCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccountHolder:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getRealName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvBankName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getBankName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvBankAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getBankAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 57
    :cond_e
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getPay_type()I

    move-result v1

    if-ne v1, v7, :cond_f

    .line 58
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeUsdt:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeZfb:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeBank:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getRealName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 63
    :cond_f
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getPay_type()I

    move-result v1

    const/16 v3, 0x9

    if-eq v1, v3, :cond_12

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getPay_type()I

    move-result v1

    const/16 v3, 0xb

    if-ne v1, v3, :cond_10

    goto :goto_3

    .line 64
    :cond_10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getPay_type()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_11

    .line 65
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeUsdt:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llName:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeBank:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeZfb:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvUSDT:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 70
    :cond_11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeZfb:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeBank:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getRealName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 74
    :cond_12
    :goto_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeUsdt:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llName:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llModeBank:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitchV2()I

    move-result v1

    if-ne v1, v7, :cond_13

    .line 78
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccountTip:Landroid/widget/TextView;

    const v3, 0x7f120acc

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 79
    :cond_13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccountTip:Landroid/widget/TextView;

    const v3, 0x7f120ae3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvAccount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getFailReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 82
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llCause:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 83
    :cond_14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->llCause:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->tvCause:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalDetails;->getFailReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d3

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f120ade

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "WithdrawalRecord"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->getAid()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->c:I

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->b:Ljava/util/List;

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->rcvProgress:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->b:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->rcvProgress:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public loadData()V
    .locals 3

    const-string v0, "tokens/user/trade/info/queryWithdrawalInfo"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;->c:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "aId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
