.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$j0;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j0"
.end annotation


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->k()V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/util/List;)V
    .locals 5
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
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mPeopleCardViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d0318

    iget-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    invoke-direct {v3, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mPeopleCardViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    .line 5
    iget-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->g(Ljava/lang/String;)V

    .line 6
    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->getChatStatus(Z)V

    .line 8
    :cond_0
    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mPeopleCardViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    iget-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->j(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    .line 9
    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->setHeaderSpace()V

    .line 11
    :cond_1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->filterMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->setTranslateTag(Ljava/util/List;Z)V

    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 14
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v0, v2, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->f(ILjava/util/List;)V

    .line 15
    :cond_2
    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$402(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Z)Z

    .line 16
    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->k()V

    .line 17
    new-instance p2, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;

    invoke-direct {p2}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;-><init>()V

    .line 18
    invoke-virtual {p2, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setCount(I)V

    .line 19
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setUserID(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p2, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setGetType(I)V

    .line 22
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m0;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$m0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {v0, p2, v1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getHistoryMessageList(Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method
