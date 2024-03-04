.class public Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean$ImageAvatar;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchorForceMatchType:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "anchorForceMatchType"
        }
        value = "s2"
    .end annotation
.end field

.field private anchorForceVoiceStatus:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "anchorForceVoiceStatus"
        }
        value = "s1"
    .end annotation
.end field

.field private avatar:Ljava/lang/String;

.field private countryLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "countryLogo",
            "userCountryFlag"
        }
        value = "countryFlag"
    .end annotation
.end field

.field private fcoin:Ljava/lang/String;

.field private flvUrl:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private isOnLine:I

.field private transient isSelect:Z

.field private jsUrl:Ljava/lang/String;

.field private matchType:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private transient position:I

.field private richList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean$ImageAvatar;",
            ">;"
        }
    .end annotation
.end field

.field private streamId:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private transient userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private voiceStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean$ImageAvatar;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->richList:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->fcoin:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->userId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->voiceStatus:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->matchType:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->nickName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->avatar:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->img:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->position:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->isSelect:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->countryLogo:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->streamId:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->flvUrl:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->jsUrl:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->isOnLine:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->anchorForceVoiceStatus:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->anchorForceMatchType:Z

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

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->img:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadCasterUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->nickName:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getFCoinCount()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->fcoin:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFcoin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->fcoin:Ljava/lang/String;

    return-object v0
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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getIntroductionToPlay()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ld9/n;->k(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsOnLine()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->isOnLine:I

    return v0
.end method

.method public getJsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->jsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLinkMicStreamId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->streamId:Ljava/lang/String;

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

.method public getLiveInfoContent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLivePushIP()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getLiveRoomId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLiveStartTimestamp()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMatchType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->matchType:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->nickName:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;
    .locals 1

    invoke-static {p0}, Ld9/n;->o(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->position:I

    return v0
.end method

.method public bridge synthetic getRestActiveTime()J
    .locals 2

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRichList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean$ImageAvatar;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->richList:Ljava/util/List;

    return-object v0
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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->flvUrl:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->userId:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public bridge synthetic getVipInfo()Lb8/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lp7/g;->c(Lp7/h;)Lb8/g;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->voiceStatus:Ljava/lang/String;

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

.method public isAnchorForceMatchType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->anchorForceMatchType:Z

    return v0
.end method

.method public isAnchorForceVoiceStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->anchorForceVoiceStatus:Z

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

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->isSelect:Z

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

.method public setAnchorForceMatchType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->anchorForceMatchType:Z

    return-void
.end method

.method public setAnchorForceVoiceStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->anchorForceVoiceStatus:Z

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

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->avatar:Ljava/lang/String;

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

.method public setCountryLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->countryLogo:Ljava/lang/String;

    return-void
.end method

.method public setFcoin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->fcoin:Ljava/lang/String;

    return-void
.end method

.method public setFlvUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->flvUrl:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->img:Ljava/lang/String;

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

.method public bridge synthetic setIsFullScreenActivity(I)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->b0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    return-void
.end method

.method public setIsOnLine(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->isOnLine:I

    return-void
.end method

.method public setJsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->jsUrl:Ljava/lang/String;

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

.method public setLivePushIP(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLiveRoomId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLiveStartTimestamp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setMatchType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->matchType:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setOnlineNum(I)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->j0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

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

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->position:I

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

.method public setRichList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean$ImageAvatar;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->richList:Ljava/util/List;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->isSelect:Z

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->streamId:Ljava/lang/String;

    return-void
.end method

.method public setStreamUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->flvUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setUserType(I)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->p0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setVoiceStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->voiceStatus:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->richList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->fcoin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->voiceStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->matchType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->avatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->img:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->isSelect:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->countryLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->streamId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->flvUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->jsUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->isOnLine:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->anchorForceVoiceStatus:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->anchorForceMatchType:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
