.class Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;-><init>(Lcom/guochao/faceshow/aaspring/utils/ChatView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMConversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->access$002(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;Lcom/tencent/imsdk/v2/V2TIMConversation;)Lcom/tencent/imsdk/v2/V2TIMConversation;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->access$000(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getDraftText()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->access$100(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)Lcom/guochao/faceshow/aaspring/utils/ChatView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->access$100(Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;)Lcom/guochao/faceshow/aaspring/utils/ChatView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ChatView;->showDraft(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter$1;->onSuccess(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    return-void
.end method
