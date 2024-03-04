.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 3

    const-string v0, "f2f_cmd"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 1
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/F2fCmdMessage;-><init>(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    return-object v1
.end method

.method private static b(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 4

    const-string v0, "msg_type"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 1
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_7

    .line 4
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/16 v2, 0xbb8

    if-eq v0, v2, :cond_3

    const/16 p1, 0xfa0

    if-eq v0, p1, :cond_2

    const/16 p1, 0x1388

    if-eq v0, p1, :cond_1

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object p1

    .line 7
    :cond_2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveShareMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveShareMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object p1

    .line 8
    :cond_3
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->c(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p1, "msgText"

    .line 9
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;Z)V

    return-object p1

    .line 11
    :cond_5
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object p1

    .line 12
    :cond_6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/InputtingMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/InputtingMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :catch_1
    :cond_7
    return-object v1
.end method

.method private static c(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 2
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "game_invite"

    const/4 v2, -0x1

    .line 3
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 5
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->b(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getNickName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->setUserName(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getNickName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->setUserName(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p0

    invoke-interface {p0}, Lb8/d;->c()Lb8/a;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->setUserName(Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->parseMsg()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method private static d(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;
    .locals 9

    const-string v0, "giftInfo"

    const-string v1, "isTrtcGift"

    const-string v2, "recieverName"

    const-string v3, "recieverId"

    const-string v4, "senderName"

    const-string v5, "senderId"

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return-object v6

    .line 1
    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1}, Ljava/lang/String;-><init>([B)V

    .line 2
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v8, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b$e;

    invoke-direct {v8}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b$e;-><init>()V

    .line 3
    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 4
    invoke-virtual {p1, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;

    if-nez p1, :cond_1

    return-object v6

    :cond_1
    const-string v7, "c2c_gift"

    .line 5
    iget-object v8, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->cmd:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v7, :cond_2

    return-object v6

    .line 6
    :cond_2
    :try_start_1
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    iget-object p1, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast p1, Lcom/google/gson/JsonElement;

    new-instance v8, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b$f;

    invoke-direct {v8}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b$f;-><init>()V

    .line 7
    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 8
    invoke-virtual {v7, p1, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-object p1, v6

    :goto_0
    if-nez p1, :cond_3

    return-object v6

    .line 10
    :cond_3
    :try_start_3
    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    invoke-direct {v7, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 11
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v8, ""

    if-nez p0, :cond_4

    move-object p0, v8

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    .line 12
    :goto_1
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    move-object v4, v8

    goto :goto_2

    :cond_5
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 13
    :goto_2
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    move-object v3, v8

    goto :goto_3

    :cond_6
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 14
    :goto_3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 15
    :goto_4
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 16
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    if-eqz v1, :cond_8

    .line 17
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsInt()I

    move-result v1

    .line 18
    invoke-virtual {v7, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->setTrtcGift(I)V

    .line 19
    :cond_8
    invoke-virtual {v7, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->setSenderId(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v7, v4}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->setSenderName(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v7, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->setReceiverId(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v7, v8}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->setReceiverName(Ljava/lang/String;)V

    .line 23
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 24
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    .line 25
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    invoke-virtual {v7, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->setGiftInfo(Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_9
    return-object v7

    :catch_1
    move-exception p0

    .line 26
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5 .. :try_end_5} :catch_2

    return-object v6

    :catch_2
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    return-object v6
.end method

.method private static e(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 4

    const-string v0, "content"

    const-string v1, "messageType"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    .line 1
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 2
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    .line 4
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "type"

    .line 5
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v1, :cond_3

    const/16 v1, 0x136

    if-ne v3, v1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "24HourMessage"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;ZZ)V

    return-object p1

    :cond_1
    const/16 p1, 0xeb

    if-ne v3, p1, :cond_2

    .line 9
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;->parseMsg()V

    return-object p1

    .line 11
    :cond_2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :cond_3
    return-object v2

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :catch_1
    :cond_4
    return-object v2
.end method

.method private static f(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 5

    const-string v0, "actionType"

    const-string v1, "msg"

    const-string v2, "call"

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    .line 1
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "CALL_ACTION"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_3

    .line 4
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v3

    .line 5
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v3

    .line 7
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    .line 8
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 9
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    return-object v3
.end method

.method private static g(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 4

    const-string v0, "type"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "live_voice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "type_id"

    if-nez p1, :cond_1

    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    return-object v1
.end method

.method private static h(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 5

    const-string v0, "trtc_type"

    const-string v1, "call_type"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    .line 1
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_5

    .line 4
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_1
    const/4 p1, 0x1

    if-ne v1, p1, :cond_2

    if-lez v3, :cond_2

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVoiceCustomMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object p1

    :cond_2
    const/4 p1, 0x2

    if-ne v1, p1, :cond_3

    if-lez v3, :cond_3

    .line 8
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCVideoCustomMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object p1

    :cond_3
    const/4 p1, 0x3

    if-ne v1, p1, :cond_4

    .line 9
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :cond_4
    return-object v2

    :catch_0
    move-exception p0

    .line 10
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_5
    return-object v2
.end method

.method private static i(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 2
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b$c;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b$c;-><init>()V

    .line 3
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_1

    return-object v0

    .line 5
    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/JsonElement;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b$d;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b$d;-><init>()V

    .line 6
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    const-string v2, "c2c_fsx1"

    .line 9
    iget-object p1, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->cmd:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "msg_type"

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    .line 12
    :cond_2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    :cond_3
    return-object v0
.end method

.method private static j(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 4
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->parseModel(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;

    invoke-direct {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setRoomId(Ljava/lang/String;)V

    .line 9
    :cond_2
    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    return-object v0

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->d(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    .line 11
    :cond_4
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->h(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v2

    if-eqz v2, :cond_5

    return-object v2

    .line 12
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->f(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v2

    if-eqz v2, :cond_6

    return-object v2

    .line 13
    :cond_6
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->b(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v2

    if-eqz v2, :cond_7

    return-object v2

    .line 14
    :cond_7
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->e(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v2

    if-eqz v2, :cond_8

    return-object v2

    .line 15
    :cond_8
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->i(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 16
    :cond_9
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->g(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    .line 17
    :cond_a
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->a(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 18
    :cond_b
    invoke-static {v1}, Lx8/d;->a(Ljava/lang/String;)Lx8/c;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 19
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/HelloMessage;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/HelloMessage;-><init>(Lx8/c;)V

    return-object p0

    .line 20
    :cond_c
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object v0
.end method

.method public static k(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->n(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setConversationType(I)V

    .line 4
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setConversationId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setConversationType(I)V

    .line 6
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setConversationId(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static l(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 2
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b$a;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b$a;-><init>()V

    .line 3
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_1

    return-object v0

    .line 5
    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/JsonElement;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b$b;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b$b;-><init>()V

    .line 6
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "c2c_fsx1"

    .line 8
    iget-object v3, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    iget p1, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg_type:I

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    const-string p1, "msg_type"

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception p0

    .line 12
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    return-object v0
.end method

.method public static m(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageFactoryRegister;->create(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->k(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object p0

    return-object p0
.end method

.method private static n(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->from(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->from(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    return-object v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupTipsElem()Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMGroupTipsElem;->getType()I

    return-object v2

    .line 7
    :cond_3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VideoMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object v0

    .line 8
    :cond_4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/VoiceMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object v0

    .line 9
    :cond_5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object v0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 11
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 12
    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 13
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfb/a;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 14
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->g(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v1

    goto :goto_0

    :cond_8
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_9

    return-object v1

    .line 15
    :cond_9
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->l(Lcom/tencent/imsdk/v2/V2TIMMessage;[B)Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v2

    .line 16
    :cond_a
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->j(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    .line 17
    :cond_b
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/UnsupportedMessage;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f12009a

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/UnsupportedMessage;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_c
    :goto_1
    return-object v2

    .line 18
    :cond_d
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object v0
.end method
