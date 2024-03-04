.class public Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private imageModel:I

.field private img:Ljava/lang/String;

.field private introduce:Ljava/lang/String;

.field private isNew:I

.field private mname:Ljava/lang/String;

.field private musicId:Ljava/lang/String;

.field private numbers:Ljava/lang/String;

.field private partakeTimes:Ljava/lang/String;

.field private placeName:Ljava/lang/String;

.field private searchType:Ljava/lang/String;

.field private topicId:Ljava/lang/String;

.field private topicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;",
            ">;"
        }
    .end annotation
.end field

.field private topicName:Ljava/lang/String;

.field private type:I

.field private typeId:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field public voiceRoomInfoModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->type:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->imageModel:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->placeName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->partakeTimes:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->topicName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->musicId:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->country:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->img:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->createTime:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->introduce:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->numbers:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->typeId:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->mname:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->userId:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->url:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->searchType:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->content:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->topicId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->isNew:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->topicList:Ljava/util/List;

    .line 23
    const-class v1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getImageModel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->imageModel:I

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIntroduce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->introduce:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNew()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->isNew:I

    return v0
.end method

.method public getMname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->mname:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->musicId:Ljava/lang/String;

    return-object v0
.end method

.method public getNumbers()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->numbers:Ljava/lang/String;

    return-object v0
.end method

.method public getPartakeTimes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->partakeTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->placeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->searchType:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->topicId:Ljava/lang/String;

    return-object v0
.end method

.method public getTopicList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->topicList:Ljava/util/List;

    return-object v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->topicName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->type:I

    return v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setImageModel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->imageModel:I

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setIntroduce(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->introduce:Ljava/lang/String;

    return-void
.end method

.method public setIsNew(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->isNew:I

    return-void
.end method

.method public setMname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->mname:Ljava/lang/String;

    return-void
.end method

.method public setMusicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->musicId:Ljava/lang/String;

    return-void
.end method

.method public setNumbers(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->numbers:Ljava/lang/String;

    return-void
.end method

.method public setPartakeTimes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->partakeTimes:Ljava/lang/String;

    return-void
.end method

.method public setPlaceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->placeName:Ljava/lang/String;

    return-void
.end method

.method public setSearchType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->searchType:Ljava/lang/String;

    return-void
.end method

.method public setTopicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->topicId:Ljava/lang/String;

    return-void
.end method

.method public setTopicList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean$Topic;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->topicList:Ljava/util/List;

    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->topicName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->type:I

    return-void
.end method

.method public setTypeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->typeId:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->imageModel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->placeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->partakeTimes:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->topicName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->musicId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->img:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->createTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->introduce:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->numbers:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->typeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->mname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->searchType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->topicId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->isNew:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->topicList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
