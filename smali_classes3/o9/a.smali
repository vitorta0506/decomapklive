.class public abstract Lo9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;
    .locals 5

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;-><init>()V

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "fromUserId"

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v4

    invoke-interface {v4}, Lb8/d;->c()Lb8/a;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fromNickName"

    .line 5
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "toUserId"

    .line 6
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setExt([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 9
    :goto_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSummary()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setDesc(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 12
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setIgnoreIOSBadge(Z)V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->disablePush(Z)V

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getChat_switch()I

    move-result p1

    if-nez p1, :cond_0

    .line 15
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->disablePush(Z)V

    .line 16
    :cond_0
    instance-of p1, p3, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->disablePush(Z)V

    .line 18
    :cond_1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->shouldAddToServer()Z

    move-result p1

    if-nez p1, :cond_2

    .line 19
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->disablePush(Z)V

    .line 20
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getToNoDisturb()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->disablePush(Z)V

    :cond_3
    return-object v1
.end method

.method public b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;
    .locals 5

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;-><init>()V

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "fromUserId"

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v4

    invoke-interface {v4}, Lb8/d;->c()Lb8/a;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fromNickName"

    .line 5
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setExt([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSummary()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setDesc(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->setIgnoreIOSBadge(Z)V

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->disablePush(Z)V

    .line 13
    instance-of v2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->disablePush(Z)V

    .line 15
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->shouldAddToServer()Z

    move-result p2

    if-nez p2, :cond_1

    .line 16
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->disablePush(Z)V

    .line 17
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getToNoDisturb()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 18
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;->disablePush(Z)V

    :cond_2
    return-object v1
.end method

.method public abstract c(Landroid/content/Context;)V
.end method
