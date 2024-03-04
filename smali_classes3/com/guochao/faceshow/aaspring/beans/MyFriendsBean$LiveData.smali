.class public Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveData"
.end annotation


# instance fields
.field private isLive:I

.field private liveId:I

.field private liveImg:Ljava/lang/String;

.field private liveType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->isLive:I

    return p0
.end method


# virtual methods
.method public getIsLive()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->isLive:I

    return v0
.end method

.method public getLiveId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->liveId:I

    return v0
.end method

.method public getLiveImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->liveImg:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->liveType:I

    return v0
.end method

.method public obtainData()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->liveId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->liveType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveType(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->liveImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveImg(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->liveImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    return-object v0
.end method

.method public setIsLive(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->isLive:I

    return-void
.end method

.method public setLiveId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->liveId:I

    return-void
.end method

.method public setLiveImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->liveImg:Ljava/lang/String;

    return-void
.end method

.method public setLiveType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->liveType:I

    return-void
.end method
