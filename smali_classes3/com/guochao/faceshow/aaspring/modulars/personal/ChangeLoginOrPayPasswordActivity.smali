.class public Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field a:Landroid/text/TextWatcher;

.field private b:Ljava/lang/String;

.field btnOk:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:I

.field private d:Z

.field etNewlPwd:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etOriginalPwd:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvRetrievePassword:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->a:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->e0()V

    return-void
.end method

.method private d0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->MATCH_OLD_PAY_PASSWORD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etOriginalPwd:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pasword"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private e0()V
    .locals 3

    const-string v0, "tokens/user/info/changeUserPwd"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etOriginalPwd:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oldPayPassword"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etNewlPwd:Landroid/widget/EditText;

    .line 4
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "payPassword"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static g0(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private i0()V
    .locals 3

    const-string v0, "tokens/user/info/changeUserPwd"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etOriginalPwd:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oldPwd"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etNewlPwd:Landroid/widget/EditText;

    .line 4
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pwd"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0030

    return v0
.end method

.method public initView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->c:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f120164

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 3
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etOriginalPwd:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etNewlPwd:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etOriginalPwd:Landroid/widget/EditText;

    const v2, 0x7f1207e1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etNewlPwd:Landroid/widget/EditText;

    const v2, 0x7f1207e0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etOriginalPwd:Landroid/widget/EditText;

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etNewlPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120165

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 11
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etOriginalPwd:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etNewlPwd:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etOriginalPwd:Landroid/widget/EditText;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etNewlPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etOriginalPwd:Landroid/widget/EditText;

    const v2, 0x7f12080e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etNewlPwd:Landroid/widget/EditText;

    const v2, 0x7f1207e2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "phone"

    .line 18
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->b:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->d:Z

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etOriginalPwd:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->a:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->etNewlPwd:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->a:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0193

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a0ceb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->d:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->b:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->v0(Landroid/content/Context;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->c:I

    if-nez p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/RetrievePasswordActivity;->l0(Landroid/content/Context;I)V

    goto :goto_0

    .line 6
    :cond_2
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 7
    :cond_3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->c:I

    if-nez p1, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->i0()V

    goto :goto_0

    .line 9
    :cond_4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->d0()V

    :goto_0
    return-void
.end method
