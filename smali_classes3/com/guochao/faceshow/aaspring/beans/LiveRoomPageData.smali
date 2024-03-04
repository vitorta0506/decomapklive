.class public Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private countryLiveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
            ">;"
        }
    .end annotation
.end field

.field private currentPage:Ljava/lang/String;

.field private isReceivePrivateLive:I

.field private mDiscoverCounty:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

.field private matchNum:Ljava/lang/String;

.field private pageSize:Ljava/lang/String;

.field private roomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;"
        }
    .end annotation
.end field

.field private typeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->pageSize:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->typeId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->currentPage:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->roomList:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->matchNum:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->isReceivePrivateLive:I

    .line 8
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->countryLiveList:Ljava/util/List;

    .line 9
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->mDiscoverCounty:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCountryLiveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->countryLiveList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->currentPage:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoverCounty()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->mDiscoverCounty:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    return-object v0
.end method

.method public getIsReceivePrivateLive()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->isReceivePrivateLive:I

    return v0
.end method

.method public getMatchNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->matchNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->roomList:Ljava/util/List;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method public setCountryLiveList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->countryLiveList:Ljava/util/List;

    return-void
.end method

.method public setCurrentPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->currentPage:Ljava/lang/String;

    return-void
.end method

.method public setDiscoverCounty(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->mDiscoverCounty:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    return-void
.end method

.method public setIsReceivePrivateLive(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->isReceivePrivateLive:I

    return-void
.end method

.method public setMatchNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->matchNum:Ljava/lang/String;

    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->pageSize:Ljava/lang/String;

    return-void
.end method

.method public setRoomList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->roomList:Ljava/util/List;

    return-void
.end method

.method public setTypeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->typeId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->pageSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->typeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->currentPage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->roomList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->matchNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->isReceivePrivateLive:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->countryLiveList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->mDiscoverCounty:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
