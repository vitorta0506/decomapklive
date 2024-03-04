.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;
.source "SourceFile"


# instance fields
.field private mMessageText:Ljava/lang/String;

.field private mMessageType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->readMessage()V

    return-void
.end method

.method public static from(ILjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;
    .locals 7

    const-string v0, "msg_type"

    const-string v1, "msg_text"

    const-string v2, ""

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    .line 1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_0
    new-instance v3, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;

    invoke-direct {v3}, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;-><init>()V

    const-string v4, "c2c_fsx1"

    .line 7
    iput-object v4, v3, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->cmd:Ljava/lang/String;

    .line 8
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    .line 9
    iput p0, v3, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg_type:I

    .line 10
    check-cast v4, Ljava/util/Map;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v5

    const-string v6, "userId"

    invoke-static {v5, v6}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "senderId"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v4, v3, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v5

    const-string v6, "nickname"

    invoke-static {v5, v6}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "senderName"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v4, v3, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    const-string v5, "recieverName"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v4, v3, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    const-string v5, "recieverId"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v4, v3, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, v3, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :try_start_1
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage$a;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage$a;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 18
    invoke-virtual {p0, v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :goto_1
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object p0
.end method

.method private readMessage()V
    .locals 7

    const-string v0, "msg_text"

    const-string v1, "msg_type"

    .line 1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->setMessageType(I)V

    const/4 v2, 0x1

    .line 6
    :cond_0
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->setMessageText(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 8
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    return-void

    .line 9
    :cond_2
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage$b;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;)V

    .line 10
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 11
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;

    const/4 v3, 0x0

    .line 12
    :try_start_1
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, v2, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast v2, Lcom/google/gson/JsonElement;

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage$c;

    invoke-direct {v5, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;)V

    .line 13
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 14
    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_1
    :try_start_2
    const-string v2, "senderId"

    .line 16
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "senderName"

    .line 17
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "recieverId"

    .line 18
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "recieverName"

    .line 19
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 23
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->setMessageType(I)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->setMessageText(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->setSenderId(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->setSenderName(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->setReceiverId(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v6}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/BaseCustomMessage;->setReceiverName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method


# virtual methods
.method public getItemViewType()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    return v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->mMessageText:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->mMessageType:I

    return v0
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->mMessageText:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->mMessageType:I

    return-void
.end method

.method public shouldAddToServer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showNotification()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
