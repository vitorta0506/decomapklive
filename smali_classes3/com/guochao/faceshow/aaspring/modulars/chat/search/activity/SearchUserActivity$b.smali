.class Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
