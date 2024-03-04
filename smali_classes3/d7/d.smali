.class public Ld7/d;
.super Ld7/b;
.source "SourceFile"

# interfaces
.implements Ld7/c;
.implements Lzd/d;
.implements Lzd/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">",
        "Ld7/b<",
        "TT;TVH;>;",
        "Ld7/c<",
        "TT;TVH;>;",
        "Lzd/d;",
        "Lzd/b;"
    }
.end annotation


# instance fields
.field private i:Ld7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/c<",
            "TT;TVH;>;"
        }
    .end annotation
.end field

.field private j:I

.field k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

.field m:Lcom/guochao/faceshow/aaspring/views/FakeFooter;

.field private n:I

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Ld7/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld7/c<",
            "TT;TVH;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ld7/b;-><init>(Ld7/a;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ld7/d;->j:I

    .line 3
    iput v0, p0, Ld7/d;->n:I

    .line 4
    iput-boolean v0, p0, Ld7/d;->p:Z

    .line 5
    iput-object p1, p0, Ld7/d;->i:Ld7/c;

    return-void
.end method

.method static synthetic k(Ld7/d;)Z
    .locals 0

    iget-boolean p0, p0, Ld7/d;->o:Z

    return p0
.end method


# virtual methods
.method public a(Lwd/j;)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Ld7/d;->j:I

    iput p1, p0, Ld7/d;->n:I

    .line 2
    invoke-virtual {p0, p1}, Ld7/d;->loadData(I)V

    return-void
.end method

.method public addDatas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Ld7/d;->n:I

    iget v1, p0, Ld7/d;->j:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ld7/b;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ld7/b;->addDatas(Ljava/util/List;)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Ld7/d;->o()Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->c(Landroid/view/View;I)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Ld7/d;->o()Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d(Landroid/view/View;I)V

    return-void
.end method

.method public b(Lwd/j;)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Ld7/d;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ld7/d;->n:I

    .line 2
    invoke-virtual {p0, p1}, Ld7/d;->loadData(I)V

    return-void
.end method

.method public canLoadMore()Z
    .locals 1

    iget-object v0, p0, Ld7/d;->i:Ld7/c;

    invoke-interface {v0}, Ld7/c;->canLoadMore()Z

    move-result v0

    return v0
.end method

.method public canRefresh()Z
    .locals 1

    iget-object v0, p0, Ld7/d;->i:Ld7/c;

    invoke-interface {v0}, Ld7/c;->canRefresh()Z

    move-result v0

    return v0
.end method

.method public convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;ITT;)V"
        }
    .end annotation

    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Ld7/d;->n:I

    return v0
.end method

.method public getDefaultPage()I
    .locals 1

    iget v0, p0, Ld7/d;->j:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ld7/b;->f:Landroid/view/View;

    return-object v0
.end method

.method public getFooterView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ld7/d;->l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    return-object v0
.end method

.method public getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 1

    iget-object v0, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object v0
.end method

.method public hideFooterView()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ld7/d;->setFooterView(I)V

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Ld7/b;->init(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0a0962

    .line 2
    invoke-virtual {p0, v0}, Ld7/b;->g(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    iget-object v0, p0, Ld7/d;->i:Ld7/c;

    invoke-interface {v0}, Ld7/c;->getDefaultPage()I

    move-result v0

    iput v0, p0, Ld7/d;->j:I

    .line 4
    iget-object v0, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {p0}, Ld7/d;->canRefresh()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->T(Lzd/d;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 7
    iget-object v0, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 9
    :goto_0
    invoke-virtual {p0}, Ld7/d;->canLoadMore()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S(Lzd/b;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 11
    iget-object v0, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v0, 0x7f0a0d64

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/FakeFooter;

    iput-object p2, p0, Ld7/d;->m:Lcom/guochao/faceshow/aaspring/views/FakeFooter;

    .line 13
    new-instance p2, Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ld7/d;->l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    .line 14
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 15
    iget-object p2, p0, Ld7/d;->l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object p1, p0, Ld7/d;->m:Lcom/guochao/faceshow/aaspring/views/FakeFooter;

    const/4 p2, 0x4

    if-eqz p1, :cond_1

    .line 17
    iget-object v0, p0, Ld7/d;->l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/FakeFooter;->setDelegate(Lwd/f;)V

    .line 18
    iget-object p1, p0, Ld7/d;->m:Lcom/guochao/faceshow/aaspring/views/FakeFooter;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    :cond_1
    iget-object p1, p0, Ld7/d;->l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    :cond_2
    iget-object p1, p0, Ld7/b;->g:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_3

    .line 22
    iget-object p1, p0, Ld7/d;->l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    const p2, 0x1877d

    invoke-virtual {p0, p1, p2}, Ld7/d;->addFooterView(Landroid/view/View;I)V

    .line 23
    :cond_3
    iget-object p1, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 24
    iget-object p1, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    goto :goto_1

    .line 25
    :cond_4
    iget-object p1, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 26
    :goto_1
    iget-boolean p1, p0, Ld7/d;->p:Z

    if-eqz p1, :cond_5

    .line 27
    iget-object p1, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 p2, 0x3c

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, p2, v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p(IIFZ)Z

    .line 28
    :cond_5
    iget-object p1, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->M(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 29
    :cond_6
    iget-object p1, p0, Ld7/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 30
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_7

    .line 31
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    .line 32
    new-instance v1, Ld7/d$a;

    invoke-direct {v1, p0, p1, v0}, Ld7/d$a;-><init>(Ld7/d;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 33
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_7
    return-void
.end method

.method public loadData(I)V
    .locals 1

    iget-object v0, p0, Ld7/d;->i:Ld7/c;

    invoke-interface {v0, p1}, Ld7/c;->loadData(I)V

    return-void
.end method

.method public notifyDataLoaded(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld7/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld7/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object v0

    .line 4
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Ld7/d$b;

    invoke-direct {v1, p0, p1}, Ld7/d$b;-><init>(Ld7/d;Z)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    .line 6
    iget-object p1, p0, Ld7/b;->e:Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->a()V

    :cond_1
    return-void
.end method

.method public o()Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter<",
            "TT;TVH;>;"
        }
    .end annotation

    iget-object v0, p0, Ld7/b;->e:Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;

    return-object v0
.end method

.method public onCreateAdapter(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;

    invoke-virtual {p0}, Ld7/b;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ld7/b;->getList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ld7/d;->i:Ld7/c;

    invoke-super {p0, p1}, Ld7/b;->onCreateAdapter(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Ld7/b;->e:Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;

    return-object v0
.end method

.method public reload()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ld7/d;->getDefaultPage()I

    move-result v0

    invoke-virtual {p0, v0}, Ld7/d;->setCurrentPage(I)V

    .line 2
    invoke-virtual {p0}, Ld7/d;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Ld7/d;->loadData(I)V

    .line 3
    iget-object v0, p0, Ld7/b;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v2, 0x3c

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->p(IIFZ)Z

    :cond_1
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Ld7/d;->o()Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->removeFooterView(Landroid/view/View;)V

    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Ld7/d;->o()Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->removeHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    iput p1, p0, Ld7/d;->n:I

    return-void
.end method

.method public setDefaultPage(I)V
    .locals 0

    iput p1, p0, Ld7/d;->j:I

    return-void
.end method

.method public setFooterView(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iput-boolean v0, p0, Ld7/d;->o:Z

    .line 2
    iget-object v0, p0, Ld7/d;->l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    if-eqz v0, :cond_2

    iget-object v1, p0, Ld7/b;->g:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v1, :cond_2

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Ld7/d;->removeFooterView(Landroid/view/View;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Ld7/d;->removeFooterView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Ld7/d;->l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    const v1, 0x1877d

    invoke-virtual {p0, v0, v1}, Ld7/d;->addFooterView(Landroid/view/View;I)V

    .line 6
    :goto_1
    iget-object v0, p0, Ld7/d;->l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setShowRefreshOnInit(Z)V
    .locals 0

    iput-boolean p1, p0, Ld7/d;->p:Z

    return-void
.end method

.method public showEmptyView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld7/b;->getItemCount()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Ld7/b;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Ld7/d;->hideFooterView()V

    .line 5
    iget-object v0, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Ld7/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Ld7/b;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_3
    iget-object v0, p0, Ld7/d;->l:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    :cond_4
    iget-object v0, p0, Ld7/d;->k:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_5
    iget-object v0, p0, Ld7/b;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method
