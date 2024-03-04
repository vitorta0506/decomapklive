.class public Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;
.super Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->w(Z)V

    return-void
.end method


# virtual methods
.method public G(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskAdapter;->G(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

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
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->h:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->i(Ljava/util/List;Z)Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setPosition(I)V

    goto :goto_0

    .line 5
    :cond_2
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->i:J

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 11
    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {v1, v3, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;J)V

    goto :goto_1

    :cond_5
    return-void
.end method
