.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;
.super Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;
.source "SourceFile"


# instance fields
.field private n:Z

.field o:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    return-void
.end method


# virtual methods
.method public G(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const v1, 0x7f0d038d

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A2()Lcom/guochao/pusher/GCLivePusher;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/MainBroadCasterHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;Lcom/guochao/pusher/GCLivePusher;)V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c()Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y2(Z)Lcom/guochao/pusher/GCLivePusher;

    move-result-object v0

    invoke-direct {p2, v3, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterPusherVideoViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;Lcom/guochao/pusher/GCLivePusher;)V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c()Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 3
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c()Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x6

    if-ne p2, v0, :cond_3

    .line 4
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c()Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/WatcherPlayViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d03a1

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->D0()Lcom/guochao/player/GCLivePlayer;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/WatcherPlayViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;Lcom/guochao/player/GCLivePlayer;)V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c()Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    move-result-object p1

    return-object p1
.end method

.method public H(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->o:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->o:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->n:Z

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->f:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setPkMode(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->l()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->b(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->pusher()Lcom/guochao/pusher/GCLivePusher;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/pusher/GCLivePusher;->setMute(Z)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/pusher/GCLivePusher;->enableAudio(Z)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->b:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->l()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->n:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->n:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x6

    return p1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->a:Z

    if-eqz v0, :cond_3

    .line 6
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->b:Z

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public o()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->o()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->n:Z

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->f:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->setPkMode(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    .line 6
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/broadcaster/PkSubViewHolder;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->g()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->l()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->p(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->G(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    move-result-object p1

    return-object p1
.end method

.method public onEnterBackground()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    .line 2
    instance-of v2, v1, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;

    invoke-interface {v1}, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;->onEnterBackground()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onEnterForeground()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    .line 2
    instance-of v2, v1, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;

    invoke-interface {v1}, Lcom/guochao/faceshow/utils/Foreground$OnForegroundStateChangedListener;->onEnterForeground()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;I)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->p(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;I)V

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->i(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V

    :cond_0
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    .line 2
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/subbroadcaster/SubBroadCasterVideoViewHolder;

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->player()Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->stopPlay(Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->s(Ljava/lang/String;)V

    return-void
.end method

.method public z(Ljava/util/List;J)V
    .locals 4
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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Q:Z

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->i:J

    cmp-long v2, v0, p2

    if-lez v2, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->l()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 4
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u666e\u901a\u8f6e\u8be2\u6709\u51e0\u4e2a\u4eba: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveLinkMicPlayAdapter"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->h(Ljava/util/List;)Ljava/util/List;

    .line 6
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->i:J

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-eq p2, p3, :cond_4

    .line 9
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->v(Ljava/util/List;)V

    return-void

    .line 10
    :cond_4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->e(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 11
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->v(Ljava/util/List;)V

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->k()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 14
    iget-object v2, p3, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 15
    iget-object v2, p3, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getMatchType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setMatchType(Ljava/lang/String;)V

    .line 16
    iget-object v2, p3, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getVoiceStatus()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setVoiceStatus(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    goto :goto_0

    .line 18
    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
