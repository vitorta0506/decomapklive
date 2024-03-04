.class Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->getMessage(Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Ljava/util/List<",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->access$202(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;Z)Z

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get message error"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChatPresenter"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$3;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->access$202(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;Z)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->access$100(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)Lcom/guochao/faceshow/aaspring/utils/ChatView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ChatView;->showMessage(Ljava/util/List;)V

    return-void
.end method
