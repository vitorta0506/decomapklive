.class Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

.field final synthetic val$message:Lcom/tencent/imsdk/v2/V2TIMMessage;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$2;->val$message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->access$100(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)Lcom/guochao/faceshow/aaspring/utils/ChatView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$2;->val$message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-interface {v0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/utils/ChatView;->onSendMessageFail(ILjava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$2;->onSuccess(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method
