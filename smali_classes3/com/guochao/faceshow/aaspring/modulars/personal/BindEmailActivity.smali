.class public Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/views/u;

.field private b:Z

.field btnNext:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

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

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->l0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$g;

    invoke-direct {v0, p0, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;)V

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

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private k0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->ivPwdState:Landroid/widget/ImageView;

    const v1, 0x7f0f054f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->b:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->ivPwdState:Landroid/widget/ImageView;

    const v1, 0x7f0f0550

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->b:Z

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private l0(Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v1, "pwd"

    .line 3
    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0024

    return v0
.end method

.method public initView()V
    .locals 12

    const v0, 0x7f1207f3

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etEmail:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->setEditTextInputSpace(Landroid/widget/EditText;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->showKeyboard(Landroid/view/View;)V

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/u;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->ivVerificationCodeSend:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->tvVerificationCodeTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->rlVerificationCodeSend:Landroid/widget/RelativeLayout;

    sget-object v11, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getEmailTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/guochao/faceshow/aaspring/views/u;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;JJI)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->a:Lcom/guochao/faceshow/aaspring/views/u;

    .line 8
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getEmailTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e7

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->getEmailTime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->a:Lcom/guochao/faceshow/aaspring/views/u;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etEmail:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etVerificationCode:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;)V

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
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->a:Lcom/guochao/faceshow/aaspring/views/u;

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0192

    const v1, 0x7f12001c

    const-string v2, "@"

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a05cb

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a09ce

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/VerificationCodeHelper;->setEmailTime(J)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->a:Lcom/guochao/faceshow/aaspring/views/u;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->i0(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->b:Z

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->k0(Z)V

    goto/16 :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1207f4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 12
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_6

    const p1, 0x7f12006a

    .line 14
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailActivity;->g0(Ljava/lang/String;)V

    goto :goto_0

    .line 18
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
