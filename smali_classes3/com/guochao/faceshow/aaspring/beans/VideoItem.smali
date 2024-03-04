.class public Lcom/guochao/faceshow/aaspring/beans/VideoItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private age:I

.field private avatar:Ljava/lang/String;

.field private countryLogo:Ljava/lang/String;

.field private friend:Ljava/lang/String;

.field private heatNum:I

.field private height:Ljava/lang/String;

.field private isAttention:I

.field private isFeatured:Ljava/lang/String;

.field private isOfficial:I

.field private isSource:I

.field private isZan:I

.field private liveId:I

.field private liveImg:Ljava/lang/String;

.field private liveState:Ljava/lang/String;

.field private liveType:I

.field private musicId:I

.field private musicImg:Ljava/lang/String;

.field private musicName:Ljava/lang/String;

.field private musicUrl:Ljava/lang/String;

.field private onlineData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

.field private preferentialLang:Ljava/lang/String;

.field private sex:I

.field private shareNum:Ljava/lang/String;

.field private shortUrl:Ljava/lang/String;

.field private showExpand:Z

.field private showTranslate:Z

.field private topicId:I

.field private topicImg:Ljava/lang/String;

.field private topicIntroduction:Ljava/lang/String;

.field private topicName:Ljava/lang/String;

.field private translateContent:Ljava/lang/String;

.field private type:I

.field private typeId:Ljava/lang/String;

.field private typeName:Ljava/lang/String;

.field private ugcId:Ljava/lang/String;

.field private unTranslateContent:Ljava/lang/CharSequence;

.field private userId:Ljava/lang/String;

.field private userImg:Ljava/lang/String;

.field private userNickName:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private videoBarrageSwitch:I

.field private videoCollectionNum:I

.field private videoCommentNum:I

.field private videoCreateTime:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoImg:Ljava/lang/String;

.field private videoIntroductionContent:Ljava/lang/String;

.field private videoIntroductionJson:Ljava/lang/String;

.field private videoPlayNum:I

.field private videoUrl:Ljava/lang/String;

.field private width:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/VideoItem$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoId:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicId:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->typeId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicId:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoCreateTime:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoCollectionNum:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoImg:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoIntroductionContent:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoIntroductionJson:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userNickName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userImg:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicImg:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->typeName:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicIntroduction:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicName:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicUrl:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicImg:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isZan:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoCommentNum:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->friend:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isAttention:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isSource:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoPlayNum:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->type:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->heatNum:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->shortUrl:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->width:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->height:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->avatar:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isFeatured:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isOfficial:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->shareNum:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveState:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoBarrageSwitch:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->translateContent:Ljava/lang/String;

    .line 40
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
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->showExpand:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->showTranslate:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->preferentialLang:Ljava/lang/String;

    .line 43
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveId:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveImg:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveType:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->sex:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->age:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->countryLogo:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->ugcId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->age:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getFriend()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->friend:Ljava/lang/String;

    return-object v0
.end method

.method public getHeatNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->heatNum:I

    return v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAttention()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isAttention:I

    return v0
.end method

.method public getIsFeatured()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isFeatured:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOfficial()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isOfficial:I

    return v0
.end method

.method public getIsSource()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isSource:I

    return v0
.end method

.method public getIsZan()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isZan:I

    return v0
.end method

.method public getLiveId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveId:I

    return v0
.end method

.method public getLiveImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveImg:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveState:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveType:I

    return v0
.end method

.method public getMusicId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicId:I

    return v0
.end method

.method public getMusicImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicImg:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicName:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionMap()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->onlineData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

    return-object v0
.end method

.method public getPreferentialLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->preferentialLang:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->sex:I

    return v0
.end method

.method public getShareNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->shareNum:Ljava/lang/String;

    return-object v0
.end method

.method public getShortUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->shortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->preferentialLang:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicId:I

    return v0
.end method

.method public getTopicImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicImg:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicIntroduction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicIntroduction:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicName:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslateContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->translateContent:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->type:I

    return v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public getUgcId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->ugcId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnTranslateContent()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->unTranslateContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getVideoBarrageSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoBarrageSwitch:I

    return v0
.end method

.method public getVideoCollectionNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoCollectionNum:I

    return v0
.end method

.method public getVideoCommentNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoCommentNum:I

    return v0
.end method

.method public getVideoCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoCreateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDesc()Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoIntroductionJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoIntroductionJson()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/VideoItem$2;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem$2;-><init>(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    .line 4
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/MyTopicAndName;

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v2, Lcom/guochao/faceshow/bean/MyTopicAndName;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoIntroductionContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoIntroductionContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoImg:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoIntroductionContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoIntroductionContent:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getVideoIntroductionJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoIntroductionJson:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPlayNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoPlayNum:I

    return v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->width:Ljava/lang/String;

    return-object v0
.end method

.method public isShowExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->showExpand:Z

    return v0
.end method

.method public isShowTranslate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->showTranslate:Z

    return v0
.end method

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->age:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCountryLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->countryLogo:Ljava/lang/String;

    return-void
.end method

.method public setFriend(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->friend:Ljava/lang/String;

    return-void
.end method

.method public setHeatNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->heatNum:I

    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->height:Ljava/lang/String;

    return-void
.end method

.method public setIsAttention(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isAttention:I

    return-void
.end method

.method public setIsFeatured(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isFeatured:Ljava/lang/String;

    return-void
.end method

.method public setIsOfficial(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isOfficial:I

    return-void
.end method

.method public setIsSource(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isSource:I

    return-void
.end method

.method public setIsZan(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isZan:I

    return-void
.end method

.method public setLiveId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveId:I

    return-void
.end method

.method public setLiveImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveImg:Ljava/lang/String;

    return-void
.end method

.method public setLiveState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveState:Ljava/lang/String;

    return-void
.end method

.method public setLiveType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveType:I

    return-void
.end method

.method public setMusicId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicId:I

    return-void
.end method

.method public setMusicImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicImg:Ljava/lang/String;

    return-void
.end method

.method public setMusicName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicName:Ljava/lang/String;

    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicUrl:Ljava/lang/String;

    return-void
.end method

.method public setPositionMap(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->onlineData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

    return-void
.end method

.method public setPreferentialLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->preferentialLang:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->sex:I

    return-void
.end method

.method public setShareNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->shareNum:Ljava/lang/String;

    return-void
.end method

.method public setShortUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->shortUrl:Ljava/lang/String;

    return-void
.end method

.method public setShowExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->showExpand:Z

    return-void
.end method

.method public setShowTranslate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->showTranslate:Z

    return-void
.end method

.method public setTargetLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->preferentialLang:Ljava/lang/String;

    return-void
.end method

.method public setTopicId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicId:I

    return-void
.end method

.method public setTopicImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicImg:Ljava/lang/String;

    return-void
.end method

.method public setTopicIntroduction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicIntroduction:Ljava/lang/String;

    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicName:Ljava/lang/String;

    return-void
.end method

.method public setTranslateContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->translateContent:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->type:I

    return-void
.end method

.method public setTypeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->typeId:Ljava/lang/String;

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->typeName:Ljava/lang/String;

    return-void
.end method

.method public setUgcId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->ugcId:Ljava/lang/String;

    return-void
.end method

.method public setUnTranslateContent(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->unTranslateContent:Ljava/lang/CharSequence;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userImg:Ljava/lang/String;

    return-void
.end method

.method public setUserNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userNickName:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setVideoBarrageSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoBarrageSwitch:I

    return-void
.end method

.method public setVideoCollectionNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoCollectionNum:I

    return-void
.end method

.method public setVideoCommentNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoCommentNum:I

    return-void
.end method

.method public setVideoCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoCreateTime:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoImg:Ljava/lang/String;

    return-void
.end method

.method public setVideoIntroductionContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoIntroductionContent:Ljava/lang/String;

    return-void
.end method

.method public setVideoIntroductionJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoIntroductionJson:Ljava/lang/String;

    return-void
.end method

.method public setVideoPlayNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoPlayNum:I

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->width:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->typeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoCreateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoCollectionNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoIntroductionContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoIntroductionJson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userNickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->typeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->topicIntroduction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->musicImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isZan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoCommentNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->friend:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isAttention:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoPlayNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->heatNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->shortUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->width:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->height:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isFeatured:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->isOfficial:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->shareNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->videoBarrageSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->translateContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->showExpand:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->showTranslate:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->preferentialLang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->liveType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->sex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->age:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->countryLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->ugcId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
