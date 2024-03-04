.class public Lcom/tencent/imsdk/v2/V2TIMConversationResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private conversationResult:Lcom/tencent/imsdk/conversation/ConversationResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversationList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationResult;->conversationResult:Lcom/tencent/imsdk/conversation/ConversationResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationResult;->conversationResult:Lcom/tencent/imsdk/conversation/ConversationResult;

    invoke-virtual {v1}, Lcom/tencent/imsdk/conversation/ConversationResult;->getConversationList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/conversation/Conversation;

    .line 4
    new-instance v3, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-direct {v3}, Lcom/tencent/imsdk/v2/V2TIMConversation;-><init>()V

    .line 5
    invoke-virtual {v3, v2}, Lcom/tencent/imsdk/v2/V2TIMConversation;->setConversation(Lcom/tencent/imsdk/conversation/Conversation;)V

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getNextSeq()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationResult;->conversationResult:Lcom/tencent/imsdk/conversation/ConversationResult;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/ConversationResult;->getNextSeq()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationResult;->conversationResult:Lcom/tencent/imsdk/conversation/ConversationResult;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/ConversationResult;->isFinish()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setConversationResult(Lcom/tencent/imsdk/conversation/ConversationResult;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationResult;->conversationResult:Lcom/tencent/imsdk/conversation/ConversationResult;

    return-void
.end method
