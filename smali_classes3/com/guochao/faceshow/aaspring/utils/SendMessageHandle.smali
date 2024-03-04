.class public Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendC2CMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V
    .locals 8
    .param p2    # Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;",
            "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    new-instance v7, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;

    invoke-direct {v7, p3}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;-><init>(Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    return-void
.end method

.method public static sendC2CMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendC2CMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    return-void
.end method

.method public static sendC2CMessage(Ljava/lang/String;ZLcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;",
            "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/TXIMUtils;->setMessageFriendInfo(ZLcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 4
    invoke-static {p0, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendC2CMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    return-void
.end method

.method public static sendMessage(Lcom/tencent/imsdk/v2/V2TIMConversation;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0, v0}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMConversation;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    return-void
.end method

.method public static sendMessage(Lcom/tencent/imsdk/v2/V2TIMConversation;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;",
            "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getGroupID()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v7, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;

    invoke-direct {v7, p3}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;-><init>(Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    return-void
.end method

.method public static sendMessage(Lcom/tencent/imsdk/v2/V2TIMConversation;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMConversation;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    return-void
.end method

.method public static sendMessage(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;->sendMessageV2(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public static sendOnLineC2CMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V
    .locals 8
    .param p2    # Lcom/tencent/imsdk/v2/V2TIMSendCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    new-instance v7, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;

    invoke-direct {v7, p2}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;-><init>(Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    return-void
.end method

.method public static sendOnlineMessage(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;->sendOnlineMessageV2(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method
