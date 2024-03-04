.class Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->c(Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder$a;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getConversationInfo()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getConversationInfo()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getMatchMessages()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->e(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder$a;->b:Ljava/lang/String;

    const-string v2, "search"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder$a;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->c()Lb8/a;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;->getConversationInfo()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "otherLanguage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
