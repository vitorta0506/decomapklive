.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage$CmdCallModel;
    }
.end annotation


# static fields
.field public static final CALL_CMD:Ljava/lang/String; = "CALL_ACTION"


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage;->buildMessage(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

.method public static buildMessage(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage$CmdCallModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage$CmdCallModel;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage$a;)V

    const-string v1, "CALL_ACTION"

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage$CmdCallModel;->call:Ljava/lang/String;

    .line 3
    iput-object p0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage$CmdCallModel;->msg:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p0

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createCustomMessage([B)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMessageModel()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "\n"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage$CmdCallModel;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage$CmdCallModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/message/TRTCSignalMessage$CmdCallModel;->msg:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    :goto_1
    return-object v1
.end method

.method public showNotification()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
