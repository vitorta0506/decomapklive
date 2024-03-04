.class public abstract Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;
.source "SourceFile"


# instance fields
.field public M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

.field N5:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public Z2(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z2(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->l2(I)V

    :cond_0
    return-void
.end method

.method public d(IZ)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/debug/a;->b()Lcom/guochao/faceshow/aaspring/debug/a;

    move-result-object p1

    const-string v0, "LiveRoom"

    const-string v1, "\u79bb\u5f00PK\u4e86"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/debug/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsPkingInLive(Z)V

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkMode(Z)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setPkWaiting(Z)V

    const v0, 0x7f0a0893

    .line 7
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z3(I)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mAdsAndActivityView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->giftAndAdsView:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->giftAndAdsView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->R3()V

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewGiftBox:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    const/high16 v2, 0x41200000    # 10.0f

    .line 16
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 17
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewGiftBox:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->o()V

    .line 20
    :cond_5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v:Z

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->J()V

    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    .line 23
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->O:J

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->l4(ZZ)V

    .line 25
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->canRequestLinkMic()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 26
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    instance-of p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz p1, :cond_6

    .line 28
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLinkMicStatusChangeModel(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_6
    return-void
.end method

.method g3(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;->getFCoin()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->z2(J)V

    :cond_0
    return-void
.end method

.method public h0(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;JZ)V
    .locals 8
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F4:J

    cmp-long v3, v1, p2

    if-lez v3, :cond_0

    return-void

    .line 2
    :cond_0
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->F4:J

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getPkStage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    return-void

    .line 5
    :cond_2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-virtual {v1, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->y2(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;J)V

    .line 8
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->i(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V

    .line 9
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getPkStage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getPkStage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getFCoinCount()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->N:J

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getPkingEndTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    move-wide v3, v1

    goto :goto_0

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getPkingEndTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getPkPunishEndTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-wide v5, v1

    goto :goto_1

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getPkPunishEndTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v5, v0

    :goto_1
    move-object v0, p0

    move-wide v1, p2

    move v7, p4

    .line 16
    invoke-virtual/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->k4(JJJZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 17
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uff08\u4ec5\u6d4b\u8bd5\uff09\u670d\u52a1\u5668\u8fd4\u56de\u7684PK\u65f6\u95f4\u548c\u60e9\u7f5a\u65f6\u95f4\u6709\u8bef   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getPkingEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getPkPunishEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updatePkUserInfo"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    if-nez v0, :cond_8

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    iput-wide p2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m:J

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePkUserInfo\u5bf9\u65b9\u52a0\u901f\u6d41\u5730\u5740\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getJsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->y(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V

    .line 22
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->K()V

    :cond_8
    return-void
.end method

.method public j3(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j3(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->m2(I)V

    :cond_0
    return-void
.end method

.method public j4(JJJZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static/range {p1 .. p7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->h2(JJJZ)Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    const p2, 0x7f0a0893

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->u3(ILandroidx/fragment/app/Fragment;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRequestLink:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    instance-of p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLinkMicStatusChangeModel(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_1
    return-void
.end method

.method public k4(JJJZ)V
    .locals 11

    move-object v8, p0

    .line 1
    iget-boolean v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    .line 3
    iget-boolean v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mPkInfoAreaView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v10, 0x1

    .line 5
    iput-boolean v10, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v:Z

    .line 6
    invoke-static {v10}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsPkingInLive(Z)V

    .line 7
    invoke-static {v9}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsPKPrepare(Z)V

    .line 8
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mVideoRecyclerView:Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    .line 9
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->h(Landroid/view/View;I)V

    :cond_2
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    .line 10
    invoke-virtual/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->j4(JJJZ)V

    .line 11
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mAdsAndActivityView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_3
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->firstRechargeLay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    :cond_4
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewGiftBox:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_5

    const/high16 v1, 0x42140000    # 37.0f

    .line 17
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 18
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mViewGiftBox:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    :cond_5
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v0, :cond_6

    .line 20
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;->H(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V

    .line 21
    :cond_6
    invoke-virtual {p0, v10, v9}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->l4(ZZ)V

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->i4()V

    return-void
.end method

.method public l4(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkMode(Z)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkMode(Z)V

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setApplyPkState(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setPkWaiting(Z)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->switchPkMode(Z)V

    :cond_2
    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->w2()V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->dismissInvite()V

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkLoadingState(Z)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u5e03\u5c40\u53d8\u6362 \u6309\u94aeP\u4e0a\u72b6\u6001"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkState(Z)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u5e03\u5c40\u53d8\u6362 \u6309\u94ae\u6062\u590d\u72b6\u6001"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 15
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->k2(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2:Z

    if-eqz p1, :cond_7

    .line 17
    :cond_6
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->A3(Z)V

    :cond_7
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsPkingInLive(Z)V

    return-void
.end method

.method public onPkUserEvent(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createPkMergeStreamSuccessModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_0
    return-void
.end method

.method public onQuitLiveRoom(ZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->onQuitLiveRoom(ZZ)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->d(IZ)V

    :cond_0
    return-void
.end method

.method public y1(J)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPkRivalFCoinChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveRoom"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isInPkPunishmentTime()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C4:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->A2(J)V

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 9
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->N5:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-gez v4, :cond_6

    return-void

    .line 10
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->N5:J

    .line 11
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createPkFCoinMessageModel(J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    return-void
.end method
