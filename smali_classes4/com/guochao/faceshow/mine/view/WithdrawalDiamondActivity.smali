.class public Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Lwa/c;

.field lvWithdrawalList:Lcom/guochao/faceshow/views/MeasureListView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field topLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAgreement:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvDiamondCount:Landroid/widget/TextView;
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
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->b:Z

    return-void
.end method

.method private b0()V
    .locals 2

    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->WITHDRAWAL_DIAMOND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private d0()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->tvAgreement:Landroid/widget/TextView;

    new-instance v1, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->MY_WALLET_DATA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const-string v0, "coding"

    .line 2
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->b:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->b:Z

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->b0()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d4

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d042b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->lvWithdrawalList:Lcom/guochao/faceshow/views/MeasureListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f080319

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
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

    const p1, 0x7f120503

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->d0()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->initData()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->initData()V

    return-void
.end method
