.class final Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->requestOnlineStatus(Ljava/util/List;)V
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
    c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$requestOnlineStatus$2"
    f = "ConversationViewModel.kt"
    i = {}
    l = {
        0xd1
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $intArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/ArrayList;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->$intArray:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->$list:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->$intArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->$list:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/ArrayList;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->$intArray:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v1

    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->label:I

    invoke-static {p1, v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->access$requestOnlineStatusToServer(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;[ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$requestOnlineStatus$2;->$list:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->getOnlineMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->getOnlineMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->setRequestTime(J)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->access$getOnlineMap$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Landroidx/collection/ArrayMap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->getOnlineMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 10
    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->getOnlineMap()Ljava/util/LinkedHashMap;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    .line 12
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->getUserOnlineEnum()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LOGIN"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 13
    invoke-virtual {v3, v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setOnlineStatus(I)V

    .line 14
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;->getOnlineTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastOnlineTimestamp(J)V

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    .line 15
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setOnlineStatus(I)V

    .line 16
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastCheckOnlineTimestamp(J)V

    goto :goto_2

    .line 17
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->access$getSystemConversations$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 20
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->access$getModelLiveData(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->access$getUnread(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/List;)I

    move-result v0

    invoke-direct {v2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
