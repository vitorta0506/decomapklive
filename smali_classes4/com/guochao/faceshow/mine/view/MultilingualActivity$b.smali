.class Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/MultilingualActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    .line 3
    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;->b:Ljava/lang/String;

    const v2, 0x7f0a0c17

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    const v1, 0x7f0a0585

    .line 4
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    .line 5
    iget-object v2, v0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->b0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-static {v2, v1}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->g0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;Landroid/view/View;)Landroid/view/View;

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-static {v2, p2}, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->k0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;I)I

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;

    invoke-direct {v2, p0, p2, v0, v1}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b$a;-><init>(Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;ILcom/guochao/faceshow/mine/view/MultilingualActivity$c;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

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
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;->a:Lcom/guochao/faceshow/mine/view/MultilingualActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->lvLanguage:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0d0290

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
