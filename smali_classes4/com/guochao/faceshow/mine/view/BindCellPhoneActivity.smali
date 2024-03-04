.class public Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field btnBind:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field btnChange:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field btnNext:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field btnSendVerificationCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field etNewPhoneNumber:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etNewPhoneNumber_rl:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etPhoneNumber:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etPhoneNumber_rl:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etVerificationCode:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field flVerificationLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field j:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

.field k:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

.field l:Landroid/text/TextWatcher;

.field national_flag:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field national_flag1:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field national_txt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field national_txt1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvHasBindNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->a:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->c:Z

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->l:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method private initData()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->a:I

    const/4 v1, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->tvHasBindNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etPhoneNumber_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->flVerificationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnNext:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnBind:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->tvHasBindNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etPhoneNumber_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->flVerificationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnNext:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnBind:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->d(Landroid/view/View;Landroid/view/View;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->l:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etVerificationCode:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->l:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->tvHasBindNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etPhoneNumber_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->flVerificationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnNext:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnBind:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    const-string v0, "phone"

    .line 29
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    iput-boolean v4, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->c:Z

    goto :goto_3

    .line 32
    :cond_4
    iput-boolean v2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->c:Z

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_7

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    :goto_1
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_6

    .line 36
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v4, v1, :cond_5

    if-gt v4, v2, :cond_5

    const/16 v3, 0x2a

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 38
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 39
    :cond_6
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->tvHasBindNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 40
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->tvHasBindNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 41
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->tvHasBindNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 42
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->tvHasBindNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic k0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->o0(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method private m0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    const-string v1, "code"

    const-string v2, "mobile"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tokens/bind/bindMobile"

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->BIND_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    :goto_0
    new-instance v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$g;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private n0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->checkCodeByMobile:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->h:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$h;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private o0(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->f:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/utils/Md5;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/Md5;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->salt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/Md5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->g:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "api/user/register/sendCodeByMobile"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "recaptchaToken"

    .line 4
    invoke-virtual {v0, v1, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "mobile"

    .line 5
    invoke-virtual {p3, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "type"

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->f:Ljava/lang/String;

    const-string/jumbo p3, "unixtime"

    .line 7
    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->g:Ljava/lang/String;

    const-string p3, "key"

    .line 8
    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d:Ljava/lang/String;

    const-string p3, "areaCode"

    .line 9
    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz p4, :cond_0

    const-string p2, "beFrom"

    const-string/jumbo p3, "webs"

    .line 10
    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 11
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$e;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$e;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private p0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    const-string v1, "key"

    const-string/jumbo v2, "unixtime"

    const-string v3, "areaCode"

    const-string v4, "mobile"

    if-eqz v0, :cond_0

    const-string p2, "api/user/register/sendCodeByMobile"

    .line 2
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p2

    .line 3
    invoke-virtual {p2, v4, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string/jumbo p2, "type"

    const-string v0, "3"

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->g:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v2, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->SEND_PHONE_CODE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v4, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string/jumbo v0, "userId"

    .line 10
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->f:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v2, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->g:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 14
    :goto_0
    new-instance p2, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$f;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$f;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0026

    return v0
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->e(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt1:Landroid/widget/TextView;

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag1:Landroid/widget/ImageView;

    const v2, 0x7f0f01f5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "86"

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d:Ljava/lang/String;

    goto/16 :goto_3

    .line 8
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, ""

    if-lt v0, v1, :cond_2

    .line 9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->i:Ljava/lang/String;

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->i:Ljava/lang/String;

    .line 12
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt1:Landroid/widget/TextView;

    const-string v1, "+00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag1:Landroid/widget/ImageView;

    const v2, 0x7f0f0122

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 17
    :cond_4
    new-instance v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getNationalFlagAndCode(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$NationalFlagAndCodeCallBack;)V

    :goto_3
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p1, "country_num"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d:Ljava/lang/String;

    const-string p1, "logo"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->e:Ljava/lang/String;

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->a:I

    const/4 p3, 0x1

    const-string v0, "+"

    const v1, 0x7f0f0122

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag:Landroid/widget/ImageView;

    invoke-static {p1, p2, v1, p0}, Lhc/a;->l(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag1:Landroid/widget/ImageView;

    invoke-static {p1, p2, v1, p0}, Lhc/a;->l(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt1:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onBindWebView(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->k:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->getJSAction()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$i;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$i;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->setOnCallBack(Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1207f1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->initData()V

    return-void
.end method

.method public onLoadErr(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/f;->a(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1207f7

    const v2, 0x7f1207f8

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-nez p1, :cond_10

    .line 3
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x63

    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 4
    :sswitch_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Please choose country"

    .line 5
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->a:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->j:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    new-instance v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$d;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->c(Landroid/app/Activity;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;)V

    goto/16 :goto_0

    .line 9
    :cond_2
    iget-boolean p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->c:Z

    const-string/jumbo v0, "userId"

    const-string v1, ""

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/utils/Tools;->isNumber(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    const p1, 0x7f120227

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 14
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->e(Landroid/content/Context;)V

    return-void

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->f:Ljava/lang/String;

    .line 17
    new-instance p1, Lcom/guochao/faceshow/utils/Md5;

    invoke-direct {p1}, Lcom/guochao/faceshow/utils/Md5;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->salt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/utils/Md5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->g:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->p0(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 21
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->f:Ljava/lang/String;

    .line 22
    new-instance p1, Lcom/guochao/faceshow/utils/Md5;

    invoke-direct {p1}, Lcom/guochao/faceshow/utils/Md5;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->salt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/utils/Md5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->g:Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->p0(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 24
    :sswitch_2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 25
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etVerificationCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->h:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 27
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 28
    :cond_9
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->n0()V

    goto/16 :goto_0

    .line 29
    :sswitch_3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_a

    return-void

    .line 30
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 31
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 32
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etVerificationCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 33
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 34
    :cond_c
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etVerificationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->m0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :sswitch_4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 36
    :cond_d
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 37
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 38
    :cond_e
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etVerificationCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 39
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 40
    :cond_f
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etVerificationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->m0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a016d -> :sswitch_4
        0x7f0a016f -> :sswitch_3
        0x7f0a0174 -> :sswitch_2
        0x7f0a0178 -> :sswitch_1
        0x7f0a07ed -> :sswitch_0
        0x7f0a07ee -> :sswitch_0
        0x7f0a07ef -> :sswitch_0
        0x7f0a07f0 -> :sswitch_0
    .end sparse-switch
.end method
