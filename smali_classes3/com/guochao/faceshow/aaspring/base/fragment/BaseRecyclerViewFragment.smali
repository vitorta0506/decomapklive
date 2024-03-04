.class public abstract Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Ld7/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;",
        "Ld7/c<",
        "TT;TVH;>;"
    }
.end annotation


# instance fields
.field mRecyclerViewDelegate:Ld7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/c<",
            "TT;TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->lambda$onBindViewHolder$0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method private ensureDelegate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld7/d;

    invoke-direct {v0, p0}, Ld7/d;-><init>(Ld7/c;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;Landroid/view/View;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/a;->addData(Ljava/lang/Object;)V

    return-void
.end method

.method public addDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/a;->addDatas(Ljava/util/List;)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1, p2}, Ld7/c;->addFooterView(Landroid/view/View;I)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1, p2}, Ld7/c;->addHeaderView(Landroid/view/View;I)V

    return-void
.end method

.method public canLoadMore()Z
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e;->f()Z

    move-result v0

    return v0
.end method

.method public canRefresh()Z
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e;->g()Z

    move-result v0

    return v0
.end method

.method public clearAll()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->clearAll()V

    return-void
.end method

.method public abstract convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;ITT;)V"
        }
    .end annotation
.end method

.method public getCurrentPage()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/c;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getDefaultPage()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/c;->getDefaultPage()I

    move-result v0

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/c;->getEmptyView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFooterView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->getFooterView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0160

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ld7/a;->getList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->ensureDelegate()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/c;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public hideFooterView()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->hideFooterView()V

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->ensureDelegate()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ld7/a;->init(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public loadData()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->ensureDelegate()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/c;->getDefaultPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->loadData(I)V

    return-void
.end method

.method public abstract loadData(I)V
.end method

.method public notifyDataLoaded()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    return-void
.end method

.method public notifyDataLoaded(Z)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ld7/c;->notifyDataLoaded(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/guochao/faceshow/aaspring/base/fragment/d;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/d;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;ILjava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->ensureDelegate()V

    return-void
.end method

.method public onCreateAdapter(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/a;->onCreateAdapter(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    return-object p1
.end method

.method public onCreateLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-object p1
.end method

.method public abstract onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;ITT;)V"
        }
    .end annotation
.end method

.method public onViewRecycled(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onViewRecycled(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->onViewRecycled(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    return-void
.end method

.method public reload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ld7/a;->reload()V

    :cond_0
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/c;->removeFooterView(Landroid/view/View;)V

    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/c;->removeHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/c;->setCurrentPage(I)V

    return-void
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/a;->setDatas(Ljava/util/List;)V

    return-void
.end method

.method public setDefaultPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/c;->setDefaultPage(I)V

    return-void
.end method

.method public setFooterView(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/a;->setFooterView(I)V

    return-void
.end method

.method public setShowRefreshOnInit(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/c;->setShowRefreshOnInit(Z)V

    return-void
.end method

.method public showEmptyView()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->showEmptyView()V

    return-void
.end method
