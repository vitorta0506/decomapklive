.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameInfo"
.end annotation


# instance fields
.field private confDiamondNum:I

.field private confUserNum:I

.field private diamondNum:I

.field private flag:I

.field private gameInfoId:J

.field private luckyUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;",
            ">;"
        }
    .end annotation
.end field

.field private removeCount:I

.field private roundId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfDiamondNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->confDiamondNum:I

    return v0
.end method

.method public getConfUserNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->confUserNum:I

    return v0
.end method

.method public getDiamondNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->diamondNum:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->flag:I

    return v0
.end method

.method public getGameInfoId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->gameInfoId:J

    return-wide v0
.end method

.method public getLuckyUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->luckyUsers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->luckyUsers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRemoveCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->removeCount:I

    return v0
.end method

.method public getRoundId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->roundId:Ljava/lang/String;

    return-object v0
.end method

.method public setConfDiamondNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->confDiamondNum:I

    return-void
.end method

.method public setConfUserNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->confUserNum:I

    return-void
.end method

.method public setDiamondNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->diamondNum:I

    return-void
.end method

.method public setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->flag:I

    return-void
.end method

.method public setGameInfoId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->gameInfoId:J

    return-void
.end method

.method public setLuckyUsers(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;

    .line 15
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;-><init>()V

    .line 16
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;->getUserId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->setUserId(J)V

    .line 17
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;->getBackDiamond()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->setBackDiamond(I)V

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_1
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->luckyUsers:Ljava/util/List;

    return-void
.end method

.method public setLuckyUsers(Ljava/util/List;II)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;-><init>()V

    .line 4
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->setLogo(Ljava/lang/String;)V

    .line 5
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->setNickName(Ljava/lang/String;)V

    .line 6
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getRemovePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->setRemovePosition(I)V

    .line 7
    invoke-virtual {v2, p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->setConfDiamondNum(I)V

    .line 8
    invoke-virtual {v2, p3}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->setDiamond(I)V

    .line 9
    :try_start_0
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->setUserId(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->luckyUsers:Ljava/util/List;

    return-void
.end method

.method public setRemoveCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->removeCount:I

    return-void
.end method

.method public setRoundId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->roundId:Ljava/lang/String;

    return-void
.end method
