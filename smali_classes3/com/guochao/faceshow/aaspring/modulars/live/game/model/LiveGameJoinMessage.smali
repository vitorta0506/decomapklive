.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;
.source "SourceFile"


# instance fields
.field private liveGameUserInfo:Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

.field private position:I


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;-><init>(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    return-void
.end method


# virtual methods
.method public getLiveGameUserInfo()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->liveGameUserInfo:Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->position:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setLiveGameUserInfo(Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->liveGameUserInfo:Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->position:I

    return-void
.end method
