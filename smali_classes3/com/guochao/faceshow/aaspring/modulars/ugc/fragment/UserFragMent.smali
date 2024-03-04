.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;
.source "SourceFile"


# instance fields
.field MusicLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field emptyView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

.field private h:J

.field rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->e:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->h:J

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->d2(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->e2(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;Lwd/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->f2(Lwd/j;)V

    return-void
.end method

.method private T1(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setContent(Ljava/lang/String;)V

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->e:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setCurrPage(I)V

    const/16 v1, 0xf

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setPageSize(I)V

    const-string v1, "tokens/search/findUserByNickNameOrId"

    .line 5
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->h:J

    return-wide p1
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->g:Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    return-object p0
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    return-object p0
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->e:I

    return p0
.end method

.method static synthetic a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    return-object p0
.end method

.method private c2()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->h:J

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->h:J

    const-string v0, "tokens/search/officalRecommend"

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "param"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_1
    return-void
.end method

.method private synthetic d2(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->getItemCount()I

    move-result p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eq p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p3, p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->hideSoftKeyboard()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->d:Ljava/util/List;

    invoke-direct {p0, p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->h2(ILjava/util/List;)V

    :cond_2
    return-void
.end method

.method private synthetic e2(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p3, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->c:Ljava/util/List;

    invoke-direct {p0, p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->h2(ILjava/util/List;)V

    :cond_1
    return-void
.end method

.method private synthetic f2(Lwd/j;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->e:I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->f:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->T1(Ljava/lang/String;)V

    return-void
.end method

.method private g2(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->f:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->MusicLayout:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->e:I

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->c2()V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->MusicLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->e:I

    .line 16
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->T1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private h2(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "userId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->e(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f0d01e1

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q()Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->c:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->d:Ljava/util/List;

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->g:Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    .line 8
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setType(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->g:Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setImageModel(I)V

    .line 10
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->c:Ljava/util/List;

    invoke-direct {p1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->d:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/x;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/x;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->setOnItemClickListener(Lz9/a;)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/y;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/y;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->setOnItemClickListener(Lz9/a;)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/z;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/z;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)V

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S(Lzd/b;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public loadData(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->c2()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onDestroy()V

    return-void
.end method

.method public onMessageEvent(Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->g2(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;->c2()V

    :cond_0
    return-void
.end method
