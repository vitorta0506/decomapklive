.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "n0"
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

    const/4 p2, 0x0

    .line 1
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$402(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Z)Z

    .line 2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->k()V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0;->d(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/util/List;Z)V

    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$402(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Z)Z

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mPeopleCardViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/MvpChatActivity;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0318

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    invoke-direct {v2, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mPeopleCardViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    .line 6
    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->g(Ljava/lang/String;)V

    .line 7
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-nez v2, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->getChatStatus(Z)V

    .line 9
    :cond_0
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mPeopleCardViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->j(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    .line 10
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addHeaderView(Landroid/view/View;)I

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->setHeaderSpace()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mPeopleCardViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;

    if-eqz v1, :cond_2

    .line 13
    iget-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/PeopleCardViewHolder;->j(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->filterMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 15
    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->setTranslateTag(Ljava/util/List;Z)V

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 17
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->f(ILjava/util/List;)V

    .line 18
    :cond_3
    iget-boolean v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mFirst:Z

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$n0;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mFirst:Z

    .line 21
    :cond_4
    iget-object p3, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mOnPrefetchMessageListeners:Ljava/util/List;

    if-eqz p3, :cond_5

    .line 22
    :goto_1
    iget-object p3, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mOnPrefetchMessageListeners:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5

    .line 23
    iget-object p3, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mOnPrefetchMessageListeners:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$c;

    invoke-interface {p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity$c;->onPrefetchMessage(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
