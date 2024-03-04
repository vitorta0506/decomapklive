.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# instance fields
.field private liveGameBean:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

.field private roundId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->liveGameBean:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    return-void
.end method


# virtual methods
.method public getLiveGameBean()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->liveGameBean:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    return-object v0
.end method

.method public getRoundId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->roundId:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->liveGameBean:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0xb0c

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setLiveGameBean(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->liveGameBean:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    return-void
.end method

.method public setRoundId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->roundId:Ljava/lang/String;

    return-void
.end method
