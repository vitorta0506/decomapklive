.class public Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;",
        "Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

.field private d:I

.field private e:I

.field llTitleContent:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAllRmb:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAllUsd:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvSelectInterval:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->a:I

    return p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->a:I

    return p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->b:I

    return p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->b:I

    return p1
.end method

.method private k0(Ljava/lang/String;)I
    .locals 2

    const v0, 0x7f120468

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x7f1202ff

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const v0, 0x7f120570

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const v0, 0x7f120105

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const v0, 0x7f12058d

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x5

    return p1

    :cond_4
    const v0, 0x7f120473

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    const v0, 0x7f120472

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    return p1

    :cond_6
    const v0, 0x7f120107

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0x8

    return p1

    :cond_7
    const v0, 0x7f1207dd

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x9

    return p1

    :cond_8
    const v0, 0x7f120696

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0xa

    return p1

    :cond_9
    const v0, 0x7f120692

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0xb

    return p1

    :cond_a
    const v0, 0x7f1201f6

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0xc

    return p1

    :cond_b
    return v1
.end method


# virtual methods
.method public b(Landroid/app/Dialog;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->i0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d7

    return v0
.end method

.method public i0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;)V
    .locals 5

    const p2, 0x7f0a0d33

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0a0d30

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->getApplayTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->getApplayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/utils/TimeUtil;->getGiftTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->getAmount_type()I

    move-result p2

    const/4 v0, 0x2

    const-string v1, "ar"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v0, :cond_2

    .line 7
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p2

    invoke-virtual {p2}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-array p2, v3, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->getAmount()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "{0} US$"

    invoke-static {p3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->getAmount()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "US$ {0}"

    invoke-static {p3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p2

    invoke-virtual {p2}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-array p2, v3, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->getAmount()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "{0}\uffe5"

    invoke-static {p3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    new-array p2, v3, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;->getAmount()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "\uffe5{0}"

    invoke-static {p3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    const v0, 0x7f120aeb

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getEmptyView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0603ce

    .line 4
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v1, 0x43160000    # 150.0f

    .line 5
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f0a0330

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public l0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;)V
    .locals 0

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDetailsActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "WithdrawalRecord"

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public loadData(I)V
    .locals 5

    const/16 v0, 0x14

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setFooterView(I)V

    :cond_0
    const-string v2, "tokens/user/trade/info/queryTradeInfo"

    .line 3
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "userId"

    invoke-virtual {v2, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v2, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const v2, 0x7f1200fb

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->tvSelectInterval:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "0"

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->tvSelectInterval:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "time"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "limit"

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;I)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->l0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/WithdrawalRecord;)V

    return-void
.end method

.method public onViewClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const v0, 0x7f1200fb

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->tvSelectInterval:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->Q1(Ljava/util/Calendar;Z)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    .line 5
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;->setOnDatePickListener(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog$c;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DatePick"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public u(Landroid/app/Dialog;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f1200fb

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->tvSelectInterval:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zh"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f120b06

    .line 4
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

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 6
    :goto_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->d:I

    .line 7
    invoke-direct {p0, p4}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->k0(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->e:I

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->tvSelectInterval:Landroid/widget/TextView;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const/4 p1, 0x1

    invoke-direct {p0, p4}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->k0(Ljava/lang/String;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p1

    const-string p1, "%d-%d"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDatePickerDialog;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->reload()V

    return-void
.end method
