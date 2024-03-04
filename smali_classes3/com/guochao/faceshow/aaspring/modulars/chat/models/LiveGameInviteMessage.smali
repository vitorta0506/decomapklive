.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
.source "SourceFile"


# instance fields
.field private gameCode:I

.field private gameIcon:Ljava/lang/String;

.field private gameInfoId:J

.field private gameName:Ljava/lang/String;

.field private game_invite:I

.field private liveId:Ljava/lang/String;

.field private mChatUserName:Ljava/lang/String;

.field private mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->mChatUserName:Ljava/lang/String;

    return-void
.end method

.method public static from(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "game_invite"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "gameInfoId"

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "gameCode"

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "gameIcon"

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gameName"

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "liveId"

    .line 7
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "msg_type"

    const/16 p1, 0xbb8

    .line 8
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "msg_text"

    const-string p1, "Version is too low to view"

    .line 9
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 11
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-object p1
.end method

.method private getMsg(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    const-string v0, "gameName"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    .line 3
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameName:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameCode:I

    const v2, 0x7f120498

    if-eq v1, v3, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameName:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f12076a

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameName:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameName:Ljava/lang/String;

    .line 8
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v0, 0x7f1204a2

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->mChatUserName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getGameIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemViewType()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    :goto_0
    return v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public parseMsg()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "gameInfoId"

    .line 3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameInfoId:J

    const-string v0, "gameCode"

    .line 4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameCode:I

    const-string v0, "gameName"

    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameName:Ljava/lang/String;

    const-string v0, "liveId"

    .line 6
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->liveId:Ljava/lang/String;

    const-string v0, "gameIcon"

    .line 7
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameIcon:Ljava/lang/String;

    .line 8
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->getMsg(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->mContent:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setGameIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameIcon:Ljava/lang/String;

    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveGameInviteMessage;->mChatUserName:Ljava/lang/String;

    return-void
.end method
