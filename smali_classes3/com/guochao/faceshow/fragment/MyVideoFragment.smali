.class public Lcom/guochao/faceshow/fragment/MyVideoFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->d:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->f:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->f:I

    return p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/fragment/MyVideoFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->f:I

    return p1
.end method

.method static synthetic R1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->d:I

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/fragment/MyVideoFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->d:I

    return p1
.end method

.method static synthetic T1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->d:I

    return v0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/MyVideoFragment;->a2()V

    return-void
.end method

.method static synthetic V1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->e:I

    return p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/fragment/MyVideoFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->e:I

    return p1
.end method

.method static synthetic X1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    return-object p0
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->b:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    return-object p0
.end method

.method private a2()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->getMyVideoNew:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string v1, "is_private"

    const-string v2, "0"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "24"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/fragment/MyVideoFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/fragment/MyVideoFragment$e;-><init>(Lcom/guochao/faceshow/fragment/MyVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/fragment/MyVideoFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/fragment/MyVideoFragment$d;-><init>(Lcom/guochao/faceshow/fragment/MyVideoFragment;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/fragment/MyVideoFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/fragment/MyVideoFragment$c;-><init>(Lcom/guochao/faceshow/fragment/MyVideoFragment;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->complete(Lkotlin/jvm/functions/Function1;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01bf

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a047f

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0961

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/fragment/MyVideoFragment$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0d0265

    invoke-direct {v0, p0, p1, v1}, Lcom/guochao/faceshow/fragment/MyVideoFragment$a;-><init>(Lcom/guochao/faceshow/fragment/MyVideoFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->b:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/MyVideoFragment;->a2()V

    .line 7
    new-instance p1, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lkc/b;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableOverScroll(Z)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v0, 0x42f00000    # 120.0f

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxHeadHeight(F)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->c:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v0, Lcom/guochao/faceshow/fragment/MyVideoFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/fragment/MyVideoFragment$b;-><init>(Lcom/guochao/faceshow/fragment/MyVideoFragment;)V

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lkc/f;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x64

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->d:I

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/fragment/MyVideoFragment;->a2()V

    :cond_0
    return-void
.end method

.method public onEventBus(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "delete_video"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->b:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    iget v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->b:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->b:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->reset()V

    goto :goto_2

    :cond_1
    const-string v0, "private_public"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->b:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    iget v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->b:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment;->b:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->reset()V

    :cond_3
    :goto_2
    return-void
.end method
