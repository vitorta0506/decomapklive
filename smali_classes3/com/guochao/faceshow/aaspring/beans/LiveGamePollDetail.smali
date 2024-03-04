.class public Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private androidVersion:I

.field private confDiamondNum:I

.field private confUserNum:I

.field private endNum:I

.field private flag:I

.field private gameCode:I

.field private gameInfoId:J

.field private gameRoundDetailVo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;",
            ">;"
        }
    .end annotation
.end field

.field private h5Url:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private iosVersion:I

.field private roundId:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;

.field private startNum:I

.field private status:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->gameInfoId:J

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->status:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->roundId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->confUserNum:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->confDiamondNum:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->gameCode:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->androidVersion:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->iosVersion:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->icon:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->shareUrl:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->startNum:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->endNum:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->h5Url:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->gameRoundDetailVo:Ljava/util/List;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->flag:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAndroidVersion()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->androidVersion:I

    return v0
.end method

.method public getConfDiamondNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->confDiamondNum:I

    return v0
.end method

.method public getConfUserNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->confUserNum:I

    return v0
.end method

.method public getEndNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->endNum:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->flag:I

    return v0
.end method

.method public getGameCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->gameCode:I

    return v0
.end method

.method public getGameInfoId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->gameInfoId:J

    return-wide v0
.end method

.method public getGameRoundVo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->gameRoundDetailVo:Ljava/util/List;

    return-object v0
.end method

.method public getH5Url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->h5Url:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIosVersion()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->iosVersion:I

    return v0
.end method

.method public getRoundId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->roundId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->startNum:I

    return v0
.end method

.method public getStatus()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->status:J

    return-wide v0
.end method

.method public setAndroidVersion(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->androidVersion:I

    return-void
.end method

.method public setConfDiamondNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->confDiamondNum:I

    return-void
.end method

.method public setConfUserNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->confUserNum:I

    return-void
.end method

.method public setEndNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->endNum:I

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->flag:I

    return-void
.end method

.method public setGameCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->gameCode:I

    return-void
.end method

.method public setGameInfoId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->gameInfoId:J

    return-void
.end method

.method public setGameRoundVo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->gameRoundDetailVo:Ljava/util/List;

    return-void
.end method

.method public setH5Url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->h5Url:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIosVersion(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->iosVersion:I

    return-void
.end method

.method public setRoundId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->roundId:Ljava/lang/String;

    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->shareUrl:Ljava/lang/String;

    return-void
.end method

.method public setStartNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->startNum:I

    return-void
.end method

.method public setStatus(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->status:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->gameInfoId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->status:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->roundId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->confUserNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->confDiamondNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->gameCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->androidVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->iosVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->startNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->endNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->h5Url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->gameRoundDetailVo:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
