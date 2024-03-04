.class public Lcom/guochao/faceshow/mine/view/BankListActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/BankBean;",
            ">;"
        }
    .end annotation
.end field

.field b:Lwa/a;

.field lvBankList:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BankListActivity;->a:Ljava/util/List;

    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->BANK_LIST:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/BankListActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/BankListActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/BankListActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private d0()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BankListActivity;->lvBankList:Landroid/widget/ListView;

    new-instance v1, Lcom/guochao/faceshow/mine/view/BankListActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/BankListActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/BankListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 1
    new-instance v0, Lwa/a;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BankListActivity;->a:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lwa/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BankListActivity;->b:Lwa/a;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BankListActivity;->lvBankList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/BankListActivity;->b0()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0022

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
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BankListActivity;->lvBankList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

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

    const p1, 0x7f120ad7

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/BankListActivity;->initData()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/BankListActivity;->d0()V

    return-void
.end method
