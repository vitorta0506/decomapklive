.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->from(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;Lcom/tencent/imsdk/v2/V2TIMConversation;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setConversationInfoDetail(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->R0(Z)V

    :cond_1
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$d;->a(Ljava/util/List;)V

    return-void
.end method
