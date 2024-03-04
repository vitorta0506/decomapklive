.class public Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private img:Ljava/lang/String;

.field private isLottery:I

.field private lotteryUrl:Ljava/lang/String;

.field private prospectus:Ljava/lang/String;

.field private shortUrl:Ljava/lang/String;

.field private videoId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->img:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->shortUrl:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->videoId:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->isLottery:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->prospectus:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->lotteryUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLottery()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->isLottery:I

    return v0
.end method

.method public getLotteryUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->lotteryUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProspectus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->prospectus:Ljava/lang/String;

    return-object v0
.end method

.method public getShortUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->shortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->videoId:I

    return v0
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->img:Ljava/lang/String;

    return-void
.end method

.method public setIsLottery(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->isLottery:I

    return-void
.end method

.method public setLotteryUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->lotteryUrl:Ljava/lang/String;

    return-void
.end method

.method public setProspectus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->prospectus:Ljava/lang/String;

    return-void
.end method

.method public setShortUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->shortUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->videoId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->img:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->shortUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->videoId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->isLottery:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->prospectus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UploadedVideoResult;->lotteryUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
