.class public Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter<",
        "TT;TVH;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le7/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le7/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a<",
            "TVH;>;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TVH;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter$a;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->e:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->a()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->e:Ljava/util/List;

    new-instance v1, Le7/a;

    invoke-direct {v1, p1, p2}, Le7/a;-><init>(Landroid/view/View;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    new-instance v1, Le7/a;

    invoke-direct {v1, p1, p2}, Le7/a;-><init>(Landroid/view/View;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public e(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->getItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    goto :goto_0

    .line 6
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le7/a;

    invoke-virtual {p1}, Le7/a;->b()I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le7/a;

    invoke-virtual {p1}, Le7/a;->b()I

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseRecyclerAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le7/a;

    invoke-virtual {v2}, Le7/a;->b()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le7/a;

    invoke-virtual {p1}, Le7/a;->a()Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le7/a;

    invoke-virtual {p2}, Le7/a;->a()Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le7/a;

    invoke-virtual {v1}, Le7/a;->b()I

    move-result v1

    if-ne v1, p2, :cond_4

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le7/a;

    invoke-virtual {p1}, Le7/a;->a()Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 15
    :cond_3
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le7/a;

    invoke-virtual {p2}, Le7/a;->a()Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->f(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->b(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le7/a;

    .line 4
    invoke-virtual {v1}, Le7/a;->a()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/adapter/HeaderFooterRecyclerViewAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le7/a;

    .line 4
    invoke-virtual {v1}, Le7/a;->a()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
