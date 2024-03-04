.class public Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;
    }
.end annotation


# instance fields
.field a:I

.field private b:Z

.field btnWithdrawal:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

.field etAliPayAccount:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etAliPayName:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etBankCardAccount:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etBankCardAccountHolder:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etBankCardAddress:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etPayPalAccount:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etPayPalName:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etPayoneerAccount:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etPayoneerId:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field flAliPayAccount:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field flAliPayName:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field flBankCard:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field flBankCardAccountHolder:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field flBankCardAddress:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field flPayoneer:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field flRegion:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field flSelectWithdrawalWay:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

.field private h:Z

.field private i:I

.field ivArrowRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivPayoneerMore:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivWithdrawalLogo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivWithdrawalMore:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Lcom/guochao/faceshow/mine/model/BankBean;

.field private l:I

.field llAliPayLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llBankCardLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llPayPalLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llPayoneerLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llPayoneerSelect:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llPayoneerv2Layout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PayoneerData;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

.field private o:Z

.field private p:Z

.field rlBankNameLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAddPayoneer:Landroid/widget/TextView;
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

.field tvPayoneerTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvRegion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvRegionName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvWithdrawalWay:Landroid/widget/TextView;
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
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->h:Z

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->i:I

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->i:I

    return p0
.end method

.method static synthetic B0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/mine/model/BankBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->k:Lcom/guochao/faceshow/mine/model/BankBean;

    return-object p0
.end method

.method static synthetic E0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->l:I

    return p0
.end method

.method static synthetic F0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->l:I

    return p1
.end method

.method static synthetic G0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Lg7/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->showErrorToast(Lg7/a;)V

    return-void
.end method

.method static synthetic H0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->Z0(Z)V

    return-void
.end method

.method static synthetic I0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->N0()V

    return-void
.end method

.method private N0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->g()V

    :cond_0
    const v0, 0x7f0a00aa

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private P0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->N0()V

    .line 2
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_BANK_CARD:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b1(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->k:Lcom/guochao/faceshow/mine/model/BankBean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getOpenBank()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/guochao/faceshow/mine/model/BankBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/mine/model/BankBean;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->k:Lcom/guochao/faceshow/mine/model/BankBean;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getBankId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/mine/model/BankBean;->setBank_id(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->k:Lcom/guochao/faceshow/mine/model/BankBean;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getOpenBank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/mine/model/BankBean;->setBank_name(Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getBankAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getBankAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getAccountHolder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccountHolder:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getAccountHolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getOpenBank()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvBankName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getOpenBank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getOpenBankAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAddress:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getOpenBankAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private Q0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->N0()V

    .line 2
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAY_PAL:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b1(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a1()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayPalAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalAccount:Landroid/widget/EditText;

    const v1, 0x7f1206e2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalAccount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayPalAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvRegion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getCountryId()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->l:I

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayPalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayPalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private S0(I)V
    .locals 2

    const-string v0, "tokens/pay/payoneer/accounts"

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;I)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private T0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->N0()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayoneerAccountV2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerAccount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayoneerAccountV2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAYONEERV2:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b1(I)V

    return-void
.end method

.method private W0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    const v1, 0x7f0a0d7d

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    const v2, 0x7f0a0d7e

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-direct {v0, p0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Landroid/view/ViewStub;Landroid/view/ViewStub;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->j()V

    .line 4
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_USDT:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b1(I)V

    const v0, 0x7f0a00aa

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private X0()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    if-eqz v0, :cond_d

    const v1, 0x7f12022d

    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ae6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setPayoneerAccountV2(Ljava/lang/String;)V

    .line 5
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAYONEERV2:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d1(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f120acb

    new-array v1, v2, [Ljava/lang/Object;

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USDT-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const v3, 0x7f1200c7

    .line 8
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    goto/16 :goto_0

    .line 10
    :pswitch_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerId:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setPayoneerId(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->n:Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setPayoneerAccount(Ljava/lang/String;)V

    .line 13
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAYONEER:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d1(I)V

    goto/16 :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ae5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setPayPalAccount(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setPayPalName(Ljava/lang/String;)V

    .line 20
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAY_PAL:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d1(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ad2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccountHolder:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ad6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 25
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->k:Lcom/guochao/faceshow/mine/model/BankBean;

    if-nez v0, :cond_8

    .line 26
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ad8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 27
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ad4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 29
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setBankAccount(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->k:Lcom/guochao/faceshow/mine/model/BankBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/BankBean;->getBank_id()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setBankId(I)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccountHolder:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setAccountHolder(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAddress:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setOpenBankAddress(Ljava/lang/String;)V

    .line 33
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_BANK_CARD:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d1(I)V

    goto :goto_0

    .line 34
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayAccount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 35
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120acf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 36
    :cond_b
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 37
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 38
    :cond_c
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setAliPayAccount(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setAliPayName(Ljava/lang/String;)V

    .line 40
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_ALI_PAY:I

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d1(I)V

    goto :goto_0

    :cond_d
    const v0, 0x7f120ae8

    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_e
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private Y0()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    const-string v1, "app"

    const-string v2, "withdrawal_cache"

    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private Z0(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->N0()V

    const/16 v0, 0x9

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    const v1, 0x7f0f064a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvWithdrawalWay:Landroid/widget/TextView;

    const v1, 0x7f1206da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayoneerAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->n:Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->n:Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->n:Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayoneerAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->setId(Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayoneerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerId:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayoneerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->n:Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getPayoneerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->setPayoneerId(Ljava/lang/String;)V

    .line 12
    sget p1, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAYONEER:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b1(I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/4 p1, -0x1

    .line 13
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b1(I)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->h(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method private a1()V
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
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getNationalFlagAndCode(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$NationalFlagAndCodeCallBack;)V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g1(Ljava/lang/String;)V

    return-void
.end method

.method private b1(I)V
    .locals 6

    .line 1
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_ALI_PAY:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llAliPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerv2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayPalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llBankCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAddPayoneer:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvPayoneerTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    const v0, 0x7f0f064f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvWithdrawalWay:Landroid/widget/TextView;

    const v0, 0x7f1200fa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    goto/16 :goto_0

    .line 13
    :cond_0
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_BANK_CARD:I

    if-ne p1, v0, :cond_1

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llAliPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerv2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayPalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llBankCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAddPayoneer:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvPayoneerTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvWithdrawalWay:Landroid/widget/TextView;

    const v0, 0x7f120110

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    const v0, 0x7f0f064e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x4

    .line 24
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    goto/16 :goto_0

    .line 25
    :cond_1
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAY_PAL:I

    if-ne p1, v0, :cond_2

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llAliPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerv2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayPalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llBankCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAddPayoneer:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvPayoneerTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvWithdrawalWay:Landroid/widget/TextView;

    const v0, 0x7f1206e1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    const v0, 0x7f0f064b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x5

    .line 36
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    goto/16 :goto_0

    .line 37
    :cond_2
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAYONEER:I

    const/16 v3, 0x9

    const v4, 0x7f0f064a

    const v5, 0x7f1206da

    if-ne p1, v0, :cond_3

    .line 38
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llAliPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerv2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayPalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llBankCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAddPayoneer:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvPayoneerTip:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvWithdrawalWay:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvPayoneerTip:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/UrlUtils;->checkLink(Landroid/widget/TextView;)V

    .line 49
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    goto/16 :goto_0

    .line 50
    :cond_3
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAYONEERV2:I

    if-ne p1, v0, :cond_4

    .line 51
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llAliPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerv2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayPalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llBankCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAddPayoneer:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvPayoneerTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvWithdrawalWay:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 p1, 0xb

    .line 61
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    goto/16 :goto_0

    .line 62
    :cond_4
    sget v0, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_USDT:I

    if-ne p1, v0, :cond_5

    .line 63
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llAliPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerv2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayPalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llBankCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAddPayoneer:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvPayoneerTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvWithdrawalWay:Landroid/widget/TextView;

    const v0, 0x7f120abe

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    const v0, 0x7f0f064d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 p1, 0xa

    .line 73
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    goto/16 :goto_0

    .line 74
    :cond_5
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b:Z

    if-eqz p1, :cond_6

    .line 75
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->flPayoneer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llAliPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerv2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayPalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llBankCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAddPayoneer:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvPayoneerTip:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvWithdrawalWay:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvPayoneerTip:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/UrlUtils;->checkLink(Landroid/widget/TextView;)V

    .line 87
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    goto :goto_0

    .line 88
    :cond_6
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->c:Z

    if-eqz p1, :cond_7

    .line 89
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llAliPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerv2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llAliPayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llBankCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAddPayoneer:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvPayoneerTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_7
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d:Z

    if-eqz p1, :cond_8

    .line 98
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b1(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method private checkPwd()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-string v1, "payPassword"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/PayoneerData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->n:Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    return-object p0
.end method

.method private d1(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->Y0()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->checkPwd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->showSetPwdDialog()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/views/n;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const v2, 0x7f1304b9

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120800

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    invoke-direct {v4, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/guochao/faceshow/views/n;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/n$b;)V

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/n;->show()V

    :goto_0
    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m:Ljava/util/List;

    return-object p1
.end method

.method private g1(Ljava/lang/String;)V
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

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$f;

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Ljava/lang/String;)V

    const p1, 0x7f1304b9

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/guochao/faceshow/views/f;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/f$a;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Lcom/guochao/faceshow/aaspring/beans/PayoneerData;)Lcom/guochao/faceshow/aaspring/beans/PayoneerData;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->n:Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    return-object p1
.end method

.method private initAliPayData()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->N0()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b1(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getAliPayAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayAccount:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getAliPayAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getAliPayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getAliPayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->o:Z

    return p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->o:Z

    return p1
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b1(I)V

    return-void
.end method

.method static synthetic o0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->initAliPayData()V

    return-void
.end method

.method static synthetic p0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->P0()V

    return-void
.end method

.method static synthetic q0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->Q0()V

    return-void
.end method

.method static synthetic r0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->S0(I)V

    return-void
.end method

.method static synthetic s0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->T0()V

    return-void
.end method

.method private showDialog()V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

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
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->showDialog()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1206ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->btnWithdrawal:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120adf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :goto_0
    return-void
.end method

.method private showSelectPayWay()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->h:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitch()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPaypalSwitch()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUsdtSwitch()I

    move-result v0

    if-eq v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/views/a;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->h:Z

    const v2, 0x7f1304b9

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/guochao/faceshow/views/a;-><init>(Landroid/content/Context;ZILcom/guochao/faceshow/views/a$b;)V

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSetPwdDialog()V
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1206d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$h;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    const v4, 0x7f1304b9

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/e$a;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1206d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method static synthetic t0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->W0()V

    return-void
.end method

.method static synthetic u0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d1(I)V

    return-void
.end method

.method static synthetic v0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->p:Z

    return p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d6

    return v0
.end method

.method public initView()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f120677

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 5
    :cond_0
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    const-string v1, "app"

    const-string v3, "withdrawal_cache"

    invoke-static {v1, v3, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    goto :goto_0

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "payMode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->i:I

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "money"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->j:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "inChina"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->h:Z

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isH5"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->p:Z

    .line 12
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->h:Z

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAmount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uffe5 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvAmount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "US$ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAliPaySwitch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPaypalSwitch()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitchV2()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitch()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUsdtSwitch()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 20
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->initAliPayData()V

    goto/16 :goto_2

    .line 21
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAliPaySwitch()I

    move-result v0

    const/4 v4, 0x5

    const/16 v5, 0x8

    if-eq v0, v1, :cond_4

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPaypalSwitch()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 23
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitchV2()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitch()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 25
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUsdtSwitch()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 27
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->c:Z

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->Q0()V

    goto/16 :goto_2

    .line 30
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAliPaySwitch()I

    move-result v0

    const/4 v6, 0x6

    if-eq v0, v1, :cond_5

    .line 31
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPaypalSwitch()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 32
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitchV2()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 33
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitch()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 34
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUsdtSwitch()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0, v6}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 36
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b:Z

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->S0(I)V

    .line 39
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->Z0(Z)V

    goto/16 :goto_2

    .line 40
    :cond_5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAliPaySwitch()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 41
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPaypalSwitch()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 42
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitch()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 43
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitchV2()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 44
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUsdtSwitch()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 45
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 46
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->T0()V

    goto/16 :goto_2

    .line 48
    :cond_6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAliPaySwitch()I

    move-result v0

    const/4 v7, 0x7

    if-eq v0, v1, :cond_7

    .line 49
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPaypalSwitch()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 50
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitch()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 51
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitchV2()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 52
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUsdtSwitch()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 53
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0, v7}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 54
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d:Z

    .line 56
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->W0()V

    goto/16 :goto_2

    .line 57
    :cond_7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAliPaySwitch()I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 58
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPaypalSwitch()I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 59
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitch()I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 60
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitchV2()I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 61
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUsdtSwitch()I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 62
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setWithdrawalType(I)V

    .line 63
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->ivWithdrawalMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 64
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getWithdrawalType()I

    move-result v0

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAliPaySwitch()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 65
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->initAliPayData()V

    goto/16 :goto_2

    .line 66
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getWithdrawalType()I

    move-result v0

    if-ne v0, v4, :cond_a

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPaypalSwitch()I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 67
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->Q0()V

    goto :goto_2

    .line 68
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getWithdrawalType()I

    move-result v0

    if-ne v0, v6, :cond_b

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitch()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 69
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->S0(I)V

    .line 70
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->Z0(Z)V

    goto :goto_2

    .line 71
    :cond_b
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getWithdrawalType()I

    move-result v0

    if-ne v0, v5, :cond_c

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPayoneerSwitchV2()I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 72
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->T0()V

    goto :goto_2

    .line 73
    :cond_c
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getWithdrawalType()I

    move-result v0

    if-ne v0, v7, :cond_d

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getUsdtSwitch()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 74
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->W0()V

    goto :goto_2

    .line 75
    :cond_d
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b1(I)V

    :goto_2
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->k:Lcom/guochao/faceshow/mine/model/BankBean;

    if-eqz p1, :cond_2

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvBankName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/BankBean;->getBank_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->k:Lcom/guochao/faceshow/mine/model/BankBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/BankBean;->getBank_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setOpenBank(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->k:Lcom/guochao/faceshow/mine/model/BankBean;

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

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->l:I

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvRegion:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setCountry(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->g:Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->l:I

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->setCountryId(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onPayoneerBindSuccess(Lcom/guochao/faceshow/aaspring/beans/PayoneerData;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "WithdrawalNewActivity"

    const-string v0, "status=1\u5237\u65b0"

    .line 1
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->o:Z

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->S0(I)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->h(Landroid/app/Activity;I)V

    goto/16 :goto_2

    .line 3
    :sswitch_1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    const-class p1, Lcom/guochao/faceshow/mine/view/BankListActivity;

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Ljava/lang/Class;I)V

    goto/16 :goto_2

    .line 5
    :sswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->llPayoneerSelect:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$c;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)V

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->f(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Ljava/util/List;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/views/m;)V

    goto :goto_2

    :cond_2
    :goto_0
    return-void

    .line 7
    :sswitch_3
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->c:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d:Z

    if-eqz p1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->showSelectPayWay()V

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    .line 9
    :sswitch_4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 10
    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "area_type"

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x63

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 13
    :sswitch_5
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 14
    :cond_6
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->b:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->h(Landroid/app/Activity;I)V

    goto :goto_2

    .line 16
    :cond_8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->X0()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a017c -> :sswitch_5
        0x7f0a041e -> :sswitch_4
        0x7f0a0420 -> :sswitch_3
        0x7f0a06e9 -> :sswitch_2
        0x7f0a09a6 -> :sswitch_1
        0x7f0a0c3f -> :sswitch_0
    .end sparse-switch
.end method
