.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MarqueeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MarqueeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;I)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/MarqueeData;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/MarqueeData;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const v1, 0x186ab

    if-ne p2, v1, :cond_0

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0247

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 2
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0248

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/MarqueeData;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MarqueeData;->getType()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x186ab

    return p1

    :cond_0
    const p1, 0x186ac

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter;->b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MarqueeRecycleAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method
