.class public Lcom/guochao/faceshow/mine/view/WithdrawalActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field btnWithdrawal:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field c:Ljava/lang/String;

.field private d:I

.field e:I

.field enterPayName:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etAccount:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etAccountHolder:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etBankAddress:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etBankCardNo:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

.field flRegion:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field g:Lcom/guochao/faceshow/mine/model/BankBean;

.field h:I

.field private i:Z

.field ivArrowRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlBankNameLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvBankName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvRegion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvSelectAccount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvSymbol:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->a:Z

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->c:Ljava/lang/String;

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->e:I

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->h:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->i:Z

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->u0()V

    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->y0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;Lg7/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->showErrorToast(Lg7/a;)V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->d:I

    return p0
.end method

.method private initAliPayData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getAliPayAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getAliPayAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvRegion:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getCountryId()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->d:I

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankCardNo:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccountHolder:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->rlBankNameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1200fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getAliPayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getAliPayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->e:I

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const v2, 0x7f0f0551

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v2, 0x41a00000    # 20.0f

    .line 17
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isLocalChina()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->a:Z

    const-string/jumbo v0, "\uffe5 "

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->c:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v3, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->a:Z

    const-string v0, "US$ "

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->c:Ljava/lang/String;

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "payMode"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->h:I

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "money"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->b:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvAmount:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSymbol:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->a:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->flRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getWithdrawalType()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->q0()V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getWithdrawalType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->initAliPayData()V

    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankCardNo:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccountHolder:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->rlBankNameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$d;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$e;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method static synthetic k0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->d:I

    return p1
.end method

.method static synthetic l0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->showSelectPayWay()V

    return-void
.end method

.method static synthetic m0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->initAliPayData()V

    return-void
.end method

.method static synthetic n0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->q0()V

    return-void
.end method

.method static synthetic o0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->s0()V

    return-void
.end method

.method static synthetic p0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->t0()V

    return-void
.end method

.method private q0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->g:Lcom/guochao/faceshow/mine/model/BankBean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getOpenBank()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/mine/model/BankBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/mine/model/BankBean;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->g:Lcom/guochao/faceshow/mine/model/BankBean;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getBankId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/mine/model/BankBean;->setBank_id(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->g:Lcom/guochao/faceshow/mine/model/BankBean;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getOpenBank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/mine/model/BankBean;->setBank_name(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankCardNo:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getBankAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankCardNo:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getBankAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccountHolder:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getAccountHolder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccountHolder:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getAccountHolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->rlBankNameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getOpenBank()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvBankName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getOpenBank()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getOpenBankAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankAddress:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getOpenBankAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120110

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const v2, 0x7f0f0553

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v2, 0x41a00000    # 20.0f

    .line 21
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x4

    .line 23
    iput v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->e:I

    return-void
.end method

.method private r0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->rlBankNameLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->btnWithdrawal:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private s0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->v0()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->flRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1206e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const v2, 0x7f0f0552

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v2, 0x41a00000    # 20.0f

    .line 6
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x5

    .line 8
    iput v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->e:I

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayPalAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->i:Z

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    const v2, 0x7f1206e2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    const v2, 0x7f1200c2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayPalAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvRegion:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getCountryId()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->d:I

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankCardNo:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccountHolder:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->rlBankNameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayPalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayPalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private showDialog()V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    new-instance v1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$h;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const v1, 0x7f060072

    .line 2
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->m(I)V

    const v1, 0x7f060071

    .line 3
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->d(I)V

    const v1, 0x7f120aea

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method private showErrorToast(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->showDialog()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1206ce

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->btnWithdrawal:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120adf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :goto_0
    return-void
.end method

.method private showSelectPayWay()V
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/a;

    iget-boolean v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->a:Z

    new-instance v2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$f;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$f;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;)V

    const v3, 0x7f1304b9

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/guochao/faceshow/views/a;-><init>(Landroid/content/Context;ZILcom/guochao/faceshow/views/a$b;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private t0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankCardNo:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccountHolder:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->rlBankNameLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etBankAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->flRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    const-string v2, "Payoneer"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const v2, 0x7f0f0551

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v2, 0x41a00000    # 20.0f

    .line 10
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvSelectAccount:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private u0()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    const-string v1, "app"

    const-string/jumbo v2, "withdrawal_cache"

    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private v0()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    new-instance v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$g;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$g;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getNationalFlagAndCode(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$NationalFlagAndCodeCallBack;)V

    return-void
.end method

.method private y0(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/views/f;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1206c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$c;

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;Ljava/lang/String;)V

    const p1, 0x7f1304b9

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/guochao/faceshow/views/f;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/f$a;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d2

    return v0
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    const v1, 0x7f120ae0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    const v1, 0x7f12015e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "bankBean"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/model/BankBean;

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->g:Lcom/guochao/faceshow/mine/model/BankBean;

    if-eqz p1, :cond_2

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvBankName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/BankBean;->getBank_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->g:Lcom/guochao/faceshow/mine/model/BankBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/BankBean;->getBank_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setOpenBank(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->g:Lcom/guochao/faceshow/mine/model/BankBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/BankBean;->getBank_id()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setBankId(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x63

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "content"

    .line 6
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "id"

    .line 7
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->d:I

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->tvRegion:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setCountry(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->d:I

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setCountryId(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120677

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    const-class p1, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    const-string v0, "app"

    const-string/jumbo v1, "withdrawal_cache"

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->f:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->initData()V

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->r0()V

    return-void
.end method

.method public onViewClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "area_type"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x63

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
