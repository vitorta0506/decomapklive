.class public abstract Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
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
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;",
        "Ld7/c<",
        "TT;TVH;>;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

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

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private ensureDelegate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld7/d;

    invoke-direct {v0, p0}, Ld7/d;-><init>(Ld7/c;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    :cond_0
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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/a;->addDatas(Ljava/util/List;)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1, p2}, Ld7/c;->addFooterView(Landroid/view/View;I)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/c;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getDefaultPage()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/c;->getDefaultPage()I

    move-result v0

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/c;->getEmptyView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFooterView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->getFooterView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/c;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public hideFooterView()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

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
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->ensureDelegate()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ld7/a;->init(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public loadData()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->ensureDelegate()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/c;->getDefaultPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->loadData(I)V

    return-void
.end method

.method public abstract loadData(I)V
.end method

.method public notifyDataLoaded()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->notifyDataLoaded(Z)V

    return-void
.end method

.method public notifyDataLoaded(Z)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/c;->notifyDataLoaded(Z)V

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment$a;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->ensureDelegate()V

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

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

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->onViewRecycled(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    return-void
.end method

.method public reload()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->ensureDelegate()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->reload()V

    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/c;->removeFooterView(Landroid/view/View;)V

    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/c;->removeHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/a;->setDatas(Ljava/util/List;)V

    return-void
.end method

.method public setDefaultPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/c;->setDefaultPage(I)V

    return-void
.end method

.method public setFooterView(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/a;->setFooterView(I)V

    return-void
.end method

.method public setShowRefreshOnInit(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0, p1}, Ld7/c;->setShowRefreshOnInit(Z)V

    return-void
.end method

.method public showEmptyView()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mRecyclerViewDelegate:Ld7/c;

    invoke-interface {v0}, Ld7/a;->showEmptyView()V

    return-void
.end method

.method public showEmptyViewNoText()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02f5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mEmptyView:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->removeHeaderView(Landroid/view/View;)V

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->addHeaderView(Landroid/view/View;I)V

    const/16 v0, 0x8

    .line 11
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->setFooterView(I)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->removeHeaderView(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method
