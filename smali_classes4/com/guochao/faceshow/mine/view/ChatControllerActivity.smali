.class public Lcom/guochao/faceshow/mine/view/ChatControllerActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field ivAll:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivFollow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llAll:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llFollow:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->a:I

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/ChatControllerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->e0()V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/mine/view/ChatControllerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->a:I

    return p1
.end method

.method private e0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->CHAT_SETTING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->a:I

    const-string v2, "chatSet"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/ChatControllerActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0033

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f120184

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    const v0, 0x7f12069a

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060093

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/ChatControllerActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    :cond_0
    return-void
.end method

.method public loadData()V
    .locals 2

    const-string/jumbo v0, "tokens/user/set/queryChatSet"

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/ChatControllerActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/ChatControllerActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a06bc

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a06ce

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->a:I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->ivFollow:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iput v2, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->a:I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->ivAll:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;->ivFollow:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
