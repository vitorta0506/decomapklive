.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cmd:Ljava/lang/String;

.field private data:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "data"
        }
        value = "msg"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->cmd:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->data:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    return-void
.end method

.method public static getBaseModel(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    .line 3
    iget-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 4
    iget-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 5
    iget v1, v1, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setLevelId(I)V

    .line 6
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setRoomId(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getUserType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setUserType(I)V

    .line 9
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p1
.end method


# virtual methods
.method public buildMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K5:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    return-object v0
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->data:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    return-object v0
.end method

.method public getPriority()I
    .locals 5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "LIVE_CUSTOM_MSG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "LIVE_UPDATE_PK_COINS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "LIVE_VOLUME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "LIVE_LIKE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x1

    :pswitch_1
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x1c0494f6 -> :sswitch_3
        -0x1bcd7233 -> :sswitch_2
        -0xc6211ff -> :sswitch_1
        0x47dcdac6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCmd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->cmd:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->data:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    return-void
.end method
