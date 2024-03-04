.class public Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;
.source "SourceFile"


# instance fields
.field private appActivityGiftList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGift;",
            ">;"
        }
    .end annotation
.end field

.field private code:I

.field private gameInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;",
            ">;"
        }
    .end annotation
.end field

.field private gameInfoListV2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;",
            ">;"
        }
    .end annotation
.end field

.field private isMusicActivity:I

.field private matchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation
.end field

.field private nowHourCountryRank:Ljava/lang/Integer;

.field private nowHourRank:Ljava/lang/Integer;

.field private otherAppActivityGiftList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGift;",
            ">;"
        }
    .end annotation
.end field

.field private pk:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

.field private preHourCountryRank:Ljava/lang/Integer;

.field private preHourRank:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppActivityGiftList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGift;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->appActivityGiftList:Ljava/util/List;

    return-object v0
.end method

.method public getAudienceInfoMessage()Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;
    .locals 5

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K5:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2
    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    :goto_0
    const/16 v2, 0x1d4c

    if-lt v0, v2, :cond_1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getAudienceList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    .line 8
    sget-object v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K5:Lcom/google/gson/Gson;

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v0, v3

    .line 10
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->setAudienceList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->code:I

    return v0
.end method

.method public getFullScreenActivityGiftList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGift;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->otherAppActivityGiftList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getGameInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->gameInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getGameInfoListV2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->gameInfoListV2:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getIsMusicActivity()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getBlackShow()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->isMusicActivity:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLiveActivityMessage()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->appActivityGiftList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;->setAppActivityGiftList(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    return-object v0
.end method

.method public getLiveFullScreenActivityMessage()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->otherAppActivityGiftList:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;->setOtherAppActivityGiftList(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    return-object v0
.end method

.method public getMatchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->matchList:Ljava/util/List;

    return-object v0
.end method

.method public getNowHourCountryRank()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->nowHourCountryRank:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNowHourRank()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->nowHourRank:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->pk:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    return-object v0
.end method

.method public getPreHourCountryRank()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->preHourCountryRank:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPreHourRank()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->preHourRank:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTopInfoMessage()Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;
    .locals 10

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->appActivityGiftList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;

    .line 5
    new-instance v4, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;-><init>()V

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->getAppActivityGiftEntityList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->getAppActivityGiftEntityList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;

    .line 9
    new-instance v8, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;

    invoke-direct {v8}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;-><init>()V

    .line 10
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getDuringNum()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->setDuringNum(I)V

    .line 11
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getGiftId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->setGiftId(I)V

    .line 12
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getGiftUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->setGiftUrl(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->getRank()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->setRank(I)V

    .line 14
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->setAppActivityGiftEntityList(Ljava/util/List;)V

    .line 16
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/aaspring/beans/ActivityGift;->setId(Ljava/lang/String;)V

    .line 17
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->setAppActivityGiftList(Ljava/util/List;)V

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getAudienceList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getAudienceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    .line 22
    new-instance v4, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;-><init>()V

    .line 23
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setAvatar(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getImg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setImg(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setType(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;->setUserId(Ljava/lang/String;)V

    .line 27
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->setAudienceList(Ljava/util/List;)V

    .line 29
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getFcoin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->setFcoin(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getLikeNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->setLikeNum(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->getOnlineNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->setOnlineNum(Ljava/lang/String;)V

    return-object v0
.end method

.method public setAppActivityGiftList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGift;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->appActivityGiftList:Ljava/util/List;

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->code:I

    return-void
.end method

.method public setFullScreenActivityGiftList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ActivityGift;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->otherAppActivityGiftList:Ljava/util/List;

    return-void
.end method

.method public setGameInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->gameInfoList:Ljava/util/List;

    return-void
.end method

.method public setGameInfoListV2(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->gameInfoListV2:Ljava/util/List;

    return-void
.end method

.method public setIsMusicActivity(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->isMusicActivity:I

    return-void
.end method

.method public setMatchList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->matchList:Ljava/util/List;

    return-void
.end method

.method public setNowHourCountryRank(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->nowHourCountryRank:Ljava/lang/Integer;

    return-void
.end method

.method public setNowHourRank(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->nowHourRank:Ljava/lang/Integer;

    return-void
.end method

.method public setPk(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->pk:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    return-void
.end method

.method public setPreHourCountryRank(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->preHourCountryRank:Ljava/lang/Integer;

    return-void
.end method

.method public setPreHourRank(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->preHourRank:Ljava/lang/Integer;

    return-void
.end method
