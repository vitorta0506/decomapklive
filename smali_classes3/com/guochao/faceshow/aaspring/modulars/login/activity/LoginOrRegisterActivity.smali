.class public Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;
.source "SourceFile"


# instance fields
.field animationView:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field et_phone:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field ll_country_hide:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field next:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rv_country:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_country:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->i:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->j:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->l:Ljava/lang/String;

    return-void
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic o0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->j:Ljava/lang/String;

    return-object p1
.end method

.method private q0(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;)V

    const-string v3, "api/user/verification/exist/email"

    invoke-interface {p1, v1, v3, v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->b(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method private r0(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;)V

    const-string v3, "api/user/verification/exist/phone"

    invoke-interface {p1, v1, v3, v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->b(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method private s0()V
    .locals 3

    const v0, 0x7f120051

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->et_phone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->et_phone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->ll_country_hide:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->et_phone:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private t0()V
    .locals 4

    const v0, 0x7f120054

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->et_phone:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    const-string v1, "+"

    if-eqz v0, :cond_0

    const-string v0, "86"

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->tv_country:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->rv_country:Landroid/widget/ImageView;

    const v1, 0x7f0f01f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, "US"

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

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 12
    :goto_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;

    invoke-direct {v0, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getNationalFlagAndCode(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$NationalFlagAndCodeCallBack;)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->et_phone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->et_phone:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->rv_country:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->j:Ljava/lang/String;

    const v3, 0x7f0f0122

    invoke-static {v0, v2, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->tv_country:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d008e

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-string v2, "last_phone"

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-string v2, "logo"

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->j:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-string v2, "country_num"

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-string v2, "last_email"

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->l:Ljava/lang/String;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->et_phone:Landroid/widget/EditText;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d:I

    if-ne v0, v1, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->s0()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->t0()V

    .line 10
    :goto_1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->animationView:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->ll_country_hide:Landroid/widget/LinearLayout;

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f080448

    goto :goto_2

    :cond_3
    const v1, 0x7f080447

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_1

    const/16 p2, 0x63

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "country_num"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    const-string p1, "logo"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->j:Ljava/lang/String;

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->rv_country:Landroid/widget/ImageView;

    const p3, 0x7f0f0122

    invoke-static {p2, p1, p3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->tv_country:Landroid/widget/TextView;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    aput-object v0, p2, p3

    const-string p3, "+%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a06c8

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a0801

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->et_phone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->i:Ljava/lang/String;

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "@"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f12001c

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->i:Ljava/lang/String;

    const-string v1, "last_email"

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->t(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->s(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->i:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->q0(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "mail_next_mail_page_click_2737"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->tv_country:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "+00"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Please choose country"

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 13
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "phone_next_phone_page_click_2737"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->i:Ljava/lang/String;

    const-string v1, "last_phone"

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->j:Ljava/lang/String;

    const-string v1, "logo"

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    const-string v1, "country_num"

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->w(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->v(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->s(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->i:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->r0(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x63

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    const p1, 0x7f010029

    const v0, 0x7f010025

    .line 23
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method
