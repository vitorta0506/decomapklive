.class public final Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J$\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000bH\u0002J\u0012\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000bH\u0016J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000bH\u0016J$\u0010\u0016\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\u0017\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000b2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u0008H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;",
        "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;",
        "()V",
        "mEmptyView",
        "Landroid/view/View;",
        "convertItem",
        "",
        "holder",
        "position",
        "",
        "item",
        "getOneVOneRecord",
        "pageNo",
        "initView",
        "view",
        "loadData",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onItemClick",
        "resetDatas",
        "list",
        "",
        "showEmptyView",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->showEmptyView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$resetDatas(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->resetDatas(ILjava/util/List;)V

    return-void
.end method

.method private final getOneVOneRecord(I)V
    .locals 3

    const-string v0, "tokens/1v1/getMatchList"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment$getOneVOneRecord$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;I)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private final resetDatas(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setDatas(Ljava/util/List;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->showEmptyView()V

    return-void
.end method

.method private static final showEmptyView$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->reload()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->convertItem(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;ILcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;)V

    return-void
.end method

.method public convertItem(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;ILcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->c(Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;I)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    :cond_0
    return-void
.end method

.method public loadData(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->getOneVOneRecord(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->onItemClick(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;ILcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;)V

    return-void
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;ILcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public showEmptyView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02f5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->mEmptyView:Landroid/view/View;

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, -0x1

    .line 7
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 8
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 14
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    const v1, 0x7f0603ce

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addHeaderView(Landroid/view/View;I)V

    const/16 v0, 0x8

    .line 18
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void
.end method
