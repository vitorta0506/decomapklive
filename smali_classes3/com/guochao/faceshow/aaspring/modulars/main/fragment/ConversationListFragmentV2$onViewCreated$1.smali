.class final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$onViewCreated$1"
    f = "ConversationListFragmentV2.kt"
    i = {
        0x0,
        0x1,
        0x2
    }
    l = {
        0xba,
        0xbe,
        0xce
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "$this$launch",
        "$this$launch"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    invoke-direct {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->access$getLastLoopLoadOnline$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1388

    cmp-long p1, v5, v7

    if-gez p1, :cond_4

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->access$getLastLoopLoadOnline$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)J

    move-result-wide v9

    sub-long/2addr v5, v9

    sub-long/2addr v7, v5

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->label:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 6
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->access$setLastLoopLoadOnline$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;J)V

    :goto_1
    move-object p1, p0

    .line 7
    :goto_2
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 8
    iget-object v5, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    move-result-object v5

    iput-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->label:I

    invoke-virtual {v5, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->loadTopRecommendUsers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_5

    return-object v0

    :cond_5
    move-object v11, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v1

    move-object v1, v11

    .line 9
    :goto_3
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 11
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->access$getHeaderView$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_6

    const-string v6, "headerView"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    .line 12
    :cond_6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;->getList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    :goto_4
    if-ne v8, v4, :cond_8

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_9

    const/16 v9, 0x8

    :cond_9
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->access$getHeadAdapter$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;

    move-result-object v6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    .line 14
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "top_recommend_"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v8

    invoke-interface {v8}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1, v7}, Lcom/guochao/faceshow/aaspring/manager/b;->h(Ljava/lang/String;Ljava/util/List;)V

    .line 16
    invoke-virtual {v6, v7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    :cond_b
    const-wide/32 v6, 0x1d4c0

    .line 17
    iput-object v5, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$onViewCreated$1;->label:I

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    return-object v1

    :cond_c
    move-object p1, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_2

    .line 18
    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
