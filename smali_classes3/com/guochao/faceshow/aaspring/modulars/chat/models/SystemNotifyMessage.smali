.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
.source "SourceFile"


# instance fields
.field private imgUrl:Ljava/lang/String;

.field private level:I

.field private mEventMessageModel:Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mMessageContent:Lorg/json/JSONObject;

.field private final typeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 2
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->mMessageContent:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->typeId:Ljava/lang/String;

    const-string p1, "level"

    const/4 p2, -0x1

    .line 4
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->level:I

    const-string p1, "imgUrl"

    const-string p2, ""

    .line 5
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->imgUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEventMessageModel()Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->mEventMessageModel:Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->mMessageContent:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->mEventMessageModel:Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->mEventMessageModel:Lcom/guochao/faceshow/aaspring/beans/EventMessageModel;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->isOnlineMessage()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->level:I

    return v0
.end method

.method public getMessageContent()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->mMessageContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMessageMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->mMessageContent:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/MapUtils;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iarGoHNtFX2Sbp3RrJqBWwhQEgWHjN5u"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120640

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->level:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method public isOnlineMessage()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iarGoHNtFX2Sbp3RrJqBWwhQEgWHjN5u"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->level:I

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
