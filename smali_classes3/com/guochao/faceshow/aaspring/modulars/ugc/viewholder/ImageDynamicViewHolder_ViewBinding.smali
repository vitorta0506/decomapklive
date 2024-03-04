.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder_ViewBinding;
.source "SourceFile"


# instance fields
.field private m:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder_ViewBinding;->m:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a095c

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a073a

    const-string v1, "field \'mView\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder_ViewBinding;->m:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder_ViewBinding;->m:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;->mView:Landroid/view/View;

    .line 5
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder_ViewBinding;->unbind()V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
