.class public Lcom/guochao/faceshow/aaspring/beans/DynamicBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;
.implements Lp7/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp7/h;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
        ">;",
        "Lp7/i;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_DYNAMIC:I = 0x0

.field public static final SOURCE_LIVE:I = 0x1

.field public static final SOURCE_VIDEO:I = 0x2

.field public static final TYPE_GIF:I = 0x3

.field public static final TYPE_LIVE:I = 0x4

.field public static final TYPE_MULTI_IMG:I = 0x1

.field public static final TYPE_VIDEO:I = 0x2


# instance fields
.field private address:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private checkMan:Ljava/lang/String;

.field private checkTime:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private commentNum:I

.field private content:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private county:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private createTimeStamp:J

.field private deleteTime:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private expand:Z

.field private friendId:I

.field private hasRetryTimes:I

.field private height:I

.field private img:Ljava/lang/String;

.field private infoId:Ljava/lang/String;

.field private invisibleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isBlacked:Z

.field private isCheck:I

.field private isComment:I

.field private isDelete:I

.field private isLike:I

.field private isNearbySeat:I

.field private isPublishable:Z

.field private isShowSeat:I

.field private isTop:I

.field private latitude:Ljava/lang/String;

.field private levelId:I

.field private likeNum:I

.field private likeUserImgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private liveId:I

.field private liveImg:Ljava/lang/String;

.field private liveState:I

.field private liveType:I

.field private longitude:Ljava/lang/String;

.field private mDynamicFile:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "fileList"
        }
        value = "imgList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicFile;",
            ">;"
        }
    .end annotation
.end field

.field private mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

.field private nickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userNickName"
    .end annotation
.end field

.field private preferentialLang:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private publishStatus:I

.field private ringFrom:I

.field private seatFrom:I

.field private shield:I

.field private showTranslate:Z

.field private sync:I

.field private translateContent:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;

.field private userAge:I

.field private userAttentStatus:I

.field private userCountryFlag:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userImg:Ljava/lang/String;

.field private userSex:I

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private uuid:I

.field private videoId:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isBlacked:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->expand:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isBlacked:Z

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->expand:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userImg:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->address:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->friendId:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->createTime:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->nickName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userCountryFlag:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userId:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->likeNum:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isLike:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->content:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->type:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->commentNum:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->videoId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userSex:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->levelId:I

    .line 22
    sget-object v1, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->mDynamicFile:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isComment:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->shield:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->seatFrom:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userAttentStatus:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->avatar:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->img:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isCheck:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->checkTime:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->checkMan:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->sync:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->invisibleList:Ljava/util/List;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->longitude:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->latitude:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isShowSeat:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->province:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->city:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->county:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->country:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isNearbySeat:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isDelete:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->deleteTime:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->ringFrom:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->infoId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isTop:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->liveState:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->publishStatus:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->translateContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)I
    .locals 1

    .line 2
    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->friendId:I

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->friendId:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->compareTo(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 3
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable:Z

    iget-boolean v2, p1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable:Z

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->uuid:I

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->uuid:I

    if-ne v1, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 5
    :cond_4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->friendId:I

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->friendId:I

    if-ne v1, p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserAge()I

    move-result v0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserImg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckMan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->checkMan:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->checkTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->commentNum:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userCountryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getCounty()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->county:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->createTimeStamp:J

    return-wide v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->deleteTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicFile()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicFile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->mDynamicFile:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFriendId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->friendId:I

    return v0
.end method

.method public getGender()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserSex()I

    move-result v0

    return v0
.end method

.method public getHasRetryTimes()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->hasRetryTimes:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->height:I

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->infoId:Ljava/lang/String;

    return-object v0
.end method

.method public getInvisibleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->invisibleList:Ljava/util/List;

    return-object v0
.end method

.method public getIsCheck()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isCheck:I

    return v0
.end method

.method public getIsComment()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isComment:I

    return v0
.end method

.method public getIsDelete()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isDelete:I

    return v0
.end method

.method public getIsLike()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isLike:I

    return v0
.end method

.method public getIsNearbySeat()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isNearbySeat:I

    return v0
.end method

.method public getIsShowSeat()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isShowSeat:I

    return v0
.end method

.method public getIsTop()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isTop:I

    return v0
.end method

.method public getItemViewType()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->ringFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->mDynamicFile:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 4
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->mDynamicFile:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    .line 5
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 6
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setWidth(I)V

    .line 7
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUrl(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileSmallUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setImg(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setHeight(I)V

    return v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLevelId()I

    move-result v0

    return v0
.end method

.method public getLevelId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->levelId:I

    return v0
.end method

.method public getLikeNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->likeNum:I

    return v0
.end method

.method public getLikeUserImgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->likeUserImgList:Ljava/util/List;

    return-object v0
.end method

.method public getLiveId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->liveId:I

    return v0
.end method

.method public getLiveImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->liveImg:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->liveState:I

    return v0
.end method

.method public getLiveType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->liveType:I

    return v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMVPUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMvpUserInfoResult()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->publishStatus:I

    return v0
.end method

.method public getRingFrom()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->ringFrom:I

    return v0
.end method

.method public getSeatFrom()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->seatFrom:I

    return v0
.end method

.method public getShield()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->shield:I

    return v0
.end method

.method public getSync()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->sync:I

    return v0
.end method

.method public getTargetLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->preferentialLang:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslateContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->translateContent:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userAge:I

    return v0
.end method

.method public getUserAttentStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userAttentStatus:I

    return v0
.end method

.method public getUserCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userCountryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userSex:I

    return v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getUuid()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->uuid:I

    return v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->videoId:Ljava/lang/String;

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

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->width:I

    return v0
.end method

.method public isBlacked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isBlacked:Z

    return v0
.end method

.method public isExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->expand:Z

    return v0
.end method

.method public isPublishable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable:Z

    return v0
.end method

.method public isShowTranslate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->showTranslate:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBlacked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isBlacked:Z

    return-void
.end method

.method public setCheckMan(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->checkMan:Ljava/lang/String;

    return-void
.end method

.method public setCheckTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->checkTime:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->city:Ljava/lang/String;

    return-void
.end method

.method public setCommentNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->commentNum:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setCounty(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->county:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setCreateTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->createTimeStamp:J

    return-void
.end method

.method public setDeleteTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->deleteTime:Ljava/lang/String;

    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->distance:Ljava/lang/String;

    return-void
.end method

.method public setDynamicFile(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicFile;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->mDynamicFile:Ljava/util/ArrayList;

    return-void
.end method

.method public setExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->expand:Z

    return-void
.end method

.method public setFriendId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->friendId:I

    return-void
.end method

.method public setHasRetryTimes(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->hasRetryTimes:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->height:I

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setInfoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->infoId:Ljava/lang/String;

    return-void
.end method

.method public setInvisibleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->invisibleList:Ljava/util/List;

    return-void
.end method

.method public setIsCheck(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isCheck:I

    return-void
.end method

.method public setIsComment(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isComment:I

    return-void
.end method

.method public setIsDelete(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isDelete:I

    return-void
.end method

.method public setIsLike(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isLike:I

    return-void
.end method

.method public setIsNearbySeat(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isNearbySeat:I

    return-void
.end method

.method public setIsShowSeat(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isShowSeat:I

    return-void
.end method

.method public setIsTop(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isTop:I

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLevelId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->levelId:I

    return-void
.end method

.method public setLikeNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->likeNum:I

    return-void
.end method

.method public setLikeUserImgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->likeUserImgList:Ljava/util/List;

    return-void
.end method

.method public setLiveId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->liveId:I

    return-void
.end method

.method public setLiveImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->liveImg:Ljava/lang/String;

    return-void
.end method

.method public setLiveState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->liveState:I

    return-void
.end method

.method public setLiveType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->liveType:I

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setMvpUserInfoResult(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->province:Ljava/lang/String;

    return-void
.end method

.method public setPublishStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->publishStatus:I

    return-void
.end method

.method public setPublishable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable:Z

    return-void
.end method

.method public setRingFrom(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->ringFrom:I

    return-void
.end method

.method public setSeatFrom(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->seatFrom:I

    return-void
.end method

.method public setShield(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->shield:I

    return-void
.end method

.method public setShowTranslate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->showTranslate:Z

    return-void
.end method

.method public setSync(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->sync:I

    return-void
.end method

.method public setTargetLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->preferentialLang:Ljava/lang/String;

    return-void
.end method

.method public setTranslateContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->translateContent:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userAge:I

    return-void
.end method

.method public setUserAttentStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userAttentStatus:I

    return-void
.end method

.method public setUserCountryFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userCountryFlag:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userImg:Ljava/lang/String;

    return-void
.end method

.method public setUserSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userSex:I

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setUuid(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->uuid:I

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->friendId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->createTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userCountryFlag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->likeNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isLike:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->commentNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->videoId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userSex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->levelId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->mDynamicFile:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 17
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isComment:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->shield:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->seatFrom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->userAttentStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->avatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 23
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->img:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isCheck:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->checkTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->checkMan:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->sync:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->invisibleList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 29
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->longitude:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->latitude:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isShowSeat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->province:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->city:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->county:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isNearbySeat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isDelete:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->deleteTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->ringFrom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->infoId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isTop:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->liveState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->publishStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->translateContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
