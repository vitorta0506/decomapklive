.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/guochao/faceshow/aaspring/modulars/live/model/ILuckyRunwayMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LuckyGiftDiamondsMessage"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private diamonds:Z

.field private mRunways:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manyStrips"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;->diamonds:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;->diamonds:Z

    return-void
.end method

.method public static obtain(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setGiftNumbers(Ljava/lang/Integer;)V

    .line 5
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->access$100(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setGiftPicture(Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setGroupId(Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->access$300(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setLiveFlow(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->access$400(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setLiveType(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->access$500(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setLiveUserImg(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setRoomId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getSendTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setSendTime(J)V

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 15
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    .line 16
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->access$600(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setIsVip(I)V

    .line 17
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setToUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 18
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->access$700(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setTrackId(Ljava/lang/String;)V

    .line 19
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->access$800(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setTrackType(I)V

    .line 20
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->access$900(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setTreasureId(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 23
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->access$1000(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setIsVip(I)V

    .line 25
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->setToUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 26
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;->access$1000(Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setVersion(I)V

    .line 27
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;->setRunways(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDiamonds()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;->diamonds:Z

    return v0
.end method

.method public getRunwayMessages()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;->mRunways:Ljava/util/List;

    return-object v0
.end method

.method public setDiamonds(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;->diamonds:Z

    return-void
.end method

.method public setRunways(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;->mRunways:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
