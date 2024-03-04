.class public Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;
.implements Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;


# instance fields
.field animationViewPro:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field et_code:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field et_phone:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field et_pwd:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivSend:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field iv_pwd:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field lay_content:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Lcom/guochao/faceshow/aaspring/views/u;

.field next:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field o:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

.field p:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

.field q:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

.field rl_send:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rv_country:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_code:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tv_country:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->j:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->k:Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->l:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/utils/Md5;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/Md5;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->salt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/Md5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->m:Ljava/lang/String;

    return-void
.end method

.method private A0()V
    .locals 5

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_phone:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_code:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    const-string v3, "api/user/register/checkCodeByMobile"

    invoke-interface {v1, p0, v3, v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->b(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method private B0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->k:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->next:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->next:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private E0(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->G0(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->F0(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private F0(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "recaptchaToken"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_phone:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "beFrom"

    const-string p2, "webs"

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$g;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    const-string v1, "api/user/register/sendCodeByEmail/V2"

    invoke-interface {p1, p0, v1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->b(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method private G0(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "recaptchaToken"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_phone:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mobile"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    const-string v1, "0"

    .line 4
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "areaCode"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->l:Ljava/lang/String;

    const-string v1, "unixtime"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->m:Ljava/lang/String;

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p1, "beFrom"

    const-string p2, "webs"

    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    const-string v1, "api/user/register/sendCodeByMobile"

    invoke-interface {p1, p0, v1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->b(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method private H0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_pwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x81

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->iv_pwd:Landroid/widget/ImageView;

    const v1, 0x7f0f0550

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_pwd:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->iv_pwd:Landroid/widget/ImageView;

    const v2, 0x7f0f054f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_pwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_pwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method static synthetic p0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->j:Z

    return p1
.end method

.method static synthetic q0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->B0()V

    return-void
.end method

.method static synthetic r0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->k:Z

    return p1
.end method

.method static synthetic s0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->E0(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic t0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)Lcom/guochao/faceshow/aaspring/views/u;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->n:Lcom/guochao/faceshow/aaspring/views/u;

    return-object p0
.end method

.method static synthetic u0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;Lcom/guochao/faceshow/aaspring/views/u;)Lcom/guochao/faceshow/aaspring/views/u;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->n:Lcom/guochao/faceshow/aaspring/views/u;

    return-object p1
.end method

.method private v0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->A0()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "phone_next_verification_page_click_2737"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->y0()V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "mail_next_verification_page_click_2737"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private y0()V
    .locals 5

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_phone:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_code:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$i;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    const-string v3, "api/user/register/checkCodeByEmail/V2"

    invoke-interface {v1, p0, v3, v0, v2}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->b(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method


# virtual methods
.method public N(I)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->tv_code:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d008f

    return v0
.end method

.method public initView()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->e(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/modulars/login/utils/h;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_pwd:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->setEditTextInputSpace(Landroid/widget/EditText;)V

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getRegisterAccount()J

    move-result-wide v1

    const-wide/16 v3, 0x3e7

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getRegisterAccount()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 4
    new-instance v10, Lcom/guochao/faceshow/aaspring/views/u;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->ivSend:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->tv_code:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->rl_send:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getRegisterAccount()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x2

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/guochao/faceshow/aaspring/views/u;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;JJI)V

    iput-object v10, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->n:Lcom/guochao/faceshow/aaspring/views/u;

    .line 5
    invoke-virtual {v10}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_pwd:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->disableEditTextLongClick(Landroid/widget/EditText;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_code:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_pwd:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->c:I

    const/4 v1, 0x2

    const v2, 0x7f120060

    if-ne v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->rv_country:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->tv_country:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_phone:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f120052

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->next:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->tv_country:Landroid/widget/TextView;

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->rv_country:Landroid/widget/ImageView;

    const v1, 0x7f0f01f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->rv_country:Landroid/widget/ImageView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->i()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0f0122

    invoke-static {v0, v1, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->tv_country:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_phone:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f120055

    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->next:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->animationViewPro:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 24
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->H0()V

    .line 25
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->H0()V

    .line 26
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->q:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public m0()I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected n0(Z)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x2727

    if-ne p2, v2, :cond_0

    if-eqz p3, :cond_0

    const-string p2, "type"

    .line 2
    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_code:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p3, :cond_1

    const/16 p2, 0x63

    if-ne p1, p2, :cond_1

    const-string p1, "country_num"

    .line 4
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "logo"

    .line 5
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->v(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->s(Ljava/lang/String;)V

    .line 8
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->rv_country:Landroid/widget/ImageView;

    const v2, 0x7f0f0122

    invoke-static {p3, p2, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->tv_country:Landroid/widget/TextView;

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "+%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onBindWebView(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->p:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->getJSAction()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

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

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x63

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    const p1, 0x7f010029

    const v0, 0x7f010025

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 4
    :sswitch_1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->c:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "phone_verification_click_2737"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "mail_verification_click_2737"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->o:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->c(Landroid/app/Activity;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/guochao/faceshow/aaspring/modulars/login/utils/g;)V

    goto :goto_1

    .line 9
    :sswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_pwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_3

    const p1, 0x7f12006a

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->v0()V

    goto :goto_1

    .line 12
    :sswitch_3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->H0()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a05ca -> :sswitch_3
        0x7f0a0801 -> :sswitch_2
        0x7f0a09ca -> :sswitch_1
        0x7f0a09ec -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->q:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->close()V

    .line 2
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->n:Lcom/guochao/faceshow/aaspring/views/u;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->o:Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/i;->b(Landroid/app/Activity;Lcom/google/android/gms/recaptcha/RecaptchaHandle;)V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .locals 3

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-lez p1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->next:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->next:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x28

    add-int/2addr v1, p1

    invoke-static {p0}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenRealHeight(Landroid/app/Activity;)I

    move-result p1

    if-le v1, p1, :cond_1

    .line 3
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 4
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 5
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->lay_content:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p1, v0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 8
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 9
    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 10
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->lay_content:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onKeyboardHeightChanged(III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/e;->a(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;III)V

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

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->q:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->q:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V

    return-void
.end method

.method public onShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
