.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e$a;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->b(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e$a;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e$a;->b:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$i0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    return-void
.end method


# virtual methods
.method a(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;ILjava/lang/String;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChatActivity"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method b(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Ljava/util/List;)V
    .locals 0
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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e$a;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->filterMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e$a;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e$a;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$e$a;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
