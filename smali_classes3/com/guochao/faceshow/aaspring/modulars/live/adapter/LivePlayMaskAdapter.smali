.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;
.super Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    return-void
.end method


# virtual methods
.method public G(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/watcher/SubBroadCasterInfoMaskViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d029a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/watcher/SubBroadCasterInfoMaskViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V

    return-object p2
.end method

.method public H(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->i:J

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;->z(Ljava/util/List;J)V

    return-void
.end method

.method public I(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 3
    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->l(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;->G(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;J)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->i:J

    cmp-long v2, v0, p2

    if-lez v2, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->l()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->m:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->h:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->i(Ljava/util/List;Z)Ljava/util/List;

    .line 6
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setPosition(I)V

    goto :goto_1

    .line 8
    :cond_3
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->i:J

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->l()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 15
    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 16
    invoke-virtual {v1, v3, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;J)V

    goto :goto_2

    .line 17
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
