.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# instance fields
.field private transient currentResult:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private drawHeight:I

.field private drawWidth:I

.field private faceTrackGift:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

.field private giftSendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
            ">;"
        }
    .end annotation
.end field

.field private isGiftAllSend:I

.field private isHelloGift:I

.field private luckyGiftResults:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;",
            ">;"
        }
    .end annotation
.end field

.field private pointPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private transient selfSend:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->selfSend:Z

    return-void
.end method

.method public static from(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setItemBean(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    return-object p0
.end method

.method public static isFaceGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getAndroidFaceEffectUrlV2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getAndroidFaceMd5V2()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCurrentResult()Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getAccountId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentReward()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getAccountId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getAwardMultiple()I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getCurrentRewardType()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getAccountId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getWinType()I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getDrawHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->drawHeight:I

    return v0
.end method

.method public getDrawWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->drawWidth:I

    return v0
.end method

.method public getGiftBCoinValue()I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftNum:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int v0, v0, v1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGiftSendList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->giftSendList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->giftSendList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->giftSendList:Ljava/util/List;

    return-object v0
.end method

.method public getIsGiftAllSend()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isGiftAllSend:I

    return v0
.end method

.method public getIsHelloGift()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isHelloGift:I

    return v0
.end method

.method public getItemBean()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->faceTrackGift:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    return-object v0
.end method

.method public getLuckyGiftResults()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    return-object v0
.end method

.method public getPointPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->pointPaths:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getRewardForUser(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getAnchorRateDiamond()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getGiftBCoinValue()I

    move-result p1

    return p1
.end method

.method public getTotalReward()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getAwardMultiple()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public getTotalRewardDiamonds()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getTotalDiamonds()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public isHandyGiftMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->pointPaths:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSelfSend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->selfSend:Z

    return v0
.end method

.method public setDrawHeight(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->drawHeight:I

    return-void
.end method

.method public setDrawWidth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->drawWidth:I

    return-void
.end method

.method public setGiftSendList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->giftSendList:Ljava/util/List;

    return-void
.end method

.method public setIsGiftAllSend(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isGiftAllSend:I

    return-void
.end method

.method public setIsHelloGift(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isHelloGift:I

    return-void
.end method

.method public setItemBean(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->faceTrackGift:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    return-void
.end method

.method public setLuckyGiftResults(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->luckyGiftResults:Ljava/util/List;

    return-void
.end method

.method public setPointPaths(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->pointPaths:Ljava/util/List;

    return-void
.end method

.method public setSelfSend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->selfSend:Z

    return-void
.end method
