.class public Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;


# instance fields
.field animationView:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field enterFacecast:Landroid/widget/TextView;
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

.field i:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

.field iv_pwd:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private j:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;"
        }
    .end annotation
.end field

.field lay_content:Landroid/widget/LinearLayout;
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
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;-><init>()V

    return-void
.end method

.method private m0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "mobile"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "email"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "pwd"

    .line 6
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    .line 7
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "api/sys/login/v2"

    .line 9
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method static synthetic n0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->j:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    return-object p1
.end method

.method private o0()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->et_pwd:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private p0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->et_pwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->iv_pwd:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->et_pwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->iv_pwd:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->et_pwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->iv_pwd:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->et_pwd:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0073

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->et_pwd:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->setEditTextInputSpace(Landroid/widget/EditText;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->et_pwd:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->disableEditTextLongClick(Landroid/widget/EditText;)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->p0()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->o0()V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f120050

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->et_phone:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->rv_country:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->tv_country:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const v0, 0x7f120053

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->rv_country:Landroid/widget/ImageView;

    const v1, 0x7f0f01f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->tv_country:Landroid/widget/TextView;

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->rv_country:Landroid/widget/ImageView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->i()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0122

    invoke-static {v0, v1, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->tv_country:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->et_phone:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->et_pwd:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->openSoftKeyBoard(Landroid/widget/EditText;)V

    .line 18
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->animationView:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 19
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->i:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->j:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->e(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void

    :cond_0
    if-eqz p3, :cond_2

    const/16 p2, 0x63

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "country_num"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "logo"

    .line 4
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->v(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->s(Ljava/lang/String;)V

    .line 7
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->rv_country:Landroid/widget/ImageView;

    const v0, 0x7f0f0122

    invoke-static {p3, p2, v0}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->tv_country:Landroid/widget/TextView;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "+%s"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->et_phone:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->et_pwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const p1, 0x7f120b13

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    const p1, 0x7f12006a

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 8
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->m0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 11
    :sswitch_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x63

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    const p1, 0x7f010029

    const v0, 0x7f010025

    .line 12
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 13
    :sswitch_3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->p0()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a05ca -> :sswitch_3
        0x7f0a09ec -> :sswitch_2
        0x7f0a0c42 -> :sswitch_1
        0x7f0a0c7a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->i:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->close()V

    .line 2
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->onDestroy()V

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
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->enterFacecast:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->enterFacecast:Landroid/widget/TextView;

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
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->lay_content:Landroid/widget/LinearLayout;

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
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->lay_content:Landroid/widget/LinearLayout;

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

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->i:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginActivity;->i:Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;->setKeyboardHeightObserver(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;)V

    return-void
.end method
