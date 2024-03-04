.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_AUDIO_CALL:I = 0x1

.field public static final TYPE_CALL_BREAK:I = 0x4

.field public static final TYPE_CALL_END:I = 0x5

.field public static final TYPE_CANCEL:I = 0x1

.field public static final TYPE_NO_ANSWER:I = 0x3

.field public static final TYPE_REJECT:I = 0x2

.field public static final TYPE_TRTC_TEXT_MESSAGE:I = 0x3

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_VERSION_INTERCEPT:I = 0x6

.field public static final TYPE_VIDEO_CALL:I = 0x2

.field public static final VALUE_PROTOCOL_VERSION:I = 0x1

.field public static final VIDEO_CALL_ACTION_ACCEPT:I = 0x7

.field public static final VIDEO_CALL_ACTION_DIALING:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIDEO_CALL_ACTION_ERROR:I = -0x1

.field public static final VIDEO_CALL_ACTION_HANGUP:I = 0x5

.field public static final VIDEO_CALL_ACTION_LINE_BUSY:I = 0x6

.field public static final VIDEO_CALL_ACTION_READY:I = 0x8

.field public static final VIDEO_CALL_ACTION_REJECT:I = 0x3

.field public static final VIDEO_CALL_ACTION_SPONSOR_CANCEL:I = 0x2

.field public static final VIDEO_CALL_ACTION_SPONSOR_TIMEOUT:I = 0x4

.field public static final VIDEO_CALL_ACTION_START_FEE:I = 0x9

.field public static final VIDEO_CALL_ACTION_UNKNOWN:I = 0x0

.field public static final VIDEO_CALL_SHOT_BY_IOS:I = 0xa


# instance fields
.field public actionType:I

.field private age:Ljava/lang/String;

.field public businessId:I

.field public callTime:I

.field public callType:I

.field private fromLiveRoom:Z

.field public hangupTime:Ljava/lang/String;

.field public hangupType:I

.field public inviteId:Ljava/lang/String;

.field public invitedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private levelId:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field public matchLogId:Ljava/lang/String;

.field public matchPrice:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private preferentialLang:Ljava/lang/String;

.field public roomId:I

.field private sex:Ljava/lang/String;

.field public startCallTimestamp:J

.field public timeout:I

.field private userAvatar:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userImg:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field public version:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel$a;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->version:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->roomId:I

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchPrice:Ljava/lang/String;

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->version:I

    .line 9
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->roomId:I

    const-string v1, ""

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchPrice:Ljava/lang/String;

    .line 11
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    .line 12
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->version:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupTime:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->roomId:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchPrice:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->nickName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->preferentialLang:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userImg:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userAvatar:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->logo:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->age:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->sex:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->levelId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userId:Ljava/lang/String;

    .line 28
    const-class v1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->fromLiveRoom:Z

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->inviteId:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->businessId:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->timeout:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupType:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->startCallTimestamp:J

    return-void
.end method

.method public static build(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;-><init>()V

    .line 2
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->nickName:Ljava/lang/String;

    .line 3
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getPreferentialLang()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->preferentialLang:Ljava/lang/String;

    .line 4
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userImg:Ljava/lang/String;

    .line 5
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getPendantUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userAvatar:Ljava/lang/String;

    .line 6
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCountryFlag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->logo:Ljava/lang/String;

    .line 7
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getAge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->age:Ljava/lang/String;

    .line 8
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getGender()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->sex:Ljava/lang/String;

    .line 9
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->levelId:Ljava/lang/String;

    .line 10
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userId:Ljava/lang/String;

    .line 11
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getVipInfo()Lb8/g;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getVipInfo()Lb8/g;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    :cond_0
    const/4 p0, 0x0

    .line 13
    iput-boolean p0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->fromLiveRoom:Z

    return-object v0
.end method

.method public static getSecondCallTime(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ":"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    :try_start_0
    array-length v0, p0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    aget-object v2, p0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v0, v2

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 5
    :cond_2
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/2addr v0, p0

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v1
.end method

.method public static toMessage(IIILjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;-><init>(IILjava/lang/String;)V

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;-><init>(IILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userId:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_5

    return v0

    .line 5
    :cond_5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    return v0
.end method

.method public getAge()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->age:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->sex:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->levelId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferentialLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->preferentialLang:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getVipInfo()Lb8/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getVipInfo()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    return-object v0
.end method

.method public getVipInfo()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public isFromLiveRoom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->fromLiveRoom:Z

    return v0
.end method

.method public replaceAction(I)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->roomId:I

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->roomId:I

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->inviteId:Ljava/lang/String;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->inviteId:Ljava/lang/String;

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->businessId:I

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->businessId:I

    .line 6
    iput p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    .line 8
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->timeout:I

    iput p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->timeout:I

    .line 9
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    iput p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    .line 10
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->version:I

    iput p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->version:I

    .line 11
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    iput p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->nickName:Ljava/lang/String;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->nickName:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->preferentialLang:Ljava/lang/String;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->preferentialLang:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userImg:Ljava/lang/String;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userImg:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userAvatar:Ljava/lang/String;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userAvatar:Ljava/lang/String;

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->logo:Ljava/lang/String;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->logo:Ljava/lang/String;

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->age:Ljava/lang/String;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->age:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->sex:Ljava/lang/String;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->sex:Ljava/lang/String;

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->levelId:Ljava/lang/String;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->levelId:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userId:Ljava/lang/String;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userId:Ljava/lang/String;

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 22
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->fromLiveRoom:Z

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->setFromLiveRoom(Z)V

    return-object v0
.end method

.method public setFromLiveRoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->fromLiveRoom:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->roomId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->actionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->preferentialLang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userAvatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->logo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->age:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->sex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->levelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->fromLiveRoom:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 18
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 20
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->inviteId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->businessId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->timeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->startCallTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
