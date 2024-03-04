.class public Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/WatcherPlayViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;
.source "SourceFile"


# instance fields
.field private f:Lcom/guochao/player/GCLivePlayer;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;Lcom/guochao/player/GCLivePlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V

    .line 2
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/WatcherPlayViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p3, p1}, Lcom/guochao/player/GCLivePlayer;->setMute(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public create()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->create()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/WatcherPlayViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->setPlayerView(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->f(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/WatcherPlayViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/player/GCLivePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isLaunchFromFloatWindow()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "WatcherPlayViewHolder.destroy()"

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->u0(Ljava/lang/String;Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/WatcherPlayViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    invoke-virtual {p1, v0, v0}, Lcom/guochao/player/GCLivePlayer;->stopPlay(ZZ)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->g()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/WatcherPlayViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/player/GCLivePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WatcherPlayViewHolder.recycle()"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->u0(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/WatcherPlayViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    invoke-virtual {v0, v1, v1}, Lcom/guochao/player/GCLivePlayer;->stopPlay(ZZ)V

    :cond_0
    return-void
.end method
