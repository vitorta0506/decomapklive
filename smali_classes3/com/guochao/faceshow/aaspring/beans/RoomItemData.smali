.class public Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
.super Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
.source "SourceFile"

# interfaces
.implements Lp7/h;
.implements Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;
.implements Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;
.implements Lcom/guochao/faceshow/aaspring/base/model/GCUser;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accelerateURL:Ljava/lang/String;

.field private anchorForceMatchType:Z

.field private anchorForceVoiceStatus:Z

.field private applyPkState:Z

.field private arenaDurationTime:J

.field private arenaPunishmentDurationTime:J

.field private audienceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private avatar:Ljava/lang/String;

.field private backgroundImg:Ljava/lang/String;

.field private banTalk:Ljava/lang/String;

.field private bigGiftBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;",
            ">;"
        }
    .end annotation
.end field

.field private blackFlag:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private code:I

.field private country:Ljava/lang/String;

.field private countryId:Ljava/lang/String;

.field private fansNum:Ljava/lang/String;

.field private fcoin:Ljava/lang/String;

.field private flvUrl:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private infoName:Ljava/lang/String;

.field private isAdmin:Ljava/lang/String;

.field private isAttention:Ljava/lang/String;

.field private isBack:I

.field private isKick:I

.field private isLivePk:Ljava/lang/String;

.field private isLockMicrophone:Ljava/lang/String;

.field private isLong:Ljava/lang/String;

.field private isMusicActivity:I

.field private kickAdminType:Ljava/lang/String;

.field private lastRoomItem:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private launchFromFloatWindow:Z

.field private level:I

.field private likeNum:Ljava/lang/String;

.field private liveId:Ljava/lang/String;

.field private liveImg:Ljava/lang/String;

.field private liveLabel:Ljava/lang/String;

.field private liveType:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private mLivePushIp:Ljava/lang/String;

.field private mNeedPlayInItem:Z

.field private mShowGiftDialog:I

.field private mShowedFloatFromLiveRoom:Z

.field private matchType:Ljava/lang/String;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;>;"
        }
    .end annotation
.end field

.field private micEnabled:Z

.field private microphoneMode:Ljava/lang/String;

.field private mute:Z

.field private nickName:Ljava/lang/String;

.field private onlineNum:I

.field private pkModeWhenFloatWindow:Z

.field private privateType:Ljava/lang/String;

.field private pushers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation
.end field

.field private refer:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private screenShotSwitch:I

.field private shareUrl:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private stream_id:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private videoOpen:I

.field private videoSwitch:I

.field private voiceRoomInfoModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private voiceStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;-><init>()V

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveId:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->videoSwitch:I

    .line 71
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->videoOpen:I

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->screenShotSwitch:I

    const-string v0, "0"

    .line 73
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->status:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;-><init>(Landroid/os/Parcel;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->videoSwitch:I

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->videoOpen:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->screenShotSwitch:I

    const-string v2, "0"

    .line 7
    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->status:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->img:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->onlineNum:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->avatar:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveId:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isKick:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->stream_id:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userId:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveImg:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->shareUrl:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->nickName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->infoName:Ljava/lang/String;

    .line 19
    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->pushers:Ljava/util/List;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->accelerateURL:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isAdmin:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->likeNum:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLong:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->backgroundImg:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mute:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->country:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->flvUrl:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->banTalk:Ljava/lang/String;

    .line 29
    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->audienceList:Ljava/util/List;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->matchType:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->voiceStatus:Ljava/lang/String;

    .line 32
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->bigGiftBeans:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->level:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMusicActivity:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isBack:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->code:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->launchFromFloatWindow:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->pkModeWhenFloatWindow:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mShowedFloatFromLiveRoom:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mNeedPlayInItem:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->blackFlag:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->city:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->anchorForceVoiceStatus:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->anchorForceMatchType:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->applyPkState:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->arenaPunishmentDurationTime:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->arenaDurationTime:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLivePk:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveLabel:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->kickAdminType:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    :cond_8
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->micEnabled:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->countryId:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveType:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->privateType:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->logo:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->microphoneMode:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLockMicrophone:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->fansNum:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isAttention:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->fcoin:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->status:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->startTime:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mLivePushIp:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->groupId:Ljava/lang/String;

    .line 65
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->screenShotSwitch:I

    return-void
.end method


# virtual methods
.method public buildRoomInfo()Lcom/guochao/user/RoomInfo;
    .locals 7

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v3, v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 5
    new-instance v0, Lcom/guochao/user/RoomInfo;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStreamId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->refer:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/guochao/user/RoomInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public canMakeAudioCall()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->videoOpen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->videoSwitch:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public canMakeVideoCall()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->videoOpen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->videoSwitch:I

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
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLockMicrophone:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveId:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
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

.method public getApplyPkState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->applyPkState:Z

    return v0
.end method

.method public getArenaDurationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->arenaDurationTime:J

    return-wide v0
.end method

.method public getArenaPunishmentDurationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->arenaPunishmentDurationTime:J

    return-wide v0
.end method

.method public getAudienceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->audienceList:Ljava/util/List;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->backgroundImg:Ljava/lang/String;

    return-object v0
.end method

.method public getBigGiftBeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->bigGiftBeans:Ljava/util/List;

    return-object v0
.end method

.method public getBlackFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->blackFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadCasterUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadCasterUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getChatGroupId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->groupId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveId:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->code:I

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->countryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryLogo()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLogo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getDressHead()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFCoinCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFansNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->fansNum:Ljava/lang/String;

    return-object v0
.end method

.method public getFcoin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->fcoin:Ljava/lang/String;

    return-object v0
.end method

.method public getFlvUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStreamUrl()Ljava/lang/String;

    move-result-object v0

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

.method public getGroupId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getChatGroupId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->infoName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getIntroductionToPlay()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ld9/n;->k(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsAttention()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isAttention:Ljava/lang/String;

    return-object v0
.end method

.method public getIsBack()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isBack:I

    return v0
.end method

.method public getIsKick()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isKick:I

    return v0
.end method

.method public getIsLivePk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLivePk:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLockMicrophone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLockMicrophone:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLong()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLong:Ljava/lang/String;

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
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMusicActivity:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemType()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getIsLong()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMultiLiveRoom()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getKickAdminType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->kickAdminType:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRoomItem()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->lastRoomItem:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->level:I

    return v0
.end method

.method public getLikeNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->likeNum:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkMicStreamId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getStream_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiveAddress()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->city:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveCoverImg()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getCoverImgUrl()Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveImg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->groupId:Ljava/lang/String;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveId:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveImg:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveInfoContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->infoName:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLivePushIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mLivePushIp:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveRoomId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiveStartTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveType:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->logo:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->matchType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getMicrophoneMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->microphoneMode:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiLiveRoom()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getPushers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getMvpUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->onlineNum:I

    return v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPkUserInfo()Lcom/guochao/faceshow/aaspring/beans/IM_User;
    .locals 1

    invoke-static {p0}, Ld9/n;->o(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/beans/IM_User;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPreferentialLang()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/beans/b;->d(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->privateType:Ljava/lang/String;

    return-object v0
.end method

.method public getPushers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->pushers:Ljava/util/List;

    return-object v0
.end method

.method public getRefer()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->refer:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getRestActiveTime()J
    .locals 2

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRoomID()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenShotSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->screenShotSwitch:I

    return v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->status:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->flvUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;->getStreamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStream_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->stream_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getIsLiveManager()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isAdministrator()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getVideoOpen()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->videoOpen:I

    return v0
.end method

.method public getVideoSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->videoSwitch:I

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

.method public getVipLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceRoomInfoModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->voiceRoomInfoModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    return-object v0
.end method

.method public getVoiceStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->voiceStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getLiveId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isActive()Z
    .locals 1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/q;->d(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGamePlayer;)Z

    move-result v0

    return v0
.end method

.method public isAdministrator()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoomAdministrator()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isAdmin:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAnchorForceMatchType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->anchorForceMatchType:Z

    return v0
.end method

.method public isAnchorForceVoiceStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->anchorForceVoiceStatus:Z

    return v0
.end method

.method public isBanTalk()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->banTalk:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBroadCaster()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userId:Ljava/lang/String;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFocused()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isAttention:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFreeLinkMic()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->microphoneMode:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

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

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMusicActivity:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInPkMode()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLivePk:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isKick:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLaunchFromFloatWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->launchFromFloatWindow:Z

    return v0
.end method

.method public isLinkMicEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->micEnabled:Z

    return v0
.end method

.method public isMultiLiveRoom()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveType:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mute:Z

    return v0
.end method

.method public isNeedPlayInItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mNeedPlayInItem:Z

    return v0
.end method

.method public isPkModeWhenFloatWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->pkModeWhenFloatWindow:Z

    return v0
.end method

.method public bridge synthetic isPkWaiting()Z
    .locals 1

    invoke-static {p0}, Ld9/n;->H(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Z

    move-result v0

    return v0
.end method

.method public isPrivateLiveRoom()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->privateType:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShowGiftDialog()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mShowGiftDialog:I

    return v0
.end method

.method public isShowedFloatFromLiveRoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mShowedFloatFromLiveRoom:Z

    return v0
.end method

.method public bridge synthetic setAdmitDefeatNum(I)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->L(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V

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

    const-string v1, "AnchorForceMatchTyp+RoomItemData"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->anchorForceMatchType:Z

    return-void
.end method

.method public setAnchorForceVoiceStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->anchorForceVoiceStatus:Z

    return-void
.end method

.method public setApplyPkState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->applyPkState:Z

    return-void
.end method

.method public setArenaDurationTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->arenaDurationTime:J

    return-void
.end method

.method public setArenaPunishmentDurationTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->arenaPunishmentDurationTime:J

    return-void
.end method

.method public setAudienceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->audienceList:Ljava/util/List;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->backgroundImg:Ljava/lang/String;

    return-void
.end method

.method public setBanTalk(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->banTalk:Ljava/lang/String;

    return-void
.end method

.method public setBigGiftBeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->bigGiftBeans:Ljava/util/List;

    return-void
.end method

.method public setBlackFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->blackFlag:Ljava/lang/String;

    return-void
.end method

.method public setBroadCasterUserName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setNickName(Ljava/lang/String;)V

    return-void
.end method

.method public setChatGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->city:Ljava/lang/String;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->code:I

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->country:Ljava/lang/String;

    return-void
.end method

.method public setCountryId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->countryId:Ljava/lang/String;

    return-void
.end method

.method public setFansNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->fansNum:Ljava/lang/String;

    return-void
.end method

.method public setFcoin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->fcoin:Ljava/lang/String;

    return-void
.end method

.method public setFlvUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->flvUrl:Ljava/lang/String;

    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isAttention:Ljava/lang/String;

    return-void
.end method

.method public setFreeLinkMic(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "2"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->microphoneMode:Ljava/lang/String;

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

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->img:Ljava/lang/String;

    return-void
.end method

.method public setInPkMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 1
    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLivePk:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setPkModeWhenFloatWindow(Z)V

    return-void
.end method

.method public bridge synthetic setInPkPunishmentTime(Z)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->Z(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)V

    return-void
.end method

.method public setInfoName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->infoName:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setIntroductionToPlay(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->a0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ljava/util/List;)V

    return-void
.end method

.method public setIsAttention(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isAttention:Ljava/lang/String;

    return-void
.end method

.method public setIsBack(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isBack:I

    return-void
.end method

.method public setIsFullScreenActivity(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMusicActivity:I

    return-void
.end method

.method public setIsKick(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isKick:I

    return-void
.end method

.method public setIsLivePk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLivePk:Ljava/lang/String;

    return-void
.end method

.method public setIsLockMicrophone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLockMicrophone:Ljava/lang/String;

    return-void
.end method

.method public setIsLong(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLong:Ljava/lang/String;

    return-void
.end method

.method public setIsMusicActivity(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMusicActivity:I

    return-void
.end method

.method public setKickAdminType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->kickAdminType:Ljava/lang/String;

    return-void
.end method

.method public setKickedOut(Z)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isKick:I

    return-void
.end method

.method public setLastRoomItem(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->lastRoomItem:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    return-void
.end method

.method public setLaunchFromFloatWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->launchFromFloatWindow:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->level:I

    return-void
.end method

.method public setLikeNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->likeNum:Ljava/lang/String;

    return-void
.end method

.method public setLinkMicEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->micEnabled:Z

    return-void
.end method

.method public bridge synthetic setLinkMicStreamId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ld9/n;->f0(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Ljava/lang/String;)V

    return-void
.end method

.method public setLiveCoverImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveImg:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setLiveImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveImg:Ljava/lang/String;

    return-void
.end method

.method public setLiveLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveLabel:Ljava/lang/String;

    return-void
.end method

.method public setLivePushIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mLivePushIp:Ljava/lang/String;

    return-void
.end method

.method public setLiveRoomId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    return-void
.end method

.method public setLiveStartTimestamp(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setStartTime(Ljava/lang/String;)V

    return-void
.end method

.method public setLiveType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveType:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->logo:Ljava/lang/String;

    return-void
.end method

.method public setMatchType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->matchType:Ljava/lang/String;

    return-void
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->messages:Ljava/util/List;

    return-void
.end method

.method public setMicrophoneMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->microphoneMode:Ljava/lang/String;

    return-void
.end method

.method public setMultiLiveRoom(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "2"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveType:Ljava/lang/String;

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mute:Z

    return-void
.end method

.method public setMvpUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setNeedPlayInItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mNeedPlayInItem:Z

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOnlineNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->onlineNum:I

    return-void
.end method

.method public setPkModeWhenFloatWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->pkModeWhenFloatWindow:Z

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

.method public setPrivateType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->privateType:Ljava/lang/String;

    return-void
.end method

.method public setPushers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->pushers:Ljava/util/List;

    return-void
.end method

.method public setRefer(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->refer:Ljava/lang/String;

    return-void
.end method

.method public setRequestLinkMicEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLockMicrophone:Ljava/lang/String;

    return-void
.end method

.method public setRoomID(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    return-void
.end method

.method public setScreenShotSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->screenShotSwitch:I

    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->shareUrl:Ljava/lang/String;

    return-void
.end method

.method public setShowGiftDialog(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mShowGiftDialog:I

    return-void
.end method

.method public setShowedFloatFromLiveRoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mShowedFloatFromLiveRoom:Z

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->status:Ljava/lang/String;

    return-void
.end method

.method public setStreamUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setFlvUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setStream_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->stream_id:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isAdmin:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setVideoOpen(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->videoOpen:I

    return-void
.end method

.method public setVideoSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->videoSwitch:I

    return-void
.end method

.method public setVoiceRoomInfoModel(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 0
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->voiceRoomInfoModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    return-void
.end method

.method public setVoiceStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->voiceStatus:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->img:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->onlineNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isKick:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->stream_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->infoName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->pushers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->accelerateURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isAdmin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->likeNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->backgroundImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mute:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->flvUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->banTalk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->audienceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->matchType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->voiceStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->bigGiftBeans:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 27
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isMusicActivity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isBack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->launchFromFloatWindow:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 32
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->pkModeWhenFloatWindow:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mShowedFloatFromLiveRoom:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 34
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mNeedPlayInItem:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->blackFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->anchorForceVoiceStatus:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 38
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->anchorForceMatchType:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->applyPkState:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->arenaPunishmentDurationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->arenaDurationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLivePk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->kickAdminType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->micEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 46
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->countryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->liveType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->privateType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->logo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->microphoneMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isLockMicrophone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->fansNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->isAttention:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->fcoin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->mLivePushIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->screenShotSwitch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
