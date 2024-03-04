.class public Lcom/guochao/faceshow/mine/view/CustomLabelActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field etTag:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/CustomLabelActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/CustomLabelActivity;->d0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->getInstance()Lcom/guochao/faceshow/utils/SensitiveWordFilter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/utils/SensitiveWordFilter;->checkKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const p2, 0x7f12016d

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->ADD_USER_CUSTOM_LABEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string/jumbo v1, "userId"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string/jumbo v0, "tags"

    .line 6
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string/jumbo p2, "type"

    const-string v0, "1"

    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/CustomLabelActivity;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0040

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f1207b4

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060111

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/CustomLabelActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/CustomLabelActivity;->etTag:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/CustomLabelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120417

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    return-void
.end method
