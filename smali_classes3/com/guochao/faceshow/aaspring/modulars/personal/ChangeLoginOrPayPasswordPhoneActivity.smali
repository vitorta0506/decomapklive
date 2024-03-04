.class public Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/views/u;

.field private b:Ljava/lang/String;

.field btnOk:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field etCode:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etPwd:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field ivEmail:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivPwd:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivSend:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private j:I

.field k:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

.field l:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

.field llCountryHide:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rl_send:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvCountry:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCode:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCountry:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvPayPwd:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvPhone:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->c:I

    return p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->t0(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)Lcom/guochao/faceshow/aaspring/views/u;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->a:Lcom/guochao/faceshow/aaspring/views/u;

    return-object p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;Lcom/guochao/faceshow/aaspring/views/u;)Lcom/guochao/faceshow/aaspring/views/u;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->a:Lcom/guochao/faceshow/aaspring/views/u;

    return-object p1
.end method

.method static synthetic n0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->d:I

    return p0
.end method

.method static synthetic o0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->e:I

    return p0
.end method

.method static synthetic q0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->j:I

    return p0
.end method

.method private r0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "US"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->rvCountry:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->f:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->rvCountry:Landroid/widget/ImageView;

    const v1, 0x7f0f011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->rvCountry:Landroid/widget/ImageView;

    const v1, 0x7f0f011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->rvCountry:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->g:Ljava/lang/String;

    const v3, 0x7f0f0122

    invoke-static {v0, v1, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvCountry:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "+%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 10
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_5

    .line 11
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v2}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$d;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getNationalFlagAndCode(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$NationalFlagAndCodeCallBack;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private s0()V
    .locals 5

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    const-string v0, "tokens/user/info/changeUserBindInfo"

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v4, "sendType"

    invoke-virtual {v0, v4, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->e:I

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    const-string v4, "type"

    invoke-virtual {v1, v4, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->d:I

    if-ne v2, v3, :cond_2

    const-string v2, "email"

    goto :goto_2

    :cond_2
    const-string v2, "mobile"

    :goto_2
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etCode:Landroid/widget/EditText;

    .line 6
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceId"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 8
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->c:I

    if-nez v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pwd"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_3

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "payPassword"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 11
    :goto_3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private t0(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/user/info/checkIfBindAndSend"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v4, "sendType"

    invoke-virtual {v0, v4, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->e:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->d:I

    if-ne v1, v3, :cond_2

    const-string v1, "email"

    goto :goto_2

    :cond_2
    const-string v1, "mobile"

    :goto_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->f:Ljava/lang/String;

    const-string v2, "areaCode"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "recaptchaToken"

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    if-eqz p2, :cond_3

    const-string p1, "beFrom"

    const-string p2, "webs"

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 9
    :cond_3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$f;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static u0(Landroid/content/Context;IIIZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "type"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "state"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "isBind"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "account"

    .line 6
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "source"

    .line 7
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "countryNum"

    .line 8
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "logo"

    .line 9
    invoke-virtual {v0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "coding"

    .line 10
    invoke-virtual {v0, p1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static v0(Landroid/content/Context;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "type"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "state"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "isBind"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "account"

    .line 6
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "countryNum"

    .line 7
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "logo"

    .line 8
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "coding"

    .line 9
    invoke-virtual {v0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0031

    return v0
.end method

.method public initView()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->e:I

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isBind"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->i:Z

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->j:I

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "countryNum"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "logo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->g:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "coding"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->h:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->disableEditTextLongClick(Landroid/widget/EditText;)V

    .line 11
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->i:Z

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->c:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->e:I

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->setEncryptionMobile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->d:I

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    move-result-object v0

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)V

    invoke-virtual {v0, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->e(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->llCountryHide:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->ivEmail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->r0()V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->llCountryHide:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->ivEmail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->btnOk:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->c:I

    const/4 v4, 0x1

    if-nez v3, :cond_3

    const v3, 0x7f1207e4

    .line 25
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    new-array v3, v4, [Landroid/text/InputFilter;

    .line 27
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v2

    .line 28
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 29
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 30
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvPayPwd:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x42700000    # 60.0f

    .line 31
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 32
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->btnOk:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    const v1, 0x7f1207ed

    .line 33
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    new-array v1, v4, [Landroid/text/InputFilter;

    .line 35
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 36
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 37
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    const/16 v3, 0x12

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 38
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvPayPwd:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x41c80000    # 25.0f

    .line 39
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 40
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->btnOk:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etCode:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 42
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

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

    if-eqz p3, :cond_1

    const/16 p2, 0x63

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "country_num"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->f:Ljava/lang/String;

    const-string p1, "logo"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->g:Ljava/lang/String;

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->rvCountry:Landroid/widget/ImageView;

    const p3, 0x7f0f0122

    invoke-static {p2, p1, p3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvCountry:Landroid/widget/TextView;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->f:Ljava/lang/String;

    aput-object v0, p2, p3

    const-string p3, "+%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBindWebView(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->l:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->getJSAction()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->setOnCallBack(Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;)V

    :cond_0
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

    goto/16 :goto_1

    .line 2
    :sswitch_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->d:I

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->k:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->c(Landroid/app/Activity;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;)V

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x0

    const-string v0, ""

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->t0(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 5
    :sswitch_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x63

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    const p1, 0x7f010029

    const v0, 0x7f010025

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 7
    :sswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getInputType()I

    move-result p1

    const/16 v0, 0x81

    if-ne p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->ivPwd:Landroid/widget/ImageView;

    const v0, 0x7f0f01a1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    const/16 v0, 0x91

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->ivPwd:Landroid/widget/ImageView;

    const v1, 0x7f0f01a0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 13
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_2

    const p1, 0x7f12006a

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->s0()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0193 -> :sswitch_3
        0x7f0a05ca -> :sswitch_2
        0x7f0a06c8 -> :sswitch_1
        0x7f0a09ca -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->a:Lcom/guochao/faceshow/aaspring/views/u;

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
