.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$a;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->x()Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->x()Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    iget-object v3, v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->s2(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method
