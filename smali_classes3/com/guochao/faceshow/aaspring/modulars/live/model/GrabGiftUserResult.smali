.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;",
            ">;"
        }
    .end annotation
.end field

.field private status:I

.field private treasureId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->treasureId:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->records:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->status:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->records:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->status:I

    return v0
.end method

.method public getTreasureId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->treasureId:Ljava/lang/String;

    return-object v0
.end method

.method public setRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUser;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->records:Ljava/util/List;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->status:I

    return-void
.end method

.method public setTreasureId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->treasureId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->treasureId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->records:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GrabGiftUserResult;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
