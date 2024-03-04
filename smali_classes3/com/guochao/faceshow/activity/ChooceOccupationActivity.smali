.class public Lcom/guochao/faceshow/activity/ChooceOccupationActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/EditText;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->q0()V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic l0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->f:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic o0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic p0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method private q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->g:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->h:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getEvent(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01fb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$d;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$d;-><init>(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)V

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/guochao/faceshow/activity/OccupationActivity;->h2(Ljava/lang/String;Lcom/guochao/faceshow/activity/OccupationActivity$g;)Lcom/guochao/faceshow/activity/OccupationActivity;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0036

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f0a01fb

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0237

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f0a0831

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->f:Landroid/widget/EditText;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->q0()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x37

    if-ne p2, p1, :cond_1

    const-string p1, "infoName"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->a:Ljava/lang/String;

    const-string p1, "infoId"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->b:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->q0()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "career"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->h:Ljava/lang/String;

    const-string v1, "companyName"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->g:Ljava/lang/String;

    const-string v1, "infoName"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->a:Ljava/lang/String;

    .line 5
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120695

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a09f3

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->e:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$a;-><init>(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$b;-><init>(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$c;-><init>(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    return-void
.end method

.method public r0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->getInstance()Lcom/guochao/faceshow/utils/SensitiveWordFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->checkKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const v1, 0x7f12016d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->userJobSave:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->b:Ljava/lang/String;

    const-string v2, "infoId"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->g:Ljava/lang/String;

    const-string v2, "company"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->h:Ljava/lang/String;

    const-string v2, "career"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$e;-><init>(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
