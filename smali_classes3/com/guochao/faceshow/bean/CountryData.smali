.class public Lcom/guochao/faceshow/bean/CountryData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private coding:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private countryId:I

.field private countryNum:Ljava/lang/String;

.field private id:I

.field private logo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/bean/CountryData$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/CountryData$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/bean/CountryData;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/guochao/faceshow/bean/CountryData;->id:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/bean/CountryData;->countryId:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/CountryData;->content:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/CountryData;->coding:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/bean/CountryData;->logo:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/bean/CountryData;->countryNum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/CountryData;->coding:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/CountryData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/CountryData;->countryId:I

    return v0
.end method

.method public getCountryNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/CountryData;->countryNum:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/bean/CountryData;->id:I

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/CountryData;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public setCoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/CountryData;->coding:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/CountryData;->content:Ljava/lang/String;

    return-void
.end method

.method public setCountryId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/CountryData;->countryId:I

    return-void
.end method

.method public setCountryNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/CountryData;->countryNum:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/bean/CountryData;->id:I

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/CountryData;->logo:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/bean/CountryData;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/bean/CountryData;->countryId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/bean/CountryData;->content:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/bean/CountryData;->coding:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/bean/CountryData;->logo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/bean/CountryData;->countryNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
