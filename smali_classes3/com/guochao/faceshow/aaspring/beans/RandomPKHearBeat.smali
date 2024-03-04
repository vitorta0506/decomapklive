.class public Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;
    }
.end annotation


# instance fields
.field private matchUserInfo:Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;

.field private roomId:Ljava/lang/String;

.field private status:I

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatchUserInfo()Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->matchUserInfo:Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->status:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->timestamp:J

    return-wide v0
.end method

.method public setMatchUserInfo(Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->matchUserInfo:Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->roomId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->status:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->timestamp:J

    return-void
.end method
