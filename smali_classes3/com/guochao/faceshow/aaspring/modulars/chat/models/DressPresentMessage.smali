.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
.source "SourceFile"


# instance fields
.field private dressIconUrl:Ljava/lang/String;

.field private dressId:Ljava/lang/String;

.field private dressType:I


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->parseMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

.method public static from(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "dress_share"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "dressType"

    .line 3
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "dressId"

    .line 4
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "dressIconUrl"

    .line 5
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "arDressIconUrl"

    .line 6
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "msg_type"

    const/16 p1, 0x1388

    .line 7
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "msg_text"

    const-string p1, "Version is too low to view"

    .line 8
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 10
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p2

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object p1
.end method

.method private parseMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 3
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "arDressIconUrl"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->dressIconUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "dressIconUrl"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->dressIconUrl:Ljava/lang/String;

    :goto_0
    const-string v0, "dressId"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->dressId:Ljava/lang/String;

    const-string v0, "dressType"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->dressType:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getDressIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->dressIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDressId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->dressId:Ljava/lang/String;

    return-object v0
.end method

.method public getDressType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->dressType:I

    return v0
.end method

.method public getItemType()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    return v0

    :cond_0
    const/16 v0, 0x1c

    return v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->dressType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "[%s]%s"

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const v2, 0x7f120219

    .line 2
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f12021a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const v2, 0x7f120216

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f120217

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const v2, 0x7f120213

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f120214

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setDressIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->dressIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setDressId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->dressId:Ljava/lang/String;

    return-void
.end method

.method public setDressType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/DressPresentMessage;->dressType:I

    return-void
.end method
