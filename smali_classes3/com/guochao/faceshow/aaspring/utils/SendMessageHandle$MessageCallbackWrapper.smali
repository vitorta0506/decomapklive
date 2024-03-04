.class Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageCallbackWrapper"
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
.field mCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMSendCallback<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;->mCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;->mCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;->mCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMSendCallback;->onProgress(I)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;->mCallback:Lcom/tencent/imsdk/v2/V2TIMSendCallback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle$MessageCallbackWrapper;->onSuccess(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method
