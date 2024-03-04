.class public Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;
.source "SourceFile"


# instance fields
.field f:Lcom/guochao/player/GCLivePlayer;

.field protected mImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected mPlayerView:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    return-void
.end method


# virtual methods
.method public create()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->j(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-static {v1, p1, v2}, Lhc/a;->t(Landroid/widget/ImageView;Ljava/lang/String;I)V

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->i(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->f(Z)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "SubBroadCasterVideoViewHolder.destroy()"

    .line 2
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->u0(Ljava/lang/String;Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/player/GCLivePlayer;->stopPlay(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->g()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/guochao/player/GCLivePlayer;->stopPlay(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    return-void
.end method

.method public i(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->i(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getJsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->mPlayerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/player/GCLivePlayer;->startPlayAcc(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/player/GCLivePlayer;->setMute(ZLjava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->pause(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->resume(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
