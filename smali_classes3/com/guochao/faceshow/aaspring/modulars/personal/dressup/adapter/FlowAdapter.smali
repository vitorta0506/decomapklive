.class public Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Lcom/guochao/faceshow/aaspring/modulars/personal/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/personal/c;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->c:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->b:I

    .line 5
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;I)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->b:I

    const v1, 0x7f0800df

    const v2, 0x7f0603ce

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;->c(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;->d(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->c:Landroid/content/Context;

    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/HobbyBean;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;->d(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->c:Landroid/content/Context;

    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;->d(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->c:Landroid/content/Context;

    const v2, 0x7f06009c

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0800e0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 11
    :goto_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;->c(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :goto_1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;->d(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getTags()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0382

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0381

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public c(Lcom/guochao/faceshow/aaspring/modulars/personal/c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/personal/c;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->a:Ljava/util/List;

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/HobbyBean;->isSelect()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0800df

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setSelect(Z)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/personal/c;

    if-eqz v1, :cond_1

    .line 6
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->b:I

    invoke-interface {v1, p1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/c;->a(Landroid/view/View;II)V

    :cond_1
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter$a;

    move-result-object p1

    return-object p1
.end method
