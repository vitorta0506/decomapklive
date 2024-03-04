.class public Lcom/guochao/faceshow/utils/TXIMUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_MSG_IS_FRIEND:Ljava/lang/String; = "msg_type_isfriend"

.field static LIMIT_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "TXIMUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getElem(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/tencent/imsdk/v2/V2TIMElem;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getElemType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getFaceElem()Lcom/tencent/imsdk/v2/V2TIMFaceElem;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getVideoElem()Lcom/tencent/imsdk/v2/V2TIMVideoElem;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSoundElem()Lcom/tencent/imsdk/v2/V2TIMSoundElem;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getImageElem()Lcom/tencent/imsdk/v2/V2TIMImageElem;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getCustomElem()Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTextElem()Lcom/tencent/imsdk/v2/V2TIMTextElem;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static joinGroup(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/utils/TXIMUtils$3;

    invoke-direct {v1}, Lcom/guochao/faceshow/utils/TXIMUtils$3;-><init>()V

    const-string v2, "123"

    invoke-virtual {v0, p0, v2, v1}, Lcom/tencent/imsdk/v2/V2TIMManager;->joinGroup(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public static loginTIM()V
    .locals 1

    .line 1
    sget v0, Lcom/guochao/faceshow/utils/TXIMUtils;->LIMIT_COUNT:I

    invoke-static {v0}, Lcom/guochao/faceshow/utils/TXIMUtils;->loginTIM(I)V

    return-void
.end method

.method public static loginTIM(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/guochao/faceshow/utils/TXIMUtils;->loginTIM(ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public static loginTIM(ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 3

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string/jumbo v2, "txSig"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1, p0, p1}, Lcom/guochao/faceshow/utils/TXIMUtils;->loginTIM(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public static loginTIM(Ljava/lang/String;Ljava/lang/String;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 0

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->Z()V

    return-void
.end method

.method public static logoutTIM()V
    .locals 2

    .line 1
    sget v0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->LIMIT_COUNT:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/TXIMUtils;->logoutTIM(ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public static logoutTIM(ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->setLoginRetryCount(I)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/TXIMLogoutImpl;->logoutTIM(Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public static quitGroup(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/utils/TXIMUtils$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/TXIMUtils$1;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lcom/guochao/faceshow/utils/TXIMUtils;->quitGroup(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public static quitGroup(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/imsdk/v2/V2TIMManager;->quitGroup(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/guochao/faceshow/utils/TXIMUtils$2;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/TXIMUtils$2;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->deleteConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public static setMessageFriendInfo(ZLcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/utils/TXIMUtils;->getElem(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;-><init>()V

    .line 4
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    if-eqz p0, :cond_1

    const-string p0, "1"

    goto :goto_0

    :cond_1
    const-string p0, "0"

    :goto_0
    const-string v2, "msg_type_isfriend"

    .line 5
    invoke-virtual {v1, v2, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->setData([B)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMElem;->appendElem(Lcom/tencent/imsdk/v2/V2TIMElem;)V

    :cond_2
    return-void
.end method
