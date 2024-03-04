.class public final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;
.super Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00a4\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u00a8\u0001B\t\u00a2\u0006\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u001a\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u0002J\u0012\u0010\r\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u001c\u0010\u0011\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003H\u0002J\u0016\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000bJ\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0003H\u0016J\u0018\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0003H\u0016J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0003H\u0016J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0003J\u000e\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0003J$\u0010\u001f\u001a\u00020\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001dJ$\u0010 \u001a\u00020\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001dJ\u000e\u0010!\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0003J\u000e\u0010#\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u0019J\u001a\u0010&\u001a\u00020\t2\u0008\u0008\u0002\u0010$\u001a\u00020\u00032\u0008\u0008\u0002\u0010%\u001a\u00020\u0007J \u0010(\u001a\u00020\t2\u0006\u0010\'\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001dJ \u0010*\u001a\u00020\t2\u0006\u0010)\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001dJ \u0010,\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001dJ\u0018\u0010.\u001a\u00020\t2\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020-\u0018\u00010\u001dJ\u0010\u00101\u001a\u00020\t2\u0006\u00100\u001a\u00020/H\u0007J\u0008\u00102\u001a\u00020\tH\u0014J\u0010\u00105\u001a\u00020\u00072\u0006\u00104\u001a\u000203H\u0016J\u0006\u00106\u001a\u00020\tJ<\u0010=\u001a\u00020\t2\u0006\u00108\u001a\u0002072\"\u0010<\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0:\u0012\u0006\u0012\u0004\u0018\u00010;09\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008=\u0010>J\u000e\u0010@\u001a\u00020\t2\u0006\u0010?\u001a\u00020\u0003J\u000e\u0010B\u001a\u00020\t2\u0006\u00108\u001a\u00020AJ\u000e\u0010D\u001a\u00020\t2\u0006\u00108\u001a\u00020CJ\u000e\u0010F\u001a\u00020\t2\u0006\u00108\u001a\u00020EJ\u000e\u0010H\u001a\u00020\t2\u0006\u00104\u001a\u00020GJ\u000e\u0010J\u001a\u00020\t2\u0006\u00104\u001a\u00020IJ\u000e\u0010L\u001a\u00020\t2\u0006\u00108\u001a\u00020KJ\u000e\u0010N\u001a\u00020\t2\u0006\u00108\u001a\u00020MJ\u000e\u0010P\u001a\u00020\t2\u0006\u00108\u001a\u00020OJ\u000e\u0010\u001b\u001a\u00020\t2\u0006\u00108\u001a\u00020QJ\u000e\u0010S\u001a\u00020\t2\u0006\u00108\u001a\u00020RJ\u000e\u0010U\u001a\u00020\t2\u0006\u00108\u001a\u00020TJ\u000e\u0010W\u001a\u00020\t2\u0006\u00108\u001a\u00020VJ\u000e\u0010Y\u001a\u00020\t2\u0006\u00108\u001a\u00020XJ\u000e\u0010[\u001a\u00020\t2\u0006\u00108\u001a\u00020ZJ\u000e\u0010]\u001a\u00020\t2\u0006\u00108\u001a\u00020\\JB\u0010_\u001a\u00020\t2\u0006\u00108\u001a\u00020\u00192(\u0010<\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030^\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0:\u0012\u0006\u0012\u0004\u0018\u00010;09\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008_\u0010`J\u0006\u0010a\u001a\u00020\tJ\u0006\u0010b\u001a\u00020\tJ\u0006\u0010%\u001a\u00020\tJ\u000e\u0010d\u001a\u00020\t2\u0006\u00104\u001a\u00020cJ\u000e\u0010f\u001a\u00020\t2\u0006\u00104\u001a\u00020eJ\u000e\u0010h\u001a\u00020\t2\u0006\u00104\u001a\u00020gJ\u000e\u0010j\u001a\u00020\t2\u0006\u00104\u001a\u00020iR\u001c\u0010l\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050k8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u001f\u0010o\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050n8\u0006\u00a2\u0006\u000c\n\u0004\u0008o\u0010p\u001a\u0004\u0008q\u0010rR\u001a\u0010t\u001a\u0008\u0012\u0004\u0012\u00020\u00070s8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u001a\u0010v\u001a\u0008\u0012\u0004\u0012\u00020\u00070k8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008v\u0010mR\u001d\u0010w\u001a\u0008\u0012\u0004\u0012\u00020\u00070n8\u0006\u00a2\u0006\u000c\n\u0004\u0008w\u0010p\u001a\u0004\u0008x\u0010rR\u0014\u0010z\u001a\u00020y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008z\u0010{R \u0010~\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020}0|0k8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008~\u0010mR$\u0010\u007f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020}0|0n8\u0006\u00a2\u0006\r\n\u0004\u0008\u007f\u0010p\u001a\u0005\u0008\u0080\u0001\u0010rR\u0018\u0010\u0082\u0001\u001a\u00030\u0081\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u001c\u0010\u0084\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00030k8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0084\u0001\u0010mR\u0019\u0010\u0085\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R)\u0010\u0087\u0001\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001\"\u0006\u0008\u008b\u0001\u0010\u008c\u0001R)\u0010\u008d\u0001\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008d\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001\"\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u001c\u0010\u0092\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070k8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0092\u0001\u0010mR!\u0010\u0093\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070k8\u0006\u00a2\u0006\u000f\n\u0005\u0008\u0093\u0001\u0010m\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001R \u0010\u0096\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00030n8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0096\u0001\u0010p\u001a\u0005\u0008\u0097\u0001\u0010rR0\u0010\u0099\u0001\u001a\t\u0018\u00010\u0098\u0001R\u00020\u00008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001\u001a\u0006\u0008\u009b\u0001\u0010\u009c\u0001\"\u0006\u0008\u009d\u0001\u0010\u009e\u0001R,\u0010\u00a0\u0001\u001a\u0005\u0018\u00010\u009f\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001\u001a\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001\"\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00a9\u0001"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
        "Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;",
        "",
        "findSelf",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "voiceRoomInfoModel",
        "",
        "removeSelf",
        "",
        "checkIfEnterTRTCRoomAsAudience",
        "",
        "userId",
        "removeSeatValueOnUserId",
        "getSeatIndexForUserId",
        "isAddd",
        "count",
        "viewerCountChange",
        "roomId",
        "chatGroupId",
        "loadRoomDetailInfoAndAddGroup",
        "seatIndex",
        "addSelfToSeat",
        "takeSeat",
        "leaveSeat",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
        "findUserOnSeat",
        "lockSeat",
        "unLockSeat",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;",
        "gcValueCallback",
        "closeMicro",
        "openMicro",
        "removeSeatValueOnSeatIndex",
        "userOnSeatModel",
        "addUserOnSeat",
        "size",
        "refresh",
        "loadViewerList",
        "microType",
        "changeMicMode",
        "mode",
        "changeRoomPrivateMode",
        "fee",
        "changeRoomFee",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;",
        "getRoomFeeConf",
        "Lcom/guochao/faceshow/aaspring/beans/EventMainActivityDestroy;",
        "event",
        "mainActivityDestroy",
        "onCleared",
        "Lo7/a;",
        "gcimMessage",
        "dispatchGCIMMessage",
        "audioSwitchClick",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;",
        "model",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "call",
        "saveVoiceRoomSetting",
        "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;Lkotlin/jvm/functions/Function2;)V",
        "roleType",
        "setRoleType",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;",
        "userEnterRoom",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;",
        "userLeaveRoom",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;",
        "userSwitchSeat",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;",
        "feeChange",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;",
        "roomModeChanged",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;",
        "updateFirstViewerData",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDReset;",
        "reSet",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;",
        "freeze",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;",
        "unlockSeat",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDCloseMicroMessageModel;",
        "cmdCloseMicro",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDOpenMicroMessageModel;",
        "cmdOpenMicro",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatListMessageModel;",
        "seatListRefresh",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;",
        "roomInfoRefresh",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;",
        "roomInfoChange",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "kickUser",
        "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;Lkotlin/jvm/functions/Function2;)V",
        "checkLeaveRoom",
        "destroyCurrentRoom",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;",
        "checkKickUser",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;",
        "checkAdminUser",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;",
        "checkRemoveAdminUser",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;",
        "checkRemoveMember",
        "Landroidx/lifecycle/MutableLiveData;",
        "_roomInfo",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/LiveData;",
        "roomInfo",
        "Landroidx/lifecycle/LiveData;",
        "getRoomInfo",
        "()Landroidx/lifecycle/LiveData;",
        "Landroidx/lifecycle/Observer;",
        "audioObserver",
        "Landroidx/lifecycle/Observer;",
        "_audioSwitch",
        "audioSwitch",
        "getAudioSwitch",
        "Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;",
        "messageHelper",
        "Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;",
        "",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;",
        "_viewerList",
        "viewerList",
        "getViewerList",
        "Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;",
        "gcimMessageDispatcher",
        "Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;",
        "_viewerCount",
        "isViewerLoad",
        "Z",
        "viewerPage",
        "I",
        "getViewerPage",
        "()I",
        "setViewerPage",
        "(I)V",
        "viewerIsLoading",
        "getViewerIsLoading",
        "()Z",
        "setViewerIsLoading",
        "(Z)V",
        "_viewerHasMore",
        "viewerHasMore",
        "getViewerHasMore",
        "()Landroidx/lifecycle/MutableLiveData;",
        "viewerCount",
        "getViewerCount",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;",
        "addGroupTask",
        "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;",
        "getAddGroupTask",
        "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;",
        "setAddGroupTask",
        "(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;)V",
        "Lkotlinx/coroutines/Job;",
        "lastDetailTask",
        "Lkotlinx/coroutines/Job;",
        "getLastDetailTask",
        "()Lkotlinx/coroutines/Job;",
        "setLastDetailTask",
        "(Lkotlinx/coroutines/Job;)V",
        "<init>",
        "()V",
        "AddGroupTask",
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
.field private final _audioSwitch:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _roomInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _viewerCount:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _viewerHasMore:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _viewerList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private addGroupTask:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final audioObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final audioSwitch:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final gcimMessageDispatcher:Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isViewerLoad:Z

.field private lastDetailTask:Lkotlinx/coroutines/Job;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final messageHelper:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final roomInfo:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewerCount:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewerHasMore:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewerIsLoading:Z

.field private final viewerList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewerPage:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 3
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->roomInfo:Landroidx/lifecycle/LiveData;

    .line 4
    new-instance v0, Lcom/guochao/component/voiceliveroom/viewmodel/a;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/viewmodel/a;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->audioObserver:Landroidx/lifecycle/Observer;

    .line 5
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_audioSwitch:Landroidx/lifecycle/MutableLiveData;

    .line 8
    iput-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->audioSwitch:Landroidx/lifecycle/LiveData;

    .line 9
    new-instance v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;

    invoke-direct {v0, p0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->messageHelper:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;

    .line 10
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerList:Landroidx/lifecycle/MutableLiveData;

    .line 11
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerList:Landroidx/lifecycle/LiveData;

    .line 12
    new-instance v0, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;

    invoke-direct {v0}, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;-><init>()V

    .line 13
    invoke-virtual {v0, p0}, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;->registerDispatcher(Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;)V

    .line 14
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->gcimMessageDispatcher:Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;

    .line 15
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerCount:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerPage:I

    .line 17
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerHasMore:Landroidx/lifecycle/MutableLiveData;

    .line 18
    iput-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerHasMore:Landroidx/lifecycle/MutableLiveData;

    .line 19
    iput-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerCount:Landroidx/lifecycle/LiveData;

    .line 20
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getSeatIndexForUserId(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getSeatIndexForUserId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$get_audioSwitch$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_audioSwitch:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_roomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_viewerCount$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerCount:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_viewerHasMore$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerHasMore:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_viewerList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$isViewerLoad$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->isViewerLoad:Z

    return p0
.end method

.method public static final synthetic access$leaveSeat$s704055971(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->leaveSeat(I)V

    return-void
.end method

.method public static final synthetic access$removeSeatValueOnUserId(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->removeSeatValueOnUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setViewerLoad$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->isViewerLoad:Z

    return-void
.end method

.method private static final audioObserver$lambda-0(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tencent/trtc/TRTCCloud;->muteAllRemoteAudio(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->audioObserver$lambda-0(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic changeMicMode$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->changeMicMode(ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    return-void
.end method

.method public static synthetic changeRoomFee$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->changeRoomFee(ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    return-void
.end method

.method public static synthetic changeRoomPrivateMode$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->changeRoomPrivateMode(ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    return-void
.end method

.method private final checkIfEnterTRTCRoomAsAudience(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;Z)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 3
    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getOnSeat()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const/4 v5, -0x1

    if-eqz p2, :cond_8

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v6, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 5
    check-cast v7, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 6
    invoke-virtual {v7}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v9}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_4
    move-object v9, v3

    :goto_3
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getOnSeat()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, -0x1

    :goto_5
    if-ltz v6, :cond_8

    .line 7
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->leaveSeat(I)V

    .line 8
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 9
    invoke-interface {p2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    :cond_8
    if-eqz v2, :cond_a

    .line 11
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastSeatIndex()I

    move-result p2

    if-ne p2, v5, :cond_a

    .line 12
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    const-string p2, ""

    .line 13
    :cond_9
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getSignInfo()Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p2, p1, v4, v5}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->enterTRTCRoom(Ljava/lang/String;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;ZI)V

    :cond_a
    return-void
.end method

.method static synthetic checkIfEnterTRTCRoomAsAudience$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->checkIfEnterTRTCRoomAsAudience(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;Z)V

    return-void
.end method

.method public static synthetic closeMicro$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 1
    sget-object p1, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {p1}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_2

    move-object p2, v0

    .line 2
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->closeMicro(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    return-void
.end method

.method private final findSelf()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    .line 3
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 4
    invoke-virtual {v6}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v7}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v7, v5

    :goto_1
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_4
    move-object v4, v5

    .line 5
    :goto_2
    check-cast v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v4, :cond_5

    const/4 v0, -0x2

    return v0

    :cond_5
    if-gt v2, v0, :cond_b

    const/4 v3, 0x1

    .line 6
    :goto_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 7
    invoke-virtual {v7}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v7

    if-ne v7, v3, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_6

    goto :goto_5

    :cond_8
    move-object v6, v5

    .line 8
    :goto_5
    check-cast v6, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v6, :cond_a

    .line 9
    invoke-virtual {v6}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getOnSeat()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    if-eq v3, v0, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    :goto_6
    return v3

    :cond_b
    const/4 v0, -0x1

    return v0

    :cond_c
    :goto_7
    return v2
.end method

.method public static synthetic getRoomFeeConf$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getRoomFeeConf(Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    return-void
.end method

.method private final getSeatIndexForUserId(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 3
    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public static synthetic loadViewerList$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x14

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->loadViewerList(IZ)V

    return-void
.end method

.method public static synthetic openMicro$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 1
    sget-object p1, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {p1}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_2

    move-object p2, v0

    .line 2
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->openMicro(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    return-void
.end method

.method private final removeSeatValueOnUserId(Ljava/lang/String;)V
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/4 v3, 0x0

    if-eqz v4, :cond_6

    .line 2
    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 4
    check-cast v9, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 5
    invoke-virtual {v9}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, -0x1

    :goto_1
    if-ltz v8, :cond_4

    .line 6
    sget-object v6, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v6}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v6

    .line 7
    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v3

    :goto_2
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v7, v10}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->enterTRTCRoom(Ljava/lang/String;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;ZI)V

    .line 9
    :cond_3
    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    move-object v3, v5

    .line 10
    :cond_5
    invoke-virtual {v4, v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, -0x1

    const/16 v43, 0x1

    const/16 v44, 0x0

    .line 11
    invoke-static/range {v4 .. v44}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v3

    .line 12
    :cond_6
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final viewerCountChange(ZI)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerCount:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerCount:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, p2, :cond_3

    .line 4
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerCount:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic viewerCountChange$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ZIILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerCountChange(ZI)V

    return-void
.end method


# virtual methods
.method public addSelfToSeat(I)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 4
    invoke-virtual {v6}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v7}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v3

    :goto_0
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_3
    move-object v5, v3

    .line 5
    :goto_1
    check-cast v5, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-nez v5, :cond_7

    .line 6
    new-instance v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 7
    sget-object v5, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v5}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    goto :goto_2

    :cond_4
    move-object v10, v3

    .line 8
    :goto_2
    invoke-virtual {v5}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getNickName()Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    goto :goto_3

    :cond_5
    move-object v11, v3

    :goto_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 9
    invoke-virtual {v5}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserSmallAvatar()Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object v14, v3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0xff64

    const/16 v24, 0x0

    move-object v6, v4

    move/from16 v7, p1

    .line 10
    invoke-direct/range {v6 .. v24}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;-><init>(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const/4 v3, 0x2

    .line 12
    invoke-virtual {v5, v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->setSeatStatus(I)V

    :goto_4
    move-object v3, v2

    .line 13
    :cond_8
    invoke-virtual {v1, v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    .line 14
    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final addUserOnSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V
    .locals 46
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "userOnSeatModel"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v2, :cond_3

    .line 2
    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    .line 4
    :cond_0
    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 6
    :goto_0
    invoke-virtual {v2, v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    .line 7
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v5, :cond_2

    const-string v2, "value"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, -0x1

    const/16 v44, 0x1

    const/16 v45, 0x0

    invoke-static/range {v5 .. v45}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v4

    :cond_2
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    :cond_3
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->checkIfEnterTRTCRoomAsAudience(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;Z)V

    :cond_4
    return-void
.end method

.method public final audioSwitchClick()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_audioSwitch:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final changeMicMode(ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
    .locals 44
    .param p2    # Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const v41, -0x8000001

    const/16 v42, 0x1

    const/16 v43, 0x0

    move/from16 v35, p1

    invoke-static/range {v3 .. v43}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeMicMode$1;

    move/from16 v1, p1

    move-object/from16 v3, p2

    invoke-direct {v7, v0, v1, v3, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeMicMode$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final changeRoomFee(ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
    .locals 6
    .param p2    # Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final changeRoomPrivateMode(ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
    .locals 44
    .param p2    # Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, -0x2001

    const/16 v42, 0x1

    const/16 v43, 0x0

    move/from16 v18, p1

    invoke-static/range {v3 .. v43}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomPrivateMode$1;

    move/from16 v1, p1

    move-object/from16 v3, p2

    invoke-direct {v7, v0, v1, v3, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomPrivateMode$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final checkAdminUser(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;)V
    .locals 3
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;->getRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDAddAdminMessageModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/16 v2, 0xa

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setRoleType(I)V

    move-object v1, v0

    .line 7
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->setLastRoleType(I)V

    :cond_2
    return-void
.end method

.method public final checkKickUser(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;)V
    .locals 7
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;->getRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;->getToUserId()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 4
    :goto_0
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const v5, 0x15f900

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setKickEndTime(Ljava/lang/Long;)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 7
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->leaveSeat(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_6

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;

    .line 11
    invoke-virtual {v5}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDKickMessageModel;->getToUserId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_4
    move-object v4, v1

    .line 12
    :goto_2
    check-cast v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;

    if-eqz v4, :cond_5

    const/4 p1, 0x2

    const/4 v3, 0x0

    .line 13
    invoke-static {p0, v3, v3, p1, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerCountChange$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ZIILjava/lang/Object;)V

    .line 14
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 15
    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v1, p1

    goto :goto_3

    :cond_5
    move-object v1, v2

    .line 16
    :cond_6
    :goto_3
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final checkLeaveRoom()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoleType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$checkLeaveRoom$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$checkLeaveRoom$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final checkRemoveAdminUser(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;)V
    .locals 3
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;->getRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveAdminMessageModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/16 v2, 0x14

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setRoleType(I)V

    move-object v1, v0

    .line 7
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->setLastRoleType(I)V

    :cond_2
    return-void
.end method

.method public final checkRemoveMember(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;)V
    .locals 3
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;->getRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRemoveMemberMessageModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/16 v2, 0x1e

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setRoleType(I)V

    move-object v1, v0

    .line 7
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->setLastRoleType(I)V

    :cond_2
    return-void
.end method

.method public final closeMicro(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final cmdCloseMicro(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDCloseMicroMessageModel;)V
    .locals 7
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDCloseMicroMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 5
    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v5

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDCloseMicroMessageModel;->getIndex()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x4

    .line 6
    invoke-virtual {v4, v5}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->setSeatStatus(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 7
    :cond_3
    invoke-virtual {v0, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    .line 8
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final cmdOpenMicro(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDOpenMicroMessageModel;)V
    .locals 7
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDOpenMicroMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 5
    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v5

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDOpenMicroMessageModel;->getIndex()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x2

    .line 6
    invoke-virtual {v4, v5}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->setSeatStatus(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 7
    :cond_3
    invoke-virtual {v0, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    .line 8
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final destroyCurrentRoom()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->lastDetailTask:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->lastDetailTask:Lkotlinx/coroutines/Job;

    .line 4
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->addGroupTask:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;->cancel()V

    .line 5
    :cond_1
    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->addGroupTask:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;

    .line 6
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerList:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 7
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerCount:Landroidx/lifecycle/MutableLiveData;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    sget-object v5, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$destroyCurrentRoom$1;

    invoke-direct {v8, v0, v1, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$destroyCurrentRoom$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 10
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$destroyCurrentRoom$2;

    invoke-direct {v14, v0, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$destroyCurrentRoom$2;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastSeatIndex()I

    move-result v1

    if-lez v1, :cond_2

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastSeatIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->leaveSeat(I)V

    :cond_2
    const-string v1, ""

    .line 13
    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->setLastRoomId(Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->clearData()V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->isInTRTCRoom()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/trtc/TRTCCloud;->exitRoom()V

    .line 17
    :cond_3
    invoke-virtual {v0, v3}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->setInTRTCRoom(Z)V

    return-void
.end method

.method public dispatchGCIMMessage(Lo7/a;)Z
    .locals 1
    .param p1    # Lo7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->messageHelper:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomGCIMMessageHelper;->dispatchGCIMMessage(Lo7/a;)Z

    move-result p1

    return p1
.end method

.method public final feeChange(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;)V
    .locals 2
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFeeChangeMessageModel;->getFee()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMemberPrice(I)V

    .line 4
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final findUserOnSeat(Ljava/lang/String;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 3
    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getOnSeat()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    move-object v1, v2

    .line 4
    :cond_2
    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    :cond_3
    return-object v1
.end method

.method public final freeze(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;)V
    .locals 2
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDFreeze;->getRoomId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;->leaveSeat$default(Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;IILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    move-object v1, v0

    .line 5
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerList:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getAddGroupTask()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->addGroupTask:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;

    return-object v0
.end method

.method public final getAudioSwitch()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->audioSwitch:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getLastDetailTask()Lkotlinx/coroutines/Job;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->lastDetailTask:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final getRoomFeeConf(Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$getRoomFeeConf$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$getRoomFeeConf$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getRoomInfo()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->roomInfo:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getViewerCount()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerCount:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getViewerHasMore()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerHasMore:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getViewerIsLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerIsLoading:Z

    return v0
.end method

.method public final getViewerList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerList:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getViewerPage()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerPage:I

    return v0
.end method

.method public final kickUser(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$kickUser$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$kickUser$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public leaveSeat(I)V
    .locals 8

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v5, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$leaveSeat$1;

    const/4 v1, 0x0

    invoke-direct {v5, p1, p0, v0, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$leaveSeat$1;-><init>(ILcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final loadRoomDetailInfoAndAddGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "roomId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatGroupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadRoomDetailInfoAndAddGroup$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->lastDetailTask:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final loadViewerList(IZ)V
    .locals 7

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->isViewerLoad:Z

    .line 2
    iput v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerPage:I

    .line 3
    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerList:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 4
    iput-boolean v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerIsLoading:Z

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerHasMore:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerPage:I

    if-ne v1, v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerIsLoading:Z

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 6
    :cond_3
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;IZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final lockSeat(I)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$lockSeat$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$lockSeat$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ILkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final lockSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;)V
    .locals 25
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "model"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 6
    invoke-virtual {v8}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;->getIndex()I

    move-result v9

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_1

    move-object v5, v7

    .line 7
    :cond_3
    check-cast v5, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-nez v5, :cond_4

    .line 8
    new-instance v5, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    move-object v6, v5

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;->getIndex()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0xfffc

    const/16 v24, 0x0

    invoke-direct/range {v6 .. v24}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;-><init>(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 11
    invoke-virtual {v6}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDLockSeatMessageModel;->getIndex()I

    move-result v8

    if-ne v7, v8, :cond_5

    const/4 v7, 0x3

    .line 12
    invoke-virtual {v6, v7}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->setSeatStatus(I)V

    goto :goto_1

    :cond_6
    move-object v5, v4

    .line 13
    :cond_7
    invoke-virtual {v1, v5}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    .line 14
    invoke-virtual {v3, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final mainActivityDestroy(Lcom/guochao/faceshow/aaspring/beans/EventMainActivityDestroy;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/EventMainActivityDestroy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->destroyCurrentRoom()V

    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->onCleared()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_audioSwitch:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->audioObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->gcimMessageDispatcher:Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;

    invoke-virtual {v0, p0}, Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;->unregisterDispatcher(Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;)V

    return-void
.end method

.method public final openMicro(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$openMicro$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$openMicro$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final reSet(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDReset;)V
    .locals 2
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDReset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDReset;->getRoomId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;->leaveSeat$default(Lcom/guochao/component/voiceliveroom/viewmodel/BaseVoiceRoomSeatControllerViewModel;IILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    move-object v1, v0

    .line 5
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final refresh()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeSeatValueOnSeatIndex(I)V
    .locals 44

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/4 v2, 0x0

    if-eqz v3, :cond_7

    .line 2
    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 4
    check-cast v8, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 5
    invoke-virtual {v8}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v8

    move/from16 v10, p1

    if-ne v8, v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, -0x1

    :goto_2
    if-ltz v7, :cond_5

    .line 6
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    invoke-virtual {v5}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v8}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v2

    :goto_3
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v6, v9}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->enterTRTCRoom(Ljava/lang/String;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;ZI)V

    .line 9
    :cond_4
    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    move-object v2, v4

    .line 10
    :cond_6
    invoke-virtual {v3, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, -0x1

    const/16 v42, 0x1

    const/16 v43, 0x0

    .line 11
    invoke-static/range {v3 .. v43}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v2

    .line 12
    :cond_7
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final roomInfoChange(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;)V
    .locals 44
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "model"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getBackImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;->getBackImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;->getTagIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTagIds()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;->getTagIds()Ljava/util/List;

    move-result-object v11

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;->getBackImgUrl()Ljava/lang/String;

    move-result-object v19

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDRoomSettingChangeMessageModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, -0x40b1

    const/16 v42, 0x1

    const/16 v43, 0x0

    .line 8
    invoke-static/range {v3 .. v43}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final roomInfoRefresh(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;)V
    .locals 44
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "model"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;->getRoomId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getBackImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;->getBackImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;->getTagIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTagIds()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;->getNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getNotice()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;->getNotice()Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;->getTagIds()Ljava/util/List;

    move-result-object v11

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;->getBackImgUrl()Ljava/lang/String;

    move-result-object v19

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDVoiceRoomInfoMessageModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, -0x40f1

    const/16 v42, 0x1

    const/16 v43, 0x0

    .line 11
    invoke-static/range {v3 .. v43}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final roomModeChanged(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;)V
    .locals 2
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatModeMessageModel;->getMiroType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroType(I)V

    .line 4
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final saveVoiceRoomSetting(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, p2, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;-><init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final seatListRefresh(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatListMessageModel;)V
    .locals 3
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatListMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatListMessageModel;->getRoomId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSeatListMessageModel;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    .line 5
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final setAddGroupTask(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;)V
    .locals 0
    .param p1    # Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->addGroupTask:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$AddGroupTask;

    return-void
.end method

.method public final setLastDetailTask(Lkotlinx/coroutines/Job;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/Job;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->lastDetailTask:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setRoleType(I)V
    .locals 44

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const v41, -0x4000001

    const/16 v42, 0x1

    const/16 v43, 0x0

    move/from16 v34, p1

    invoke-static/range {v3 .. v43}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->setLastRoleType(I)V

    return-void
.end method

.method public final setViewerIsLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerIsLoading:Z

    return-void
.end method

.method public final setViewerPage(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerPage:I

    return-void
.end method

.method public takeSeat(Ljava/lang/String;I)I
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "roomId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->roomInfo:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoleType()I

    move-result v0

    const/16 v5, 0x14

    if-le v0, v5, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    .line 3
    sget p2, Lcom/guochao/component/liveroom/R$string;->voice_room_tips_micro_type_member_only:I

    const/4 v0, 0x4

    .line 4
    invoke-static {p1, p2, v2, v0, v3}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    return v4

    :cond_1
    if-ne p2, v4, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->findSelf()I

    move-result p2

    :cond_2
    if-ge p2, v1, :cond_3

    return p2

    .line 6
    :cond_3
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;

    invoke-direct {v7, p0, p1, p2, v3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return v1
.end method

.method public final unLockSeat(I)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$unLockSeat$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$unLockSeat$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ILkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final unlockSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;)V
    .locals 28
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "model"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 5
    invoke-virtual {v9}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;->getIndex()I

    move-result v10

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_1

    move-object v5, v7

    .line 6
    :cond_3
    check-cast v5, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-nez v5, :cond_4

    .line 7
    new-instance v5, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    move-object v9, v5

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;->getIndex()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0xfffc

    const/16 v27, 0x0

    invoke-direct/range {v9 .. v27}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;-><init>(IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 10
    invoke-virtual {v6}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getSeatIndex()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUnlockSeatMessageModel;->getIndex()I

    move-result v9

    if-ne v7, v9, :cond_5

    .line 11
    invoke-virtual {v6, v8}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->setSeatStatus(I)V

    goto :goto_1

    :cond_6
    move-object v5, v4

    .line 12
    :cond_7
    invoke-virtual {v1, v5}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    .line 13
    invoke-virtual {v3, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateFirstViewerData(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;)V
    .locals 2
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerCount:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;->getPageResult()Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;->getTotal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDViewerModel;->getPageResult()Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;->getList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final userEnterRoom(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;)V
    .locals 7
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;

    .line 4
    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/session/model/UserSessionModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerList:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->getImg()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserEnterRoomMessageModel;->getDressHead()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-direct {v3, v5, v6, p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 13
    invoke-static {p0, v2, v2, p1, v4}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerCountChange$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ZIILjava/lang/Object;)V

    .line 14
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final userLeaveRoom(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;)V
    .locals 4
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_viewerList:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v2, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$userLeaveRoom$1$1;

    invoke-direct {v2, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$userLeaveRoom$1$1;-><init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserLeaveRoomMessageModel;)V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    const/4 p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    invoke-static {p0, v3, v3, p1, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->viewerCountChange$default(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ZIILjava/lang/Object;)V

    .line 5
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final userSwitchSeat(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;)V
    .locals 7
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->_roomInfo:Landroidx/lifecycle/MutableLiveData;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 5
    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDSwitchSeatMessageModel;->getToIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->setSeatIndex(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 7
    :cond_3
    invoke-virtual {v0, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setMicroList(Ljava/util/List;)V

    .line 8
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
