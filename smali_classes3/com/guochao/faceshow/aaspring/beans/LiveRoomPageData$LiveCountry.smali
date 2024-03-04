.class public Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveCountry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private countryId:Ljava/lang/String;

.field private countryLogo:Ljava/lang/String;

.field private countryLogoRect:Ljava/lang/String;

.field private countryName:Ljava/lang/String;

.field private isMoreTen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryLogo:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryLogoRect:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->isMoreTen:I

    return-void
.end method

.method public static obtain(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;-><init>()V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryId:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryName:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogo:Ljava/lang/String;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryLogo:Ljava/lang/String;

    .line 5
    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogoRect:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryLogoRect:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCountryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryLogoRect:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryLogo:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMoreTen()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->isMoreTen:I

    return v0
.end method

.method public setCountryId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryId:Ljava/lang/String;

    return-void
.end method

.method public setCountryLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryLogo:Ljava/lang/String;

    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryName:Ljava/lang/String;

    return-void
.end method

.method public setIsMoreTen(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->isMoreTen:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryLogoRect:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->countryName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->isMoreTen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
