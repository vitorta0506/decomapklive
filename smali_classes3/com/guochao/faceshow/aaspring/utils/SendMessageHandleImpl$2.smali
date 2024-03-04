.class Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;->sendMessageV2(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;IZLcom/tencent/imsdk/v2/V2TIMCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;

.field final synthetic val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$2;->val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$2;->val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$2;->val$callBack:Lcom/tencent/imsdk/v2/V2TIMCallback;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/tencent/imsdk/v2/V2TIMCallback;->onSuccess()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandleImpl$2;->onSuccess(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method
