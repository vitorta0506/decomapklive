.class public Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/views/u;

.field btnBind:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etEmail:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etVerificationCode:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivVerificationCodeSend:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlVerificationCodeSend:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvVerificationCodeTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->k0(Ljava/lang/String;)V

    return-void
.end method

.method private e0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/EmailBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/EmailBean;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/EmailBean;->setCode(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/EmailBean;->setEmail(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/EmailBean;->setType(I)V

    const-string p2, "tokens/user/info/v3/checkCodeByEmail"

    .line 5
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private g0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "api/user/verification/exist/email"

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private i0(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/EmailBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/EmailBean;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/EmailBean;->setEmail(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/EmailBean;->setType(I)V

    const-string p1, "tokens/user/info/sendCodeByType"

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private k0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "tokens/user/info/updateUserInfo"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity$f;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00a1

    return v0
.end method

.method public initView()V
    .locals 12

    const v0, 0x7f1207f3

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->etEmail:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->showKeyboard(Landroid/view/View;)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/u;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->ivVerificationCodeSend:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->tvVerificationCodeTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->rlVerificationCodeSend:Landroid/widget/RelativeLayout;

    sget-object v11, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getReplaceEmailTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/guochao/faceshow/aaspring/views/u;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;JJI)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->a:Lcom/guochao/faceshow/aaspring/views/u;

    .line 7
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getReplaceEmailTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e7

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getReplaceEmailTime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->a:Lcom/guochao/faceshow/aaspring/views/u;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->etEmail:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->etVerificationCode:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->a:Lcom/guochao/faceshow/aaspring/views/u;

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a0182

    const v2, 0x7f12001c

    const-string v3, "@"

    if-eq p1, v1, :cond_2

    const v1, 0x7f0a09ce

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object p1

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setReplaceEmailTime(J)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->a:Lcom/guochao/faceshow/aaspring/views/u;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 6
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->i0(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 10
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ReplaceEmailActivity;->g0(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1207f5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method
