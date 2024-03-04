.class public Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/facetoface/data/GiftData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftItemData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public counts:I

.field public giftTypeId:Ljava/lang/String;

.field public gift_id:I

.field public gname:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public numbers:I

.field public price:I

.field public sourceTypeId:I

.field public svga_url:Ljava/lang/String;

.field public typeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->svga_url:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->img:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->price:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->counts:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gift_id:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->typeId:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gname:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->numbers:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->giftTypeId:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->sourceTypeId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->svga_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->img:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->price:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->counts:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gift_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->typeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget p2, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->numbers:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->giftTypeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->sourceTypeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
