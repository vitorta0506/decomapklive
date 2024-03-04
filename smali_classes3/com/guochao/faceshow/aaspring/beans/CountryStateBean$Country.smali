.class public Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Country"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public countryId:I

.field public countryLogo:Ljava/lang/String;

.field public countryLogoRect:Ljava/lang/String;

.field public countryName:Ljava/lang/String;

.field public isHot:I

.field public score:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogo:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogoRect:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->isHot:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->score:I

    return-void
.end method

.method public static obtain(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryLogo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogo:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryLogo()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogoRect:Ljava/lang/String;

    const/4 p0, 0x0

    .line 6
    iput p0, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->isHot:I

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCountryId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    return v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsHot()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->isHot:I

    return v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->score:I

    return v0
.end method

.method public setCountryId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    return-void
.end method

.method public setIsHot(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->isHot:I

    return-void
.end method

.method public setScore(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->score:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogoRect:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->isHot:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->score:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
