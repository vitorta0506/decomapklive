.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->loadSearchData(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/tencent/imsdk/v2/V2TIMMessage;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->b:Lcom/tencent/imsdk/v2/V2TIMMessage;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    return-void
.end method


# virtual methods
.method a(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->k()V

    :cond_1
    :goto_0
    return-void
.end method

.method b(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/util/List;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mFirst:Z

    .line 3
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->filterMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;

    invoke-direct {p2}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;-><init>()V

    const/4 v1, 0x4

    .line 5
    invoke-virtual {p2, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setGetType(I)V

    const/16 v1, 0xf

    .line 6
    invoke-virtual {p2, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setCount(I)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->b:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {p2, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setLastMsg(Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setUserID(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e$a;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {v2, p0, v3, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/util/List;)V

    invoke-virtual {v1, p2, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getHistoryMessageList(Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p2, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(ILjava/util/Collection;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->e(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    :cond_1
    :goto_0
    return-void
.end method
