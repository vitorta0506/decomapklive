.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PkUserInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private img:Ljava/lang/String;

.field private isAttenion:Ljava/lang/String;

.field private jsUrl:Ljava/lang/String;

.field private liveId:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private pkAudienceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private pkFcoin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "pkFcion"
        }
        value = "pkFcoin"
    .end annotation
.end field

.field private pkWinOrFail:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkWinOrFail:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->nickName:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkAudienceList:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->isAttenion:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->logo:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkFcoin:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->jsUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->userId:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->liveId:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->img:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->streamId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic buildRoomInfo()Lcom/guochao/user/RoomInfo;
    .locals 1

    invoke-static {p0}, Ld9/n;->a(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/user/RoomInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic canMakeAudioCall()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->b(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic canMakeVideoCall()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->c(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic canMakeVideoOrAudioCall()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->d(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public canRequestLinkMic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getAdmitDefeatNum()I
    .locals 1

    invoke-static {p0}, Ld9/n;->e(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)I

    move-result v0

    return v0
.end method

.method public getAge()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getApplyPkState()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->f(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getArenaDurationTime()J
    .locals 2

    invoke-static {p0}, Ld9/n;->g(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getArenaPunishmentDurationTime()J
    .locals 2

    invoke-static {p0}, Ld9/n;->h(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->img:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getBigGiftBeans()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ld9/n;->i(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBroadCasterUserId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBroadCasterUserName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChatGroupId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getCountry()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ld9/n;->j(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getFCoinCount()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkFcoin:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getGameSeatCurrentPlayerPosition()I
    .locals 1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)I

    move-result v0

    return v0
.end method

.method public getGender()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->img:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getIntroductionToPlay()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ld9/n;->k(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsAttenion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->isAttenion:Ljava/lang/String;

    return-object v0
.end method

.method public getJsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->jsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLinkMicStreamId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getStreamId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLiveAddress()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ld9/n;->l(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiveCoverImg()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveInfoContent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLivePushIP()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLiveRoomId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveStartTimestamp()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMatchType()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ld9/n;->m(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultiLiveRoom()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getOnlineNum()I
    .locals 1

    invoke-static {p0}, Ld9/n;->n(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)I

    move-result v0

    return v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPkAudienceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkAudienceList:Ljava/util/List;

    return-object v0
.end method

.method public getPkFcoin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkFcoin:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;
    .locals 1

    invoke-static {p0}, Ld9/n;->o(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    return-object v0
.end method

.method public getPkWinOrFail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkWinOrFail:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getRestActiveTime()J
    .locals 2

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->streamId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->jsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->jsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->streamId:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->jsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getStream_id()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ld9/n;->r(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserNickName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic getVipInfo()Lb8/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lp7/g;->c(Lp7/h;)Lb8/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceStatus()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ld9/n;->t(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isActive()Z
    .locals 1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->d(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)Z

    move-result v0

    return v0
.end method

.method public isAdministrator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isAnchorForceMatchType()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->u(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isAnchorForceVoiceStatus()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->v(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBanTalk()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->w(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public isBroadCaster()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->x(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFreeLinkMic()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->y(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFullScreenActivity()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->z(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInPkMode()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->A(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInPkPunishmentTime()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->B(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public isKickedOut()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isLaunchFromFloatWindow()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->C(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLinkMicEnabled()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->D(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMultiLiveRoom()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->E(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

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

.method public bridge synthetic isPkWaiting()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->H(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPrivateLiveRoom()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->I(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isShowedFloatFromLiveRoom()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->J(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isVoiceRoom()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->K(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdmitDefeatNum(I)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->L(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    return-void
.end method

.method public bridge synthetic setAnchorForceMatchType(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->M(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setAnchorForceVoiceStatus(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->N(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setApplyPkState(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->O(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setArenaDurationTime(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld9/n;->P(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;J)V

    return-void
.end method

.method public bridge synthetic setArenaPunishmentDurationTime(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld9/n;->Q(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;J)V

    return-void
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

.method public setChatGroupId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setCountry(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->U(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setFocused(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->V(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setFreeLinkMic(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->W(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

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

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->img:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setInPkMode(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->Y(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setInPkPunishmentTime(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->Z(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setIntroductionToPlay(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->a0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ljava/util/List;)V

    return-void
.end method

.method public setIsAttenion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->isAttenion:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setIsFullScreenActivity(I)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->b0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    return-void
.end method

.method public setJsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->jsUrl:Ljava/lang/String;

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

.method public bridge synthetic setLinkMicEnabled(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->e0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setLinkMicStreamId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->f0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ljava/lang/String;)V

    return-void
.end method

.method public setLiveCoverImg(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setLivePushIP(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLiveRoomId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setLiveStartTimestamp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setMatchType(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->g0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setMultiLiveRoom(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->h0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setMute(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->i0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setOnlineNum(I)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->j0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    return-void
.end method

.method public setPkAudienceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkAudienceList:Ljava/util/List;

    return-void
.end method

.method public setPkFcoin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkFcoin:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setPkModeWhenFloatWindow(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->k0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public bridge synthetic setPkUserInfo(Lcom/guochao/faceshow/aaspring/beans/IM_User;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->l0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/aaspring/beans/IM_User;)V

    return-void
.end method

.method public bridge synthetic setPkWaiting(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->m0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public setPkWinOrFail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkWinOrFail:Ljava/lang/String;

    return-void
.end method

.method public setPrivateType(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setRequestLinkMicEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->streamId:Ljava/lang/String;

    return-void
.end method

.method public setStreamUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->jsUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setUserType(I)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->p0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    return-void
.end method

.method public bridge synthetic setVoiceStatus(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->q0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkWinOrFail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkAudienceList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->isAttenion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->logo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->pkFcoin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->jsUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->liveId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->img:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->streamId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
