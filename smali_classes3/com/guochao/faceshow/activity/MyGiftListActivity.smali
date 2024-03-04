.class public Lcom/guochao/faceshow/activity/MyGiftListActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field private c:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/MyPrizeBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->d:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->f:I

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->d:I

    return p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/MyGiftListActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->d:I

    return p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->d:I

    return v0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->o0()V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->f:I

    return p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/activity/MyGiftListActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->f:I

    return p1
.end method

.method static synthetic l0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->c:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    return-object p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/activity/MyGiftListActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->g:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private o0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->MY_PRIZE_LIST:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "limit"

    const-string v2, "20"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MyGiftListActivity$b;-><init>(Lcom/guochao/faceshow/activity/MyGiftListActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d007e

    return v0
.end method

.method public initView()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->e:Ljava/util/List;

    const v0, 0x7f0a0738

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0961

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const v0, 0x7f0a032f

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->g:Landroid/widget/RelativeLayout;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;

    const v2, 0x7f060133

    .line 7
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    new-array v4, v3, [I

    const/16 v5, 0xa

    invoke-direct {v1, v2, v5, v5, v4}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;-><init>(III[I)V

    .line 8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 9
    new-instance v0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    iget-object v9, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->e:Ljava/util/List;

    const v8, 0x7f0d0266

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$f;Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$e;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->c:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/MyGiftListActivity;->o0()V

    .line 12
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lkc/b;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableOverScroll(Z)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxHeadHeight(F)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MyGiftListActivity;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/activity/MyGiftListActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MyGiftListActivity$a;-><init>(Lcom/guochao/faceshow/activity/MyGiftListActivity;)V

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

    const p1, 0x7f120670

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public p0()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
