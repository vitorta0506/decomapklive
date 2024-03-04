.class Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->e(ILcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;)I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->d(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;->c(I)V

    .line 7
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a$a;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;)Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;)I

    move-result v2

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantItemHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;I)V

    return-object p2
.end method
