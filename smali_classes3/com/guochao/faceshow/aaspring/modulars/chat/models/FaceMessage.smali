.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;


# instance fields
.field private mFaceId:Ljava/lang/String;

.field private mFaceUrl:Ljava/lang/String;

.field private mIsSayHi:Z


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 2
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;->parseData([B)V

    return-void
.end method

.method public static from(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;->from(Ljava/lang/String;Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/String;Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;
    .locals 2

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "faceUrl"

    .line 4
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "faceId"

    .line 5
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "msg_type"

    const/4 p1, 0x6

    .line 6
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "isSayHi"

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private parseData([B)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 2
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "faceUrl"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;->mFaceUrl:Ljava/lang/String;

    const-string v0, "faceId"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;->mFaceId:Ljava/lang/String;

    const-string v0, "isSayHi"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;->mIsSayHi:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getFaceUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;->mFaceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

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

    const v1, 0x7f1208ab

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

    const-string v2, "_emoji"

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

.method public isSayHi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;->mIsSayHi:Z

    return v0
.end method

.method public setFaceUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;->mFaceUrl:Ljava/lang/String;

    return-void
.end method

.method public setSayHi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/FaceMessage;->mIsSayHi:Z

    return-void
.end method
