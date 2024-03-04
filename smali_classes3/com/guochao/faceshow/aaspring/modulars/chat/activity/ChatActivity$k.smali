.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$002(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;Z)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$100(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mInputtingViewHolder:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/InputtingViewHolder;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$k;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatMessageAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$100(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->removeFooterView(Landroid/view/View;)V

    return-void
.end method
