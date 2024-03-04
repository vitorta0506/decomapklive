.class public Lcom/guochao/faceshow/aaspring/modulars/chat/models/UnsupportedMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->createTextMessage(Ljava/lang/String;)Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;-><init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method


# virtual methods
.method public isSelf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
