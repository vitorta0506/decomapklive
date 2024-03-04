.class public Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/guochao/faceshow/aaspring/views/u;

.field btnNext:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Z

.field private d:I

.field etEmail:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etPwd:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etVerificationCode:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivEmailState:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivPwdState:Landroid/widget/ImageView;
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

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->d:I

    return p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;)Lcom/guochao/faceshow/aaspring/views/u;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->b:Lcom/guochao/faceshow/aaspring/views/u;

    return-object p0
.end method

.method private e0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "tokens/user/info/changeUserBindInfo"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "sendType"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "type"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etPwd:Landroid/widget/EditText;

    .line 5
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pwd"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etVerificationCode:Landroid/widget/EditText;

    .line 6
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$e;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private g0(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/EmailBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/EmailBean;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/EmailBean;->setEmail(Ljava/lang/String;)V

    const/4 p1, 0x2

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

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private i0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "tokens/user/info/checkIfBindAndSend"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "sendType"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "type"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private k0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->d:I

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivPwdState:Landroid/widget/ImageView;

    const v1, 0x7f0f01a0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivPwdState:Landroid/widget/ImageView;

    const v1, 0x7f0f054f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->c:Z

    goto :goto_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 8
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->d:I

    if-ne p1, v1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivPwdState:Landroid/widget/ImageView;

    const v2, 0x7f0f01a1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivPwdState:Landroid/widget/ImageView;

    const v2, 0x7f0f0550

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    :goto_1
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->c:Z

    .line 12
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public static l0(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d001c

    return v0

    :cond_0
    const v0, 0x7f0d00a2

    return v0
.end method

.method public initView()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f1207e4

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivPwdState:Landroid/widget/ImageView;

    const v2, 0x7f0f01a0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120078

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivPwdState:Landroid/widget/ImageView;

    const v2, 0x7f0f054f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etVerificationCode:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etVerificationCode:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etVerificationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->setEditTextInputSpace(Landroid/widget/EditText;)V

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/u;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivVerificationCodeSend:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->tvVerificationCodeTime:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->rlVerificationCodeSend:Landroid/widget/RelativeLayout;

    sget-object v12, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getRetrievePassWord()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    const/4 v11, 0x3

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/guochao/faceshow/aaspring/views/u;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;JJI)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->b:Lcom/guochao/faceshow/aaspring/views/u;

    .line 11
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getRetrievePassWord()J

    move-result-wide v2

    const-wide/16 v4, 0x3e7

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getRetrievePassWord()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->b:Lcom/guochao/faceshow/aaspring/views/u;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    const-string v0, "email"

    .line 13
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->a:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etEmail:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etEmail:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->setEncryptionEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->d:I

    if-ne v0, v1, :cond_2

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivEmailState:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivEmailState:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->ivEmailState:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etVerificationCode:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;)V

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
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->b:Lcom/guochao/faceshow/aaspring/views/u;

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0192

    const-string v1, "@"

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a05cb

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a09ce

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object p1

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setRetrievePassWord(J)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->g0(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->i0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f12001c

    .line 7
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_0

    .line 8
    :cond_3
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->c:Z

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->k0(Z)V

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1207f4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_6

    const p1, 0x7f12006a

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->e0(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1207f5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method
