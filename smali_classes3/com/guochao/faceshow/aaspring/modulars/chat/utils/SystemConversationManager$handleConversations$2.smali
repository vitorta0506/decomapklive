.class final Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->handleConversations(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.guochao.faceshow.aaspring.modulars.chat.utils.SystemConversationManager$handleConversations$2"
    f = "SystemConversationManager.kt"
    i = {}
    l = {
        0xb2,
        0xb8,
        0xbe,
        0xc9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $systemConversationMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->$systemConversationMessage:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->$systemConversationMessage:Ljava/util/List;

    invoke-direct {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->label:I

    const-string v2, "system_official"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v7, :cond_1

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->$systemConversationMessage:Ljava/util/List;

    if-eqz p1, :cond_b

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v8, p1

    :goto_0
    move-object p1, p0

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;

    if-eqz v9, :cond_4

    .line 6
    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;->getMessageType()I

    move-result v10

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_2

    :cond_4
    move-object v10, v4

    :goto_2
    if-nez v10, :cond_5

    goto :goto_3

    .line 7
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v7, :cond_6

    .line 8
    sget-object v10, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    .line 9
    invoke-static {v10, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$findConversation(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v11

    .line 10
    iput-object v8, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->L$1:Ljava/lang/Object;

    iput v7, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->label:I

    invoke-static {v10, v11, v9, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$handleNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_3

    return-object v0

    :cond_6
    :goto_3
    if-nez v10, :cond_7

    goto :goto_4

    .line 11
    :cond_7
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v6, :cond_8

    .line 12
    sget-object v10, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    const-string v11, "system_focused"

    .line 13
    invoke-static {v10, v11}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$findConversation(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v11

    .line 14
    iput-object v8, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->L$1:Ljava/lang/Object;

    iput v6, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->label:I

    invoke-static {v10, v11, v9, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$handleNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_3

    return-object v0

    :cond_8
    :goto_4
    if-nez v10, :cond_9

    goto :goto_1

    .line 15
    :cond_9
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v5, :cond_3

    .line 16
    sget-object v10, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    const-string v11, "system_interaction"

    .line 17
    invoke-static {v10, v11}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$findConversation(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v11

    .line 18
    iput-object v8, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->L$1:Ljava/lang/Object;

    iput v5, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->label:I

    invoke-static {v10, v11, v9, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$handleNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/beans/SystemConversationMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_3

    return-object v0

    .line 19
    :cond_a
    check-cast v8, Ljava/util/List;

    goto :goto_5

    :cond_b
    move-object p1, p0

    .line 20
    :goto_5
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$findConversation(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v2

    if-nez v2, :cond_c

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getSystemConversations$p()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getSystemConversationList$p()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_7

    .line 22
    :cond_c
    iput-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->L$0:Ljava/lang/Object;

    iput-object v4, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->L$1:Ljava/lang/Object;

    iput v3, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager$handleConversations$2;->label:I

    invoke-static {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$checkOfficialConversation(Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    return-object v0

    .line 23
    :cond_d
    :goto_6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getSystemConversations$p()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->access$getSystemConversationList$p()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 24
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
