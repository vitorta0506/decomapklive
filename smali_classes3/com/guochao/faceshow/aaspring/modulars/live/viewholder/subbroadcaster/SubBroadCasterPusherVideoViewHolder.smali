.class public Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;
.source "SourceFile"


# instance fields
.field i:Z

.field j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;Lcom/guochao/pusher/GCLivePusher;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;Lcom/guochao/pusher/GCLivePusher;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->i:Z

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->j:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic o(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;)Lcom/guochao/pusher/GCLivePusher;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    return-object p0
.end method

.method static synthetic p(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;)Lcom/guochao/pusher/GCLivePusher;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    return-object p0
.end method

.method static synthetic q(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;)Lcom/guochao/pusher/GCLivePusher;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    return-object p0
.end method

.method private r(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recycle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubBroadCasterPusher"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->j:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public create()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->w(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/pusher/GCLivePusher;->enableThirdBeauty(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->reInit()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->mTXCloudVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lcom/guochao/pusher/GCLivePusher;->startPreview(Landroid/view/ViewGroup;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    invoke-virtual {v0, v1}, Lcom/guochao/pusher/GCLivePusher;->setMirror(Z)V

    :cond_0
    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    const-string p1, "SubBroadCasterPusher"

    const-string v0, "bind: remove"

    .line 2
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->i:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->i:Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/guochao/pusher/GCLivePusher;->setMute(Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->mTXCloudVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/guochao/pusher/GCLivePusher;->startPreview(Landroid/view/ViewGroup;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/pusher/GCLivePusher;->setMirror(Z)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->f(Z)V

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->r(Z)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->g()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->i:Z

    return-void
.end method

.method public i(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->i(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V

    const-string p1, "SubBroadCasterPusher"

    const-string v0, "bind: remove"

    .line 2
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->i:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;->i:Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/guochao/pusher/GCLivePusher;->setMute(Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->mTXCloudVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/guochao/pusher/GCLivePusher;->startPreview(Landroid/view/ViewGroup;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/pusher/GCLivePusher;->setMirror(Z)V

    :cond_0
    return-void
.end method
