.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;
.super Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

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

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0299

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;->G(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    move-result-object p1

    return-object p1
.end method
