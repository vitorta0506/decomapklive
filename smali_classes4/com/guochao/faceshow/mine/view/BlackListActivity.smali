.class public Lcom/guochao/faceshow/mine/view/BlackListActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/PeopleBean;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/guochao/faceshow/utils/AAComAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/utils/AAComAdapter<",
            "Lcom/guochao/faceshow/mine/model/PeopleBean;",
            ">;"
        }
    .end annotation
.end field

.field lvPeople:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
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

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/BlackListActivity;Lcom/guochao/faceshow/mine/model/PeopleBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/BlackListActivity;->i0(Lcom/guochao/faceshow/mine/model/PeopleBean;)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/mine/view/BlackListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/BlackListActivity;->e0()V

    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->USER_BLACK_LIST:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/BlackListActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/BlackListActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/BlackListActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private g0()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity;->refreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/mine/view/BlackListActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/BlackListActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/BlackListActivity;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private i0(Lcom/guochao/faceshow/mine/model/PeopleBean;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->deletebacklist:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/guochao/faceshow/mine/model/PeopleBean;->user_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "userId"

    .line 2
    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/guochao/faceshow/mine/model/PeopleBean;->account:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/BlackListActivity$d;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/BlackListActivity$d;-><init>(Lcom/guochao/faceshow/mine/view/BlackListActivity;Lcom/guochao/faceshow/mine/model/PeopleBean;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private initData()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/BlackListActivity;->e0()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0097

    return v0
.end method

.method public initView()V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/mine/view/BlackListActivity$a;

    const v1, 0x7f0d00ea

    invoke-direct {v0, p0, p0, v1}, Lcom/guochao/faceshow/mine/view/BlackListActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/BlackListActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity;->b:Lcom/guochao/faceshow/utils/AAComAdapter;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity;->lvPeople:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

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

    const p1, 0x7f120117

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/BlackListActivity;->initData()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/BlackListActivity;->g0()V

    return-void
.end method
