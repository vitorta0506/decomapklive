.class public Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;
.source "SourceFile"


# instance fields
.field private fcoin:Ljava/lang/String;

.field private reasonMsgLang:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private userLiveBanned:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;-><init>(Lcom/guochao/faceshow/bean/UserBean;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic buildRoomInfo()Lcom/guochao/user/RoomInfo;
    .locals 1

    invoke-static {p0}, Ld9/n;->a(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/user/RoomInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic canMakeVideoOrAudioCall()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->d(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getBigGiftBeans()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ld9/n;->i(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFcoin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->fcoin:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getGameSeatCurrentPlayerPosition()I
    .locals 1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonMsgLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->reasonMsgLang:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getRestActiveTime()J
    .locals 2

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getStatus()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ld9/n;->p(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->streamId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getStream_id()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ld9/n;->r(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserLiveBanned()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->userLiveBanned:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isActive()Z
    .locals 1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->d(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBanTalk()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->w(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->x(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLaunchFromFloatWindow()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->C(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMute()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->F(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPkModeWhenFloatWindow()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->G(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShowedFloatFromLiveRoom()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->J(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setBanTalk(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->R(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setBigGiftBeans(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->S(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setBroadCasterUserName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->T(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ljava/lang/String;)V

    return-void
.end method

.method public setFcoin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->fcoin:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setFocused(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->V(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setGameInfoList(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->X(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setGameSeatCurrentPlayerPosition(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->e(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;I)V

    return-void
.end method

.method public bridge synthetic setKickedOut(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->c0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setLaunchFromFloatWindow(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->d0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setMute(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->i0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setPkModeWhenFloatWindow(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->k0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public setReasonMsgLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->reasonMsgLang:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setShowedFloatFromLiveRoom(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->n0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setStatus(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->o0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ljava/lang/String;)V

    return-void
.end method

.method public setStreamId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->streamId:Ljava/lang/String;

    return-void
.end method

.method public setUserLiveBanned(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveLaunchResponse;->userLiveBanned:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setUserType(I)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->p0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    return-void
.end method
