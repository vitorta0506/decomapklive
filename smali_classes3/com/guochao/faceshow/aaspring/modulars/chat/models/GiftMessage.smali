.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;
.source "SourceFile"


# instance fields
.field private isTrtcGift:I

.field private mGiftInfo:Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

.method public static from(Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;Ljava/lang/String;Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;

    invoke-direct {v0}, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;-><init>()V

    const-string v1, "c2c_gift"

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->cmd:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    .line 4
    check-cast v1, Ljava/util/Map;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const-string v3, "userId"

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "senderId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const-string v3, "nickname"

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "senderName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "recieverName"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    const-string v1, "recieverId"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "isTrtcGift"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object p2, v0, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    const-string v1, "giftInfo"

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :try_start_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage$a;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage$a;-><init>()V

    .line 12
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 13
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    .line 15
    :goto_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 16
    invoke-virtual {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->setGiftInfo(Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;)V

    .line 17
    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->setTrtcGift(I)V

    return-object p2
.end method


# virtual methods
.method public getGiftInfo()Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->mGiftInfo:Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    return-object v0
.end method

.method public getItemViewType()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTransformedOtherLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f1203c7

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getTransformedOtherLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_gift"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->MESSAGE_TIPS_MULTI_LANGUAGE:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAnimationPlayed()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getLocalCustomInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOnlineMessage()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->isTrtcGift:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTrtcGift()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->isTrtcGift:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAnimationPlayed()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->setLocalCustomInt(I)V

    return-void
.end method

.method public setGiftInfo(Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->mGiftInfo:Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    return-void
.end method

.method public setTrtcGift(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->isTrtcGift:I

    return-void
.end method
