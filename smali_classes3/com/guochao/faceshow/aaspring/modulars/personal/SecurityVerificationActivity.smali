.class public Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

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

.field ivEmailState:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivPwdState:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvRetrievePassword:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private b0(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/EmailBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/EmailBean;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/EmailBean;->setPwd(Ljava/lang/String;)V

    const-string p1, "tokens/user/info/checkPwd"

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private d0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->ivPwdState:Landroid/widget/ImageView;

    const v1, 0x7f0f054f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->b:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->ivPwdState:Landroid/widget/ImageView;

    const v1, 0x7f0f0550

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->b:Z

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00aa

    return v0
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f1207ca

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etPwd:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etPwd:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->setEditTextInputSpace(Landroid/widget/EditText;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->showKeyboard(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->tvRetrievePassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->tvRetrievePassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const-string v0, "email"

    .line 9
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->a:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etEmail:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etEmail:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etPwd:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0192

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a05cb

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0ceb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->b:Z

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->d0(Z)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_3

    const p1, 0x7f12006a

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->etPwd:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/SecurityVerificationActivity;->b0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
