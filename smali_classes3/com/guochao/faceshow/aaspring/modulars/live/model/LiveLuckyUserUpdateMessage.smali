.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private gameInfo:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

.field private roundId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    return-void
.end method

.method public static from(Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;III)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/bean/UserBean;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;IIJ",
            "Ljava/lang/String;",
            "III)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 1
    invoke-static/range {v0 .. v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->from(Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;ILjava/util/List;III)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;ILjava/util/List;III)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/bean/UserBean;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;IIJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;",
            ">;III)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;"
        }
    .end annotation

    move-object v0, p6

    move-object/from16 v1, p8

    move/from16 v2, p9

    .line 3
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;-><init>()V

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setLevelId(I)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setChatDate(Ljava/lang/Long;)V

    .line 10
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;-><init>()V

    move/from16 v5, p11

    .line 11
    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->setFlag(I)V

    move-object v5, p1

    move/from16 v6, p10

    .line 12
    invoke-virtual {v4, p1, v2, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->setLuckyUsers(Ljava/util/List;II)V

    move v5, p2

    .line 13
    invoke-virtual {v4, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->setConfUserNum(I)V

    move v5, p3

    .line 14
    invoke-virtual {v4, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->setDiamondNum(I)V

    move v5, p7

    .line 15
    invoke-virtual {v4, p7}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->setRemoveCount(I)V

    move-wide v5, p4

    .line 16
    invoke-virtual {v4, p4, p5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->setGameInfoId(J)V

    .line 17
    invoke-virtual {v4, p6}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->setRoundId(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 18
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 19
    invoke-virtual {v4, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->setLuckyUsers(Ljava/util/List;)V

    .line 20
    :cond_1
    invoke-virtual {v4, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;->setConfDiamondNum(I)V

    .line 21
    invoke-virtual {v3, p6}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->setRoundId(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->setGameInfo(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;)V

    return-object v3
.end method

.method public static from(Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;JLjava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/bean/UserBean;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;",
            ">;J",
            "Ljava/lang/String;",
            "I)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object v8, p1

    move/from16 v11, p5

    .line 2
    invoke-static/range {v0 .. v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->from(Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;ILjava/util/List;III)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGameInfo()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->gameInfo:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    return-object v0
.end method

.method public getRoundId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->roundId:Ljava/lang/String;

    return-object v0
.end method

.method public setGameInfo(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->gameInfo:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage$GameInfo;

    return-void
.end method

.method public setRoundId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->roundId:Ljava/lang/String;

    return-void
.end method
