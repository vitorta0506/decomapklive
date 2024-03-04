.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# instance fields
.field private gameInfo:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

.field private winDiamondNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    return-void
.end method

.method public static from(Lcom/guochao/faceshow/bean/UserBean;ILjava/lang/String;Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setLevelId(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;-><init>()V

    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;->gameInfo:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    .line 7
    invoke-virtual {p0, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->setFlag(I)V

    .line 8
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setChatDate(Ljava/lang/Long;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;->setWinDiamondNum(I)V

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;->gameInfo:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->getFlag()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getWinDiamondNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;->winDiamondNum:I

    return v0
.end method

.method public setWinDiamondNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;->winDiamondNum:I

    return-void
.end method
