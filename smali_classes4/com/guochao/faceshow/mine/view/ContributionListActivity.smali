.class public Lcom/guochao/faceshow/mine/view/ContributionListActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
            "Lcom/guochao/faceshow/mine/model/ContributionBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->b:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->b:I

    return p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->b:I

    return p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->b:I

    return v0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->m0()V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->c:I

    return p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->c:I

    return p1
.end method

.method static synthetic l0(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->a:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    return-object p0
.end method

.method private m0()V
    .locals 3

    const-string/jumbo v0, "tokens/gift/giftRankingList"

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->b:I

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "limit"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->d:Ljava/lang/String;

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/ContributionListActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/ContributionListActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "userId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00bd

    return v0
.end method

.method public initView()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->d:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;

    const v1, 0x7f0d0228

    invoke-direct {v0, p0, p0, v1}, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/ContributionListActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->a:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->m0()V

    .line 7
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lkc/b;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableOverScroll(Z)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxHeadHeight(F)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setAutoLoadMore(Z)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/mine/view/ContributionListActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/ContributionListActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/ContributionListActivity;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lkc/f;)V

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

    const p1, 0x7f120093

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    return-void
.end method
