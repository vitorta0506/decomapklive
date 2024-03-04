.class public Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bannerId:Ljava/lang/String;

.field private bannerName:Ljava/lang/String;

.field private belongLang:Ljava/lang/Integer;

.field private endTime:Ljava/lang/String;

.field private fileType:Ljava/lang/String;

.field private fileUrl:Ljava/lang/String;

.field private modelType:Ljava/lang/String;

.field private posId:Ljava/lang/String;

.field private schemeData:Ljava/lang/String;

.field private schemeId:Ljava/lang/String;

.field private schemeName:Ljava/lang/String;

.field private schemeType:Ljava/lang/String;

.field private schemeUrl:Ljava/lang/String;

.field private showTime:Ljava/lang/String;

.field private startTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->bannerId:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->bannerName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->posId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->startTime:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->endTime:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->showTime:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->fileUrl:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->fileType:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeType:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->modelType:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeUrl:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeData:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->belongLang:Ljava/lang/Integer;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->belongLang:Ljava/lang/Integer;

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBannerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->bannerId:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->bannerName:Ljava/lang/String;

    return-object v0
.end method

.method public getBelongLang()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->belongLang:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getModelType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public getPosId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->posId:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeData:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeId:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeName:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->showTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setBannerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->bannerId:Ljava/lang/String;

    return-void
.end method

.method public setBannerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->bannerName:Ljava/lang/String;

    return-void
.end method

.method public setBelongLang(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->belongLang:Ljava/lang/Integer;

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->fileType:Ljava/lang/String;

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method public setModelType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->modelType:Ljava/lang/String;

    return-void
.end method

.method public setPosId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->posId:Ljava/lang/String;

    return-void
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeData:Ljava/lang/String;

    return-void
.end method

.method public setSchemeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeId:Ljava/lang/String;

    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeName:Ljava/lang/String;

    return-void
.end method

.method public setSchemeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeType:Ljava/lang/String;

    return-void
.end method

.method public setSchemeUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeUrl:Ljava/lang/String;

    return-void
.end method

.method public setShowTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->showTime:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->startTime:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->bannerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->bannerName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->posId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->startTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->endTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->showTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->fileUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->fileType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->modelType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->schemeData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->belongLang:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->belongLang:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
