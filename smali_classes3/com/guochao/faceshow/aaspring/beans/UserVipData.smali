.class public Lcom/guochao/faceshow/aaspring/beans/UserVipData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/g;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/UserVipData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arDressCarSource:Ljava/lang/String;

.field private arDressCarSourceV2:Ljava/lang/String;

.field private dressCarId:Ljava/lang/String;

.field private dressCarSource:Ljava/lang/String;

.field private dressCarSourceV2:Ljava/lang/String;

.field private dressChatSource:Ljava/lang/String;

.field private dressHead:Ljava/lang/String;

.field private dressHeadType:I

.field private hostCertificationUrl:Ljava/lang/String;

.field private isVip:Ljava/lang/Integer;

.field private publicFontColor:Ljava/lang/String;

.field private sended:I

.field private vipExpireTime:J

.field private vipPlatform:Ljava/lang/Integer;

.field private vipSign:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->sended:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressHeadType:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarSource:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarSourceV2:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressChatSource:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->hostCertificationUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->vipSign:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->arDressCarSource:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->arDressCarSourceV2:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressHead:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->publicFontColor:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->isVip:Ljava/lang/Integer;

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->isVip:Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public static from(Lb8/g;)Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    .line 2
    invoke-interface {p0}, Lb8/g;->getVipLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setIsVip(I)V

    .line 3
    invoke-interface {p0}, Lb8/g;->getSended()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setSended(I)V

    .line 4
    invoke-interface {p0}, Lb8/g;->getVipDressCarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setArDressCarSource(Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Lb8/g;->getVipDressCarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressCarSource(Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Lb8/g;->getVipDressCarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressCarId(Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Lb8/g;->getVipAvatarPendentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressHead(Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Lb8/g;->getVipAvatarPendentType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressHeadType(I)V

    .line 9
    invoke-interface {p0}, Lb8/g;->getHostCertificationUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setHostCertificationUrl(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lb8/g;->getVipDressCarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressCarSource(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lb8/g;->getVipDressCarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressCarId(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lb8/g;->getVipDressCarUrlV2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressCarSourceV2(Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lb8/g;->getVipDressCarUrlV2()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setArDressCarSourceV2(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/UserVipData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getArDressCarSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->arDressCarSource:Ljava/lang/String;

    return-object v0
.end method

.method public getArDressCarSourceV2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->arDressCarSourceV2:Ljava/lang/String;

    return-object v0
.end method

.method public getDressCarId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarId:Ljava/lang/String;

    return-object v0
.end method

.method public getDressCarSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDressCarSourceV2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarSourceV2:Ljava/lang/String;

    return-object v0
.end method

.method public getDressChatSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressChatSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDressHead()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressHead:Ljava/lang/String;

    return-object v0
.end method

.method public getDressHeadType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressHeadType:I

    return v0
.end method

.method public getHostCertificationUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->hostCertificationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsVip()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->isVip:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPlatform()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipPlatform()I

    move-result v0

    return v0
.end method

.method public getPublicFontColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->publicFontColor:Ljava/lang/String;

    return-object v0
.end method

.method public getSended()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->sended:I

    return v0
.end method

.method public getThirdEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->vipExpireTime:J

    return-wide v0
.end method

.method public bridge synthetic getVipAvatarPendentId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->c(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVipAvatarPendentType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressHeadType:I

    return v0
.end method

.method public getVipAvatarPendentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressHead:Ljava/lang/String;

    return-object v0
.end method

.method public getVipDressCarId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarId:Ljava/lang/String;

    return-object v0
.end method

.method public getVipDressCarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarSource:Ljava/lang/String;

    return-object v0
.end method

.method public getVipDressCarUrlV2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarSourceV2:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getVipDressChatUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->i(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVipExpireTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->vipExpireTime:J

    return-wide v0
.end method

.method public getVipLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v0

    return v0
.end method

.method public getVipPlatform()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->vipPlatform:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getVipSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->vipSign:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "vip1_1"

    :cond_0
    return-object v0
.end method

.method public bridge synthetic isVip()Z
    .locals 1

    invoke-static {p0}, Lb8/f;->k(Lb8/g;)Z

    move-result v0

    return v0
.end method

.method public setArDressCarSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->arDressCarSource:Ljava/lang/String;

    return-void
.end method

.method public setArDressCarSourceV2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->arDressCarSourceV2:Ljava/lang/String;

    return-void
.end method

.method public setDressCarId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarId:Ljava/lang/String;

    return-void
.end method

.method public setDressCarSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarSource:Ljava/lang/String;

    return-void
.end method

.method public setDressCarSourceV2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarSourceV2:Ljava/lang/String;

    return-void
.end method

.method public setDressChatSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressChatSource:Ljava/lang/String;

    return-void
.end method

.method public setDressHead(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressHead:Ljava/lang/String;

    return-void
.end method

.method public setDressHeadType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressHeadType:I

    return-void
.end method

.method public setHostCertificationUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->hostCertificationUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsVip(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->isVip:Ljava/lang/Integer;

    return-void
.end method

.method public setPlatform(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->vipPlatform:Ljava/lang/Integer;

    return-void
.end method

.method public setPublicFontColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->publicFontColor:Ljava/lang/String;

    return-void
.end method

.method public setSended(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->sended:I

    return-void
.end method

.method public setThirdEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->vipExpireTime:J

    return-void
.end method

.method public setVipExpireTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->vipExpireTime:J

    return-void
.end method

.method public setVipPlatform(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->vipPlatform:Ljava/lang/Integer;

    return-void
.end method

.method public setVipSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->vipSign:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->sended:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressHeadType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressCarSourceV2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressChatSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->hostCertificationUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->vipSign:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->arDressCarSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->arDressCarSourceV2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->dressHead:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->publicFontColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->isVip:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->isVip:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
