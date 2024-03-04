.class public Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;
.source "SourceFile"


# instance fields
.field f:Lcom/guochao/player/GCLivePlayer;

.field g:Ljava/lang/String;

.field protected mImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTXCloudVideoView:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

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
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->d:Lcom/guochao/player/GCLivePlayer;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getJsUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->g:Ljava/lang/String;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/guochao/player/GCLivePlayer;->setMute(ZLjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->mTXCloudVideoView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/player/GCLivePlayer;->startPlayAcc(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lhc/a;->t(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method public destroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->f(Z)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz p1, :cond_0

    const-string p1, "PkSubViewHolder.destroy()"

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->u0(Ljava/lang/String;Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    invoke-virtual {p1, v0, v0}, Lcom/guochao/player/GCLivePlayer;->stopPlay(ZZ)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->g:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->g()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "PkSubViewHolder.recycle()"

    .line 3
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->u0(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->stopPlay(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->mTXCloudVideoView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->g:Ljava/lang/String;

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->g:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->f:Lcom/guochao/player/GCLivePlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->resume(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
