.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Ld9/e;


# instance fields
.field protected mILiveRoomManager:Ld9/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public empty(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    return-void
.end method

.method public getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentVoiceRoomModel()Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onAtSomebody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 3
    instance-of v0, p1, Ld9/g;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Ld9/g;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    :cond_0
    return-void
.end method

.method public onEnterRoom(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLinkMicResponse(Z)V
    .locals 0

    return-void
.end method

.method public onLinkMicStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onLiveFinish(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNetworkLose(I)V
    .locals 0

    return-void
.end method

.method public onNetworkResume(I)V
    .locals 0

    return-void
.end method

.method public synthetic onPlayMusicAnim(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ld9/d;->a(Ld9/e;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic onPlaySuccess()V
    .locals 0

    invoke-static {p0}, Ld9/d;->b(Ld9/e;)V

    return-void
.end method

.method public onQuitLiveRoom(ZZ)V
    .locals 0

    return-void
.end method

.method public onReceiveFaceGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 0

    return-void
.end method

.method public onReceiveHugeGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 0

    return-void
.end method

.method public onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onRefreshLiveInfo()V
    .locals 0

    return-void
.end method

.method public onSelfMute(Z)V
    .locals 0

    return-void
.end method

.method public onUserTypeChanged(I)V
    .locals 0

    return-void
.end method

.method public sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ld9/e$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Ld9/e;->sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_0
    return-void
.end method

.method public sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_0
    return-void
.end method

.method public sendLiveMessage(Ljava/lang/String;Ld9/e$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2}, Ld9/e;->sendLiveMessage(Ljava/lang/String;Ld9/e$a;)V

    :cond_0
    return-void
.end method

.method public sendLiveMessageCmd(Ljava/lang/String;Ld9/e$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ld9/e$a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ld9/e;->sendLiveMessageCmd(Ljava/lang/String;Ld9/e$a;)V

    :cond_0
    return-void
.end method
