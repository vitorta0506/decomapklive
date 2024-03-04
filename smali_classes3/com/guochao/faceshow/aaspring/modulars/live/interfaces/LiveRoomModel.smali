.class public interface abstract Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;
.implements Lp7/i;
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADMINISTRATOR:I = 0x1

.field public static final AUDIENCE:I = 0x2

.field public static final BROADCASTER:I = 0x0

.field public static final SUB_BROADCASTER:I = -0x1

.field public static final SUPER_MANAGER:I = 0x3


# virtual methods
.method public abstract buildRoomInfo()Lcom/guochao/user/RoomInfo;
.end method

.method public abstract canMakeAudioCall()Z
.end method

.method public abstract canMakeVideoCall()Z
.end method

.method public abstract canMakeVideoOrAudioCall()Z
.end method

.method public abstract canRequestLinkMic()Z
.end method

.method public abstract getAdmitDefeatNum()I
.end method

.method public abstract getApplyPkState()Z
.end method

.method public abstract getBroadCasterUserId()Ljava/lang/String;
.end method

.method public abstract getBroadCasterUserName()Ljava/lang/String;
.end method

.method public abstract getChatGroupId()Ljava/lang/String;
.end method

.method public abstract getCountry()Ljava/lang/String;
.end method

.method public abstract getFCoinCount()I
.end method

.method public abstract getIntroductionToPlay()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLinkMicStreamId()Ljava/lang/String;
.end method

.method public abstract getLiveAddress()Ljava/lang/String;
.end method

.method public abstract getLiveCoverImg()Ljava/lang/String;
.end method

.method public abstract getLiveInfoContent()Ljava/lang/String;
.end method

.method public abstract getLivePushIP()Ljava/lang/String;
.end method

.method public abstract getLiveRoomId()Ljava/lang/String;
.end method

.method public abstract getLiveStartTimestamp()Ljava/lang/String;
.end method

.method public abstract getMatchType()Ljava/lang/String;
.end method

.method public abstract getMultiLiveRoom()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnlineNum()I
.end method

.method public abstract getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;
.end method

.method public abstract getShareUrl()Ljava/lang/String;
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public abstract getStreamId()Ljava/lang/String;
.end method

.method public abstract getStreamUrl()Ljava/lang/String;
.end method

.method public abstract getUserNickName()Ljava/lang/String;
.end method

.method public abstract getUserType()I
.end method

.method public bridge abstract synthetic getVipInfo()Lb8/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getVoiceStatus()Ljava/lang/String;
.end method

.method public abstract isAdministrator()Z
.end method

.method public abstract isAnchorForceMatchType()Z
.end method

.method public abstract isAnchorForceVoiceStatus()Z
.end method

.method public abstract isBroadCaster()Z
.end method

.method public abstract isFocused()Z
.end method

.method public abstract isFreeLinkMic()Z
.end method

.method public abstract isFullScreenActivity()Z
.end method

.method public abstract isInPkMode()Z
.end method

.method public abstract isInPkPunishmentTime()Z
.end method

.method public abstract isKickedOut()Z
.end method

.method public abstract isLaunchFromFloatWindow()Z
.end method

.method public abstract isMultiLiveRoom()Z
.end method

.method public abstract isMute()Z
.end method

.method public abstract isPkModeWhenFloatWindow()Z
.end method

.method public abstract isPkWaiting()Z
.end method

.method public abstract isPrivateLiveRoom()Z
.end method

.method public abstract isVoiceRoom()Z
.end method

.method public abstract setAdmitDefeatNum(I)V
.end method

.method public abstract setAnchorForceMatchType(Z)V
.end method

.method public abstract setAnchorForceVoiceStatus(Z)V
.end method

.method public abstract setApplyPkState(Z)V
.end method

.method public abstract setArenaDurationTime(J)V
.end method

.method public abstract setArenaPunishmentDurationTime(J)V
.end method

.method public abstract setBanTalk(Z)V
.end method

.method public abstract setBroadCasterUserName(Ljava/lang/String;)V
.end method

.method public abstract setChatGroupId(Ljava/lang/String;)V
.end method

.method public abstract setFocused(Z)V
.end method

.method public abstract setFreeLinkMic(Z)V
.end method

.method public abstract setInPkMode(Z)V
.end method

.method public abstract setInPkPunishmentTime(Z)V
.end method

.method public abstract setIntroductionToPlay(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setIsFullScreenActivity(I)V
.end method

.method public abstract setKickedOut(Z)V
.end method

.method public abstract setLaunchFromFloatWindow(Z)V
.end method

.method public abstract setLinkMicEnabled(Z)V
.end method

.method public abstract setLivePushIP(Ljava/lang/String;)V
.end method

.method public abstract setLiveRoomId(Ljava/lang/String;)V
.end method

.method public abstract setMatchType(Ljava/lang/String;)V
.end method

.method public abstract setMultiLiveRoom(Z)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setOnlineNum(I)V
.end method

.method public abstract setPkModeWhenFloatWindow(Z)V
.end method

.method public abstract setPkUserInfo(Lcom/guochao/faceshow/aaspring/beans/IM_User;)V
.end method

.method public abstract setPkWaiting(Z)V
.end method

.method public abstract setPrivateType(Ljava/lang/String;)V
.end method

.method public abstract setRequestLinkMicEnabled(Z)V
.end method

.method public abstract setShareUrl(Ljava/lang/String;)V
.end method

.method public abstract setShowedFloatFromLiveRoom(Z)V
.end method

.method public abstract setStatus(Ljava/lang/String;)V
.end method

.method public abstract setStreamUrl(Ljava/lang/String;)V
.end method

.method public abstract setUserType(I)V
.end method

.method public abstract setVoiceStatus(Ljava/lang/String;)V
.end method
