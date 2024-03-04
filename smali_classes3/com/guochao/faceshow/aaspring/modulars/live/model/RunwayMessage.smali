.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;,
        Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;,
        Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRunways:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manyStrips"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;->mRunways:Ljava/util/List;

    return-void
.end method

.method public static obtain(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;->mRunways:Ljava/util/List;

    .line 3
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRunways()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;->mRunways:Ljava/util/List;

    return-object v0
.end method

.method public setRunways(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;->mRunways:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;->mRunways:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
