.class Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->h2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->Z1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Ljava/util/List;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->Z1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    invoke-virtual {v0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->b2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/SharePlatformBean;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    .line 2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$b;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
