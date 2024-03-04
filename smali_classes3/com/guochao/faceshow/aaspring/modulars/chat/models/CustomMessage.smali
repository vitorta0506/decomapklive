.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;
    }
.end annotation


# static fields
.field public static final C2C_SEND_FSX1_CMD:Ljava/lang/String; = "c2c_fsx1"

.field public static final C2C_SEND_GIFT_CMD:Ljava/lang/String; = "c2c_gift"

.field public static final ONE_TO_ONE:Ljava/lang/String; = "122"

.field public static final ONE_TO_ONE_GIFT:Ljava/lang/String; = "121"

.field public static final TYPE_CARD:Ljava/lang/String; = "120"

.field public static final TYPE_GIF:Ljava/lang/String; = "114"

.field public static final TYPE_GIFT:Ljava/lang/String; = "115"

.field public static final TYPE_MUSIC:Ljava/lang/String; = "119"

.field public static final TYPE_TYPING:Ljava/lang/String; = "14"


# instance fields
.field private TAG:Ljava/lang/String;

.field private c2cPrivateChatGiftInfo:Ljava/lang/String;

.field private c2cPrivateChatGiftRecieverId:Ljava/lang/String;

.field public c2cPrivateChatGiftRecieverName:Ljava/lang/String;

.field private c2cPrivateChatGiftSendId:Ljava/lang/String;

.field private c2cPrivateChatGiftSendName:Ljava/lang/String;

.field private c2cPrivateChatMsgTips:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private gift:Ljava/lang/String;

.field private giftUrl:Ljava/lang/String;

.field private imgurl:Ljava/lang/String;

.field private musicImg:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field public type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->gift:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->imgurl:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->parsePrivateChatSendGiftMsg([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->parse([B)V

    return-void
.end method

.method private parse([B)V
    .locals 8

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->INVALID:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    if-eqz p1, :cond_6

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "userAction"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "120"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "119"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v3, "115"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "114"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v3, "14"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->CARD:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    goto :goto_1

    .line 7
    :cond_2
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->MUSIC:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    goto :goto_1

    .line 8
    :cond_3
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->GIFT:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    goto :goto_1

    .line 9
    :cond_4
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->GIF:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    goto :goto_1

    .line 10
    :cond_5
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->TYPING:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    const-string v1, "actionParam"

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->data:Ljava/lang/String;

    const-string v1, "EIMAMSG_InputStatus_End"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 14
    :catch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->TAG:Ljava/lang/String;

    const-string v0, "parse json error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x623 -> :sswitch_4
        0xbe14 -> :sswitch_3
        0xbe15 -> :sswitch_2
        0xbe19 -> :sswitch_1
        0xbe2f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getC2cPrivateChatGiftInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->c2cPrivateChatGiftInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getC2cPrivateChatGiftRecieverName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->c2cPrivateChatGiftRecieverName:Ljava/lang/String;

    return-object v0
.end method

.method public getC2cPrivateChatMsgTips()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->c2cPrivateChatMsgTips:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->C2C_SEND_GIFT:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->c2cPrivateChatGiftInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 3
    :cond_1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->GIF:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    if-ne v0, v1, :cond_0

    const-string p1, "[gif]"

    return-object p1

    .line 2
    :cond_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->GIFT:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    const v2, 0x7f1203c7

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->TYPING:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    const-string v3, ""

    if-ne v0, v1, :cond_2

    return-object v3

    .line 5
    :cond_2
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->C2C_SEND_GIFT:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    if-ne v0, v1, :cond_3

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v3
.end method

.method public getType()Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    return-object v0
.end method

.method public parsePrivateChatSendGiftMsg([B)Z
    .locals 6

    const-string v0, "msg_text"

    const-string v1, "giftInfo"

    const-string v2, "c2c_gift"

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    .line 1
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 2
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$a;

    invoke-direct {v5, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;)V

    .line 3
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 4
    invoke-virtual {p1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;

    if-nez p1, :cond_1

    return v3

    .line 5
    :cond_1
    iget-object v4, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v5, "c2c_fsx1"

    if-nez v4, :cond_2

    :try_start_1
    iget-object v4, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->cmd:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v3

    .line 6
    :cond_2
    iget-object v4, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->C2C_SEND_GIFT:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    .line 8
    :cond_3
    iget-object v2, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->cmd:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->C2C_SEND_FSX1:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    iput-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    const/4 v2, 0x0

    .line 10
    :try_start_2
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object p1, p1, Lcom/guochao/faceshow/facetoface/data/F2FCommonJson;->msg:Ljava/lang/Object;

    check-cast p1, Lcom/google/gson/JsonElement;

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$b;

    invoke-direct {v5, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;)V

    .line 11
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 12
    invoke-virtual {v4, p1, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    if-nez v2, :cond_5

    return v3

    :cond_5
    :try_start_4
    const-string p1, "senderId"

    .line 14
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->c2cPrivateChatGiftSendId:Ljava/lang/String;

    const-string p1, "senderName"

    .line 15
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->c2cPrivateChatGiftSendName:Ljava/lang/String;

    const-string p1, "recieverId"

    .line 16
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->c2cPrivateChatGiftRecieverId:Ljava/lang/String;

    const-string p1, "recieverName"

    .line 17
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->c2cPrivateChatGiftRecieverName:Ljava/lang/String;

    .line 18
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 19
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->c2cPrivateChatGiftInfo:Ljava/lang/String;

    .line 20
    :cond_6
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 21
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->c2cPrivateChatMsgTips:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    .line 22
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5 .. :try_end_5} :catch_2

    return v3

    :catch_2
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    return v3
.end method

.method public setType(Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    return-void
.end method

.method public showNotification()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage;->type:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->TYPING:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->INVALID:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;->CARD:Lcom/guochao/faceshow/aaspring/modulars/chat/models/CustomMessage$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->showNotification()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
