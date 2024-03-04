.class public Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private liveInfo:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

.field private recommend:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->CREATOR:Landroid/os/Parcelable$Creator;

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
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->liveInfo:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    .line 4
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->recommend:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLiveInfo()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->liveInfo:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    return-object v0
.end method

.method public getRecommend()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->recommend:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    return-object v0
.end method

.method public setLiveInfo(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->liveInfo:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    return-void
.end method

.method public setRecommend(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->recommend:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->liveInfo:Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RoomItemDetail;->recommend:Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
