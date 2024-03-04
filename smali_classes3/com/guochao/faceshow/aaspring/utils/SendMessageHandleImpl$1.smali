.class Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;->sendMessageV2(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;

.field final synthetic val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;

.field final synthetic val$groupID:Ljava/lang/String;

.field final synthetic val$message:Lcom/tencent/imsdk/v2/V2TIMMessage;

.field final synthetic val$priority:I

.field final synthetic val$receiverUserId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->val$receiverUserId:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->val$groupID:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->val$message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    iput p5, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->val$priority:I

    iput-object p6, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;->access$000(Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->val$receiverUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->val$groupID:Ljava/lang/String;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->val$message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    iget v6, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->val$priority:I

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;

    invoke-virtual/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;->sendMessageV2(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$1;->val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onSuccess()V

    :cond_0
    return-void
.end method
