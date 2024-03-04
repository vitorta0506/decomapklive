.class public Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private androidVersion:I

.field private flag:I

.field private gameCode:I

.field private gameGroupId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imGroupId"
    .end annotation
.end field

.field private gameInfoId:J

.field private h5PageUrl:Ljava/lang/String;

.field private h5Url:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private isH5Page:I

.field private joinMoneyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private joinNumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private openRoleType:I

.field private percent:F

.field private rate:I

.field private shareUrl:Ljava/lang/String;

.field private status:I

.field private sysRate:I

.field private typeId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->percent:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->percent:F

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->gameInfoId:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->typeId:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->icon:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->status:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->h5Url:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->isH5Page:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->h5PageUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->gameCode:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->androidVersion:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->openRoleType:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->shareUrl:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->percent:F

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->flag:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->gameGroupId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->rate:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->sysRate:I

    return-void
.end method

.method public static copyOf(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAndroidVersion()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->androidVersion:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->flag:I

    return v0
.end method

.method public getGameCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->gameCode:I

    return v0
.end method

.method public getGameGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->gameGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameInfoId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->gameInfoId:J

    return-wide v0
.end method

.method public getH5PageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->h5PageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getH5Url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->h5Url:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIsH5Page()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->isH5Page:I

    return v0
.end method

.method public getJoinMoneyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->joinMoneyList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getJoinNumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->joinNumList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenRoleType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->openRoleType:I

    return v0
.end method

.method public getPercent()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->percent:F

    return v0
.end method

.method public getRate()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->rate:I

    return v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->status:I

    return v0
.end method

.method public getSysRate()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->sysRate:I

    return v0
.end method

.method public getTypeId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->typeId:J

    return-wide v0
.end method

.method public setAndroidVersion(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->androidVersion:I

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->flag:I

    return-void
.end method

.method public setGameCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->gameCode:I

    return-void
.end method

.method public setGameGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->gameGroupId:Ljava/lang/String;

    return-void
.end method

.method public setGameInfoId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->gameInfoId:J

    return-void
.end method

.method public setH5PageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->h5PageUrl:Ljava/lang/String;

    return-void
.end method

.method public setH5Url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->h5Url:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIsH5Page(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->isH5Page:I

    return-void
.end method

.method public setJoinMoneyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->joinMoneyList:Ljava/util/List;

    return-void
.end method

.method public setJoinNumList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->joinNumList:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOpenRoleType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->openRoleType:I

    return-void
.end method

.method public setPercent(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->percent:F

    return-void
.end method

.method public setRate(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->rate:I

    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->shareUrl:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->status:I

    return-void
.end method

.method public setSysRate(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->sysRate:I

    return-void
.end method

.method public setTypeId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->typeId:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->gameInfoId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->typeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->h5Url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->isH5Page:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->h5PageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->gameCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->androidVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->openRoleType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->percent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->flag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->gameGroupId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->rate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->sysRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
