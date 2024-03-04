.class Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Ljava/util/List;

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
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeautyHolder;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeautyHolder;

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/pusher/beauty/BeautyItem;

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeautyHolder;->c(Lcom/guochao/pusher/beauty/BeautyItem;I)V

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeautyHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeautyHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 2
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
