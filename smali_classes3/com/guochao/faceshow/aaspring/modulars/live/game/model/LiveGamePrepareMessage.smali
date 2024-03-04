.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;
.source "SourceFile"


# instance fields
.field private liveGameConfig:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

.field private liveGameUserInfo:Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;-><init>(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    return-void
.end method


# virtual methods
.method public getLiveGameConfig()Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;->liveGameConfig:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->getRoundId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->i(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;->liveGameConfig:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    return-object v0
.end method

.method public getLiveGameUserInfo()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;->liveGameUserInfo:Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    return-object v0
.end method

.method public setLiveGameConfig(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;->liveGameConfig:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    return-void
.end method

.method public setLiveGameUserInfo(Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;->liveGameUserInfo:Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    return-void
.end method
