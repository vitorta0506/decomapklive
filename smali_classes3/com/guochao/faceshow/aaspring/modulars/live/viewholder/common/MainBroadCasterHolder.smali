.class public Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;


# instance fields
.field protected final f:Lcom/guochao/pusher/GCLivePusher;

.field g:J

.field h:J

.field protected mTXCloudVideoView:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;Lcom/guochao/pusher/GCLivePusher;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V

    .line 2
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    return-void
.end method


# virtual methods
.method public create()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->mTXCloudVideoView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v1}, Lcom/guochao/pusher/GCLivePusher;->startPreview(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k(ZJZ)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->k(ZJZ)V

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->g:J

    cmp-long p4, v0, p2

    if-lez p4, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->g:J

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    if-eqz p2, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 5
    invoke-virtual {p2, p1}, Lcom/guochao/pusher/GCLivePusher;->enableAudio(Z)V

    :cond_1
    return-void
.end method

.method public m(ZJZ)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->m(ZJZ)V

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->h:J

    cmp-long p4, v0, p2

    if-lez p4, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->h:J

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2, p1}, Lcom/guochao/pusher/GCLivePusher;->enableCamera(Z)V

    :cond_1
    return-void
.end method

.method public onEnterBackground()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->onPause()V

    :cond_0
    return-void
.end method

.method public onEnterForeground()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->I:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;->f:Lcom/guochao/pusher/GCLivePusher;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/pusher/GCLivePusher;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method
