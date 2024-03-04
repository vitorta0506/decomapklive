.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->afterGetConversation()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mConversationInfo:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setNewConversation(Z)V

    :cond_0
    return-void
.end method
