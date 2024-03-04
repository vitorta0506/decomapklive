.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Z1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0a04ef

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Z1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->a()I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a0b47

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Z1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->Z1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

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

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/BottomInteractionDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
