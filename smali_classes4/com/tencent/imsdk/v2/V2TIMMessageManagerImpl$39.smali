.class Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;->getGroupMessageReadReceipts(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
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
        "Lcom/tencent/imsdk/message/GroupMessageReceipt;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

.field final synthetic val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$39;->this$0:Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl;

    iput-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$39;->val$results:Ljava/util/List;

    iput-object p3, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$39;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$39;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$39;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/message/GroupMessageReceipt;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/message/GroupMessageReceipt;

    .line 3
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;-><init>()V

    .line 4
    new-instance v2, Lcom/tencent/imsdk/message/GroupMessageReceipt;

    invoke-direct {v2}, Lcom/tencent/imsdk/message/GroupMessageReceipt;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->getGroupID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->setGroupID(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->getMsgID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->setMsgID(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->getReadCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->setReadCount(J)V

    .line 8
    invoke-virtual {v0}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->getUnreadCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/imsdk/message/GroupMessageReceipt;->setUnreadCount(J)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageReceipt;->setGroupMessageReceipt(Lcom/tencent/imsdk/message/GroupMessageReceipt;)V

    .line 10
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$39;->val$results:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$39;->val$callback:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-eqz p1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMMessageManagerImpl$39;->val$results:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
