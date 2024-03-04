.class public interface abstract Lcom/guochao/faceshow/aaspring/utils/ChatView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onSendMessageFail(ILjava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
.end method

.method public abstract sendImage()V
.end method

.method public abstract sendText()V
.end method

.method public abstract sending()V
.end method

.method public abstract showDraft(Ljava/lang/String;)V
.end method

.method public abstract showMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
.end method

.method public abstract showMessage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showToast(Ljava/lang/String;)V
.end method
