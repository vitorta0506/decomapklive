.class public Lcom/tencent/imsdk/v2/V2TIMConversationOperationResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private operationResult:Lcom/tencent/imsdk/conversation/ConversationOperationResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversationID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationOperationResult;->operationResult:Lcom/tencent/imsdk/conversation/ConversationOperationResult;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/ConversationOperationResult;->getConversationID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationOperationResult;->operationResult:Lcom/tencent/imsdk/conversation/ConversationOperationResult;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/ConversationOperationResult;->getResultCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getResultInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMConversationOperationResult;->operationResult:Lcom/tencent/imsdk/conversation/ConversationOperationResult;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/imsdk/conversation/ConversationOperationResult;->getResultInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method setConversationOperationResult(Lcom/tencent/imsdk/conversation/ConversationOperationResult;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMConversationOperationResult;->operationResult:Lcom/tencent/imsdk/conversation/ConversationOperationResult;

    return-void
.end method
