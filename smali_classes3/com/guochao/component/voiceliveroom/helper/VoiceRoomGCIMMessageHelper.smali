.class public final Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\tH\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u0011H\u0016R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;",
        "gcimMessage",
        "",
        "feeChange",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;",
        "model",
        "userOnSeat",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveSeatMessageModel;",
        "userLeaveSeat",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;",
        "userEnterRoom",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;",
        "userLeaveRoom",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;",
        "userSwitchSeat",
        "Lo7/a;",
        "",
        "dispatchGCIMMessage",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "viewModel",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "<init>",
        "(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)V",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)V
    .locals 1
    .param p1    # Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    return-void
.end method

.method private final feeChange(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->feeChange(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;)V

    return-void
.end method

.method private final userEnterRoom(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->userEnterRoom(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;)V

    return-void
.end method

.method private final userLeaveRoom(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->userLeaveRoom(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;)V

    return-void
.end method

.method private final userLeaveSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveSeatMessageModel;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveSeatMessageModel;->getSeatIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->removeSeatValueOnSeatIndex(I)V

    return-void
.end method

.method private final userOnSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;)V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomInfo()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 4
    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getSeatIndex()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    move-object v2, v3

    .line 5
    :cond_2
    check-cast v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    :cond_3
    if-eqz v2, :cond_4

    const/4 v1, 0x2

    .line 6
    invoke-virtual {v2, v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->setSeatStatus(I)V

    goto :goto_1

    .line 7
    :cond_4
    new-instance v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    move-object v3, v1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getSeatIndex()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getNickName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getSmallImg()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getId()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xdf60

    const/16 v21, 0x0

    .line 13
    invoke-direct/range {v3 .. v21}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;-><init>(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v2, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->addUserOnSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V

    :goto_1
    return-void
.end method

.method private final userSwitchSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->userSwitchSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;)V

    return-void
.end method


# virtual methods
.method public dispatchGCIMMessage(Lo7/a;)Z
    .locals 3
    .param p1    # Lo7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel;

    .line 3
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;

    if-eqz v2, :cond_1

    .line 4
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->userEnterRoom(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;)V

    goto/16 :goto_0

    .line 5
    :cond_1
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;

    if-eqz v2, :cond_2

    .line 6
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->userLeaveRoom(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;)V

    goto/16 :goto_0

    .line 7
    :cond_2
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;

    if-eqz v2, :cond_3

    .line 8
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->userOnSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;)V

    goto/16 :goto_0

    .line 9
    :cond_3
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveSeatMessageModel;

    if-eqz v2, :cond_4

    .line 10
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveSeatMessageModel;

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->userLeaveSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveSeatMessageModel;)V

    goto/16 :goto_0

    .line 11
    :cond_4
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;

    if-eqz v2, :cond_5

    .line 12
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->userSwitchSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;)V

    goto/16 :goto_0

    .line 13
    :cond_5
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;

    if-eqz v2, :cond_6

    .line 14
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->feeChange(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;)V

    goto/16 :goto_0

    .line 15
    :cond_6
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;

    if-eqz v2, :cond_7

    .line 16
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->lockSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;)V

    goto/16 :goto_0

    .line 17
    :cond_7
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;

    if-eqz v2, :cond_8

    .line 18
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->unlockSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;)V

    goto/16 :goto_0

    .line 19
    :cond_8
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDOpenMicroMessageModel;

    if-eqz v2, :cond_9

    .line 20
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDOpenMicroMessageModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->cmdOpenMicro(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDOpenMicroMessageModel;)V

    goto/16 :goto_0

    .line 21
    :cond_9
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDCloseMicroMessageModel;

    if-eqz v2, :cond_a

    .line 22
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDCloseMicroMessageModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->cmdCloseMicro(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDCloseMicroMessageModel;)V

    goto/16 :goto_0

    .line 23
    :cond_a
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatListMessageModel;

    if-eqz v2, :cond_b

    .line 24
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatListMessageModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->seatListRefresh(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatListMessageModel;)V

    goto/16 :goto_0

    .line 25
    :cond_b
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;

    if-eqz v2, :cond_c

    .line 26
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->roomInfoRefresh(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;)V

    goto/16 :goto_0

    .line 27
    :cond_c
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;

    if-eqz v2, :cond_d

    .line 28
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->roomInfoChange(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;)V

    goto :goto_0

    .line 29
    :cond_d
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;

    if-eqz v2, :cond_e

    .line 30
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->checkKickUser(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;)V

    goto :goto_0

    .line 31
    :cond_e
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;

    if-eqz v2, :cond_f

    .line 32
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->checkAdminUser(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;)V

    return v1

    .line 33
    :cond_f
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;

    if-eqz v2, :cond_10

    .line 34
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->checkRemoveAdminUser(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;)V

    return v1

    .line 35
    :cond_10
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;

    if-eqz v2, :cond_11

    .line 36
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->checkRemoveMember(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;)V

    return v1

    .line 37
    :cond_11
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;

    if-eqz v2, :cond_12

    .line 38
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->roomModeChanged(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;)V

    goto :goto_0

    .line 39
    :cond_12
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;

    if-eqz v2, :cond_13

    .line 40
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->updateFirstViewerData(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;)V

    goto :goto_0

    .line 41
    :cond_13
    instance-of v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;

    if-eqz v2, :cond_14

    .line 42
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->freeze(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;)V

    goto :goto_0

    .line 43
    :cond_14
    instance-of v0, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDReset;

    if-eqz v0, :cond_15

    .line 44
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->viewModel:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDReset;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->reSet(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDReset;)V

    :cond_15
    :goto_0
    return v1
.end method
