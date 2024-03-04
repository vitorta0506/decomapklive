.class public Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field btnOk:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field etConfirmPwd:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etLoginPwd:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Z

.field g:Landroid/text/TextWatcher;

.field tvModeName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvPayPwd:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->g:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->b:I

    return p0
.end method

.method private e0()V
    .locals 3

    const-string v0, "tokens/user/info/changeUserPwd"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etLoginPwd:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oldPwd"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etConfirmPwd:Landroid/widget/EditText;

    .line 4
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pwd"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private g0()V
    .locals 3

    const-string v0, "tokens/user/info/changeUserPwd"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etLoginPwd:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oldPayPassword"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etConfirmPwd:Landroid/widget/EditText;

    .line 4
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "payPassword"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static i0(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static k0(Landroid/content/Context;II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "source"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public d0()V
    .locals 1

    const-string v0, "phone"

    .line 1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->d:Ljava/lang/String;

    const-string v0, "email"

    .line 2
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->c:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->e:Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->f:Z

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00ae

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

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->a:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->b:I

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f1207e4

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->tvPayPwd:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->tvModeName:Landroid/widget/TextView;

    const v4, 0x7f1207e7

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 7
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etLoginPwd:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etConfirmPwd:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etLoginPwd:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etConfirmPwd:Landroid/widget/EditText;

    const v1, 0x7f1207df

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etLoginPwd:Landroid/widget/EditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etConfirmPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1207ed

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->tvPayPwd:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->tvModeName:Landroid/widget/TextView;

    const v4, 0x7f120807

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 17
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 18
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etLoginPwd:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 19
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etConfirmPwd:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etLoginPwd:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etConfirmPwd:Landroid/widget/EditText;

    const v1, 0x7f1207ea

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etLoginPwd:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etConfirmPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etLoginPwd:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->g:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etConfirmPwd:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->g:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 26
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->d0()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onclick()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etLoginPwd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->etConfirmPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120994

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->a:I

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->e0()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->g0()V

    :goto_0
    return-void
.end method
