.class Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LIMIT_SEND_COUNT:I = 0x3


# instance fields
.field private mRetryCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;->mRetryCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;->mRetryCount:I

    return p0
.end method

.method private sendMessageV2(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;IZLcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 8

    .line 3
    new-instance v6, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    invoke-direct {v6}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;-><init>()V

    .line 4
    new-instance v7, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$2;

    invoke-direct {v7, p0, p6}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 5
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method sendMessageV2(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;->mRetryCount:I

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;->sendMessageV2(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;IZLcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method sendOnlineMessageV2(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;->sendMessageV2(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;IZLcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method
