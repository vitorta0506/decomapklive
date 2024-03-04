.class Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/pusher/beauty/FilterItem;

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;->d(ILcom/guochao/pusher/beauty/FilterItem;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;->c(Z)V

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$a$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object p2
.end method
