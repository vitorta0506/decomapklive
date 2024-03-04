.class Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iget v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->a:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    iput v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->a:I

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->Y1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

    .line 7
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;->isSelect()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;->setSelect(Z)V

    .line 8
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

    .line 11
    invoke-interface {v2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;->a()V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    return-void
.end method
