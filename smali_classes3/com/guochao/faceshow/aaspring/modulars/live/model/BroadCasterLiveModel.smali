.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;
.super Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private admitDefeatNum:I

.field private anchorForceMatchType:Z

.field private anchorForceVoiceStatus:Z

.field private applyPkState:Z

.field private arenaDurationTime:J

.field private arenaPunishmentDurationTime:J

.field private city:Ljava/lang/String;

.field private introductionToPlay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isMusicActivity:I

.field private isPrivateRoom:Z

.field private linkMicStreamId:Ljava/lang/String;

.field private liveCountry:Ljava/lang/String;

.field private liveId:Ljava/lang/String;

.field private liveImg:Ljava/lang/String;

.field private liveTitle:Ljava/lang/String;

.field private mFreeLinkMic:Z

.field private mGroupId:Ljava/lang/String;

.field private mLinkMicEnabled:Z

.field private mLivePushIp:Ljava/lang/String;

.field private mMultiLiveRoom:Z

.field private mPassword:Ljava/lang/String;

.field private mPkMode:Z

.field mUserBean:Lcom/guochao/faceshow/bean/UserBean;

.field private matchType:Ljava/lang/String;

.field private micEnabled:Z

.field private onlineNum:I

.field private pkUser:Lcom/guochao/faceshow/aaspring/beans/IM_User;

.field private pkWaiting:Z

.field private punishment:Z

.field private pushUrl:Ljava/lang/String;

.field private screenShotSwitch:I

.field private shareUrl:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private videoOpen:I

.field private videoSwitch:I

.field private voiceStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mLinkMicEnabled:Z

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mFreeLinkMic:Z

    .line 11
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->videoSwitch:I

    .line 12
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->videoOpen:I

    .line 13
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->screenShotSwitch:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 14
    invoke-direct {p0, p1}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mLinkMicEnabled:Z

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mFreeLinkMic:Z

    .line 17
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->videoSwitch:I

    .line 18
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->videoOpen:I

    .line 19
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->screenShotSwitch:I

    .line 20
    const-class v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveId:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mGroupId:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->pushUrl:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mPassword:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveImg:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mLinkMicEnabled:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mMultiLiveRoom:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->isPrivateRoom:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->address:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->shareUrl:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->startTime:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mFreeLinkMic:Z

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mLivePushIp:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->linkMicStreamId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->voiceStatus:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->matchType:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->anchorForceVoiceStatus:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->anchorForceMatchType:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->applyPkState:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mPkMode:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->arenaPunishmentDurationTime:J

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->arenaDurationTime:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->admitDefeatNum:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->introductionToPlay:Ljava/util/List;

    .line 45
    const-class v2, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->pkUser:Lcom/guochao/faceshow/aaspring/beans/IM_User;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->pkWaiting:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->punishment:Z

    return-void
.end method

.method public constructor <init>(Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mLinkMicEnabled:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mFreeLinkMic:Z

    .line 4
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->videoSwitch:I

    .line 5
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->videoOpen:I

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->screenShotSwitch:I

    .line 7
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    return-void
.end method


# virtual methods
.method public bridge synthetic buildRoomInfo()Lcom/guochao/user/RoomInfo;
    .locals 1

    invoke-static {p0}, Ld9/n;->a(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/user/RoomInfo;

    move-result-object v0

    return-object v0
.end method

.method public canMakeAudioCall()Z
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->canMakeVideoCall()Z

    move-result v0

    return v0
.end method

.method public canMakeVideoCall()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->videoOpen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic canMakeVideoOrAudioCall()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->d(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public canRequestLinkMic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mLinkMicEnabled:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdmitDefeatNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->admitDefeatNum:I

    return v0
.end method

.method public getAge()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getAge()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getApplyPkState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->applyPkState:Z

    return v0
.end method

.method public getArenaDurationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->arenaDurationTime:J

    return-wide v0
.end method

.method public getArenaPunishmentDurationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->arenaPunishmentDurationTime:J

    return-wide v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    :goto_0
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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadCasterUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChatGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFCoinCount()I
    .locals 1

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getGender()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIntroductionToPlay()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->introductionToPlay:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->introductionToPlay:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->introductionToPlay:Ljava/util/List;

    return-object v0
.end method

.method public getIsMusicActivity()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getBlackShow()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->isMusicActivity:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    :goto_0
    return v0
.end method

.method public getLinkMicStreamId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->linkMicStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveAddress()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->city:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveCoverImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveImg:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveInfoContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLivePushIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mLivePushIp:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveRoomId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveStartTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveTitle:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->matchType:Ljava/lang/String;

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

.method public getOnlineNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->onlineNum:I

    return v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getPendantUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->pkUser:Lcom/guochao/faceshow/aaspring/beans/IM_User;

    return-object v0
.end method

.method public bridge synthetic getRestActiveTime()J
    .locals 2

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getScreenShotSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->screenShotSwitch:I

    return v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getStatus()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ld9/n;->p(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStreamId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ld9/n;->q(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->pushUrl:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getStream_id()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ld9/n;->r(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getVideoOpen()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->videoOpen:I

    return v0
.end method

.method public getVideoSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->videoSwitch:I

    return v0
.end method

.method public getVipInfo()Lb8/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getVipInfo()Lb8/g;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->voiceStatus:Ljava/lang/String;

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

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->anchorForceMatchType:Z

    return v0
.end method

.method public isAnchorForceVoiceStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->anchorForceVoiceStatus:Z

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

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->x(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public isFreeLinkMic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mFreeLinkMic:Z

    return v0
.end method

.method public isFullScreenActivity()Z
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getBlackShow()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->isMusicActivity:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInPkMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mPkMode:Z

    return v0
.end method

.method public isInPkPunishmentTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->punishment:Z

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

.method public isLinkMicEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->micEnabled:Z

    return v0
.end method

.method public isMultiLiveRoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mMultiLiveRoom:Z

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

.method public isPkWaiting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->pkWaiting:Z

    return v0
.end method

.method public isPrivateLiveRoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->isPrivateRoom:Z

    return v0
.end method

.method public bridge synthetic isShowedFloatFromLiveRoom()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->J(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->address:Ljava/lang/String;

    return-void
.end method

.method public setAdmitDefeatNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->admitDefeatNum:I

    return-void
.end method

.method public setAnchorForceMatchType(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnchorForceMatchType=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnchorForceMatchTyp+BroadCasterLiveModel"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->anchorForceMatchType:Z

    return-void
.end method

.method public setAnchorForceVoiceStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->anchorForceVoiceStatus:Z

    return-void
.end method

.method public setApplyPkState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->applyPkState:Z

    return-void
.end method

.method public setArenaDurationTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->arenaDurationTime:J

    return-void
.end method

.method public setArenaPunishmentDurationTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->arenaPunishmentDurationTime:J

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->setLiveCountry(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setFocused(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->V(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public setFreeLinkMic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mFreeLinkMic:Z

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

.method public setInPkMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mPkMode:Z

    return-void
.end method

.method public setInPkPunishmentTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->punishment:Z

    return-void
.end method

.method public setIntroductionToPlay(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->introductionToPlay:Ljava/util/List;

    return-void
.end method

.method public setIsFullScreenActivity(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->isMusicActivity:I

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

.method public setLinkMicEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->micEnabled:Z

    return-void
.end method

.method public setLinkMicStreamId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->linkMicStreamId:Ljava/lang/String;

    return-void
.end method

.method public setLiveCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveCountry:Ljava/lang/String;

    return-void
.end method

.method public setLiveCoverImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveImg:Ljava/lang/String;

    return-void
.end method

.method public setLivePushIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mLivePushIp:Ljava/lang/String;

    return-void
.end method

.method public setLiveRoomId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setLiveStartTimestamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setLiveTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveTitle:Ljava/lang/String;

    return-void
.end method

.method public setMatchType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->matchType:Ljava/lang/String;

    return-void
.end method

.method public setMultiLiveRoom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mMultiLiveRoom:Z

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mLinkMicEnabled:Z

    return-void
.end method

.method public bridge synthetic setMute(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->i0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public setOnlineNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->onlineNum:I

    return-void
.end method

.method public setPendantUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/bean/UserBean;->setPendantUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPkModeWhenFloatWindow(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->k0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public setPkUserInfo(Lcom/guochao/faceshow/aaspring/beans/IM_User;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->pkUser:Lcom/guochao/faceshow/aaspring/beans/IM_User;

    return-void
.end method

.method public setPkWaiting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->pkWaiting:Z

    return-void
.end method

.method public setPrivateRoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->isPrivateRoom:Z

    return-void
.end method

.method public setPrivateType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->isPrivateRoom:Z

    return-void
.end method

.method public setRequestLinkMicEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mLinkMicEnabled:Z

    return-void
.end method

.method public setScreenShotSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->screenShotSwitch:I

    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->shareUrl:Ljava/lang/String;

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

.method public setStreamUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->pushUrl:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setUserType(I)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->p0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setVideoOpen(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->videoOpen:I

    return-void
.end method

.method public setVideoSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->videoSwitch:I

    return-void
.end method

.method public setVoiceStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->voiceStatus:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mUserBean:Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->pushUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->liveImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mLinkMicEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mMultiLiveRoom:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->isPrivateRoom:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mFreeLinkMic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mLivePushIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->linkMicStreamId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->voiceStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->matchType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->anchorForceVoiceStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 20
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->anchorForceMatchType:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 21
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->applyPkState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 22
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->mPkMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 23
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->arenaPunishmentDurationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->arenaDurationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 25
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->admitDefeatNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->introductionToPlay:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->pkUser:Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 28
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->pkWaiting:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 29
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;->punishment:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
