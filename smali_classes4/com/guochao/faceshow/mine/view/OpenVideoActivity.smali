.class public Lcom/guochao/faceshow/mine/view/OpenVideoActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field public d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
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
    iput v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->b:I

    const-string v0, "1"

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->d:Ljava/lang/String;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->a:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->b:I

    return p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->b:I

    return p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->b:I

    return v0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->c:I

    return p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->c:I

    return p1
.end method

.method static synthetic m0(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->n0()V

    return-void
.end method

.method private n0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->getMyVideoNew:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->e:Ljava/lang/String;

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string v1, "is_private"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "24"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$e;-><init>(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$d;-><init>(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0086

    return v0
.end method

.method public initView()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->e:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;

    const v2, 0x7f060133

    .line 4
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [I

    const/16 v5, 0xa

    invoke-direct {v1, v2, v5, v5, v4}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;-><init>(III[I)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;

    const v1, 0x7f0d0264

    invoke-direct {v0, p0, p0, v1}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->a:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->n0()V

    .line 9
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lkc/b;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableOverScroll(Z)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxHeadHeight(F)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/OpenVideoActivity;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/OpenVideoActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/OpenVideoActivity;)V

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

    const p1, 0x7f1209c5

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    return-void
.end method
