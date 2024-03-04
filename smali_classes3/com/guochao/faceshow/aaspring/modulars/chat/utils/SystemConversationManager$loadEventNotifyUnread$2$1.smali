.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->loadEventNotifyUnread(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Lcom/tencent/imsdk/v2/V2TIMConversation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\t\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback;",
        "Lcom/tencent/imsdk/v2/V2TIMConversation;",
        "onError",
        "",
        "p0",
        "",
        "p1",
        "",
        "onSuccess",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field final synthetic $it:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$it:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$it:Lkotlinx/coroutines/CancellableContinuation;

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 7
    .param p1    # Lcom/tencent/imsdk/v2/V2TIMConversation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUnreadCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getLastOfficialMessage$p()Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getUnreadCount()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUnreadCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 5
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getLastOfficialMessage$p()Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getUnreadCount()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setUnreadNum(I)V

    .line 7
    :goto_2
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getLastMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 8
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    mul-long v2, v2, v4

    .line 9
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->m(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;

    move-result-object p1

    .line 10
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_5

    instance-of v4, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    if-eqz v4, :cond_5

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgTime(J)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSortTime(J)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgStr()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_3

    move-object v0, v2

    .line 14
    :cond_3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 15
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;->getTypeId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "msg.typeId"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 16
    :cond_4
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->getDisplayedMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgStr(Ljava/lang/String;)V

    goto :goto_5

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getLastOfficialMessage$p()Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getTypeId()I

    move-result v1

    .line 19
    :cond_6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getLastOfficialMessage$p()Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getUserNickName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v0

    .line 20
    :goto_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getLastOfficialMessage$p()Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_8
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->getDisplayedMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgStr(Ljava/lang/String;)V

    goto :goto_5

    .line 22
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 23
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getLastOfficialMessage$p()Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getTypeId()I

    move-result v1

    .line 24
    :cond_a
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getLastOfficialMessage$p()Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getUserNickName()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_b
    move-object v2, v0

    .line 25
    :goto_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getLastOfficialMessage$p()Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_c
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->getDisplayedMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgStr(Ljava/lang/String;)V

    .line 27
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$it:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->$c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$loadEventNotifyUnread$2$1;->onSuccess(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    return-void
.end method
