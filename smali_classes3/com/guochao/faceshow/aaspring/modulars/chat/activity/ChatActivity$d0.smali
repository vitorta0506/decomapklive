.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$302(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;I)I

    :cond_0
    if-nez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$400(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    iput-boolean p1, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mCanScrollDown:Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result p2

    if-gt p1, p2, :cond_2

    const/4 p1, 0x0

    .line 7
    :try_start_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p2

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$402(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Z)Z

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    const/16 v1, 0xf

    invoke-static {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$500(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;ILcom/tencent/imsdk/v2/V2TIMMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :catch_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$402(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Z)Z

    :cond_2
    :goto_1
    return-void
.end method
