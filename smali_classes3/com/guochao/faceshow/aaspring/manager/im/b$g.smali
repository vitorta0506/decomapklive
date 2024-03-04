.class Lcom/guochao/faceshow/aaspring/manager/im/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b;->B0(ILjava/util/List;Z)V
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
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field final synthetic f:Lcom/tencent/imsdk/v2/V2TIMConversation;

.field final synthetic g:I

.field final synthetic h:Lcom/guochao/faceshow/aaspring/manager/im/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/b;ILjava/util/List;ZZLcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/tencent/imsdk/v2/V2TIMConversation;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->h:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->b:Ljava/util/List;

    iput-boolean p4, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->c:Z

    iput-boolean p5, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->d:Z

    iput-object p6, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    iput-object p7, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->f:Lcom/tencent/imsdk/v2/V2TIMConversation;

    iput p8, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v7, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 3
    invoke-static {v10}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->k(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 4
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSummary()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_0
    move-object v12, v0

    .line 5
    :goto_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    if-nez v6, :cond_1

    move-object v7, v11

    const/4 v6, 0x1

    :cond_1
    if-eqz v11, :cond_2

    .line 6
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isRead()Z

    move-result v12

    if-nez v12, :cond_2

    iget-boolean v12, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->d:Z

    if-nez v12, :cond_2

    add-int/lit8 v8, v8, 0x1

    .line 7
    :cond_2
    invoke-virtual {v10}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSelf()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-eqz v11, :cond_4

    .line 8
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isHasFriendMark()Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v9, :cond_4

    .line 9
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isGreetingMessage()Z

    move-result v5

    xor-int/2addr v5, v2

    const/4 v9, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSelfSent(Z)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setIsDraft(Z)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    xor-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setGreetingMessage(Z)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isGreetingConversation()V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSendGreetingConversation()V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->checkOneDay()V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->f:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getDraftText()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->from(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    move-result-object v7

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setIsDraft(Z)V

    :cond_6
    if-nez v7, :cond_7

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->f:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getLastMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 21
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->k(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v7

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1, v7}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsg(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isDraft()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->f:Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getDraftTimestamp()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-virtual {p1, v3, v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgTime(J)V

    .line 25
    :cond_8
    iget p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->g:I

    add-int/2addr p1, v2

    .line 26
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->d:Z

    if-eqz v0, :cond_9

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    goto :goto_2

    .line 28
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->e:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0, v8}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    .line 29
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->h:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->b:Ljava/util/List;

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->c:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->B0(ILjava/util/List;Z)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->h:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->a:I

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->b:Ljava/util/List;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->c:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->B0(ILjava/util/List;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b$g;->a(Ljava/util/List;)V

    return-void
.end method
