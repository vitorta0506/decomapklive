.class public Lf8/h;
.super Lf8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf8/h$g;
    }
.end annotation


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field l:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

.field m:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

.field n:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

.field private o:Lf8/h$g;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/ViewStub;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lf8/a;-><init>(Landroid/view/ViewStub;)V

    .line 2
    iput-object p1, p0, Lf8/h;->l:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    return-void
.end method

.method public static synthetic d(Lf8/h;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lf8/h;->r(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lf8/h;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lf8/h;->q(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lf8/h;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lf8/h;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g(Lf8/h;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lf8/h;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lf8/h;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lf8/h;->g:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic i(Lf8/h;)Lf8/h$g;
    .locals 0

    iget-object p0, p0, Lf8/h;->o:Lf8/h$g;

    return-object p0
.end method

.method static synthetic j(Lf8/h;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lf8/h;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic k(Lf8/h;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lf8/h;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic l(Lf8/h;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lf8/h;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m(Lf8/h;)V
    .locals 0

    invoke-direct {p0}, Lf8/h;->u()V

    return-void
.end method

.method private synthetic q(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    move-result-object p1

    iget-object v0, p0, Lf8/h;->l:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    iget-object v1, p0, Lf8/h;->m:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    new-instance v2, Lf8/h$d;

    invoke-direct {v2, p0}, Lf8/h$d;-><init>(Lf8/h;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->c(Landroid/app/Activity;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;)V

    return-void
.end method

.method private synthetic r(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf8/h;->o:Lf8/h$g;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lf8/h$g;->b()V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    invoke-static {}, Le8/b;->c()Le8/b;

    move-result-object v0

    invoke-virtual {v0}, Le8/b;->g()V

    .line 2
    iget-object v0, p0, Lf8/h;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lf8/h;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    move-result-object v0

    iget-object v1, p0, Lf8/h;->l:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    new-instance v2, Lf8/h$a;

    invoke-direct {v2, p0}, Lf8/h$a;-><init>(Lf8/h;)V

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->e(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;)V

    const v0, 0x7f0a036b

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->setEncryptionMobile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0c66

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf8/h;->h:Landroid/widget/TextView;

    const v0, 0x7f0a09ec

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lf8/h;->i:Landroid/widget/ImageView;

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "US"

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    .line 8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 9
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

    .line 10
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

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lf8/h$b;

    invoke-direct {v3, p0, p1, v1}, Lf8/h$b;-><init>(Lf8/h;Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getNationalFlagAndCode(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$NationalFlagAndCodeCallBack;)V

    const v0, 0x7f0a0360

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lf8/h;->g:Landroid/widget/EditText;

    .line 13
    new-instance v1, Lf8/h$c;

    invoke-direct {v1, p0}, Lf8/h$c;-><init>(Lf8/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a09ca

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf8/h;->d:Landroid/view/View;

    const v0, 0x7f0a09cb

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf8/h;->e:Landroid/view/View;

    const v0, 0x7f0a0c5e

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf8/h;->f:Landroid/widget/TextView;

    .line 17
    invoke-static {}, Le8/b;->c()Le8/b;

    move-result-object v0

    invoke-virtual {v0}, Le8/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lf8/h;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lf8/h;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :cond_3
    iget-object v0, p0, Lf8/h;->d:Landroid/view/View;

    new-instance v1, Lf8/g;

    invoke-direct {v1, p0}, Lf8/g;-><init>(Lf8/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-static {}, Le8/b;->c()Le8/b;

    move-result-object v0

    invoke-virtual {v0}, Le8/b;->d()V

    .line 22
    invoke-static {}, Le8/b;->c()Le8/b;

    move-result-object v0

    new-instance v1, Lf8/h$e;

    invoke-direct {v1, p0}, Lf8/h$e;-><init>(Lf8/h;)V

    invoke-virtual {v0, v1}, Le8/b;->setOnTimerChangeListener(Le8/b$b;)V

    const v0, 0x7f0a06c8

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lf8/f;

    invoke-direct {v0, p0}, Lf8/f;-><init>(Lf8/h;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf8/h;->g:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lf8/h;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf8/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "country_num"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public p()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;
    .locals 1

    iget-object v0, p0, Lf8/h;->n:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    return-object v0
.end method

.method public s(Ljava/lang/String;Z)V
    .locals 5

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

    .line 2
    new-instance v1, Lcom/guochao/faceshow/utils/Md5;

    invoke-direct {v1}, Lcom/guochao/faceshow/utils/Md5;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/guochao/faceshow/utils/Contants;->salt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/utils/Md5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    iget-object v3, p0, Lf8/h;->l:Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v3, "api/user/register/sendCodeByMobile"

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v3, "recaptchaToken"

    .line 4
    invoke-virtual {v2, v3, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->c()Lb8/a;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/bean/UserBean;

    iget-object v3, v3, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    const-string v4, "mobile"

    invoke-virtual {p1, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v3, "type"

    const/4 v4, 0x3

    .line 6
    invoke-virtual {p1, v3, v4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-virtual {p0}, Lf8/h;->o()Ljava/lang/String;

    move-result-object v3

    const-string v4, "areaCode"

    invoke-virtual {p1, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceId"

    invoke-virtual {p1, v4, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v3, "key"

    .line 9
    invoke-virtual {p1, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "unixtime"

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    if-eqz p2, :cond_0

    const-string p1, "beFrom"

    const-string p2, "webs"

    .line 11
    invoke-virtual {v2, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 12
    :cond_0
    new-instance p1, Lf8/h$f;

    invoke-direct {p1, p0}, Lf8/h$f;-><init>(Lf8/h;)V

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public setOnNextEnableListener(Lf8/h$g;)V
    .locals 0

    iput-object p1, p0, Lf8/h;->o:Lf8/h$g;

    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf8/h;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lf8/h;->j:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lf8/h;->h:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "+%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lf8/h;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iput-object p2, p0, Lf8/h;->k:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lf8/h;->i:Landroid/widget/ImageView;

    const v0, 0x7f0f0122

    invoke-static {p1, p2, v0}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method
