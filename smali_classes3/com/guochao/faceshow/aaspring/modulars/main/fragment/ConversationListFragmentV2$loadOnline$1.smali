.class final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->loadOnline()V
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
    c = "com.guochao.faceshow.aaspring.modulars.main.fragment.ConversationListFragmentV2$loadOnline$1"
    f = "ConversationListFragmentV2.kt"
    i = {}
    l = {
        0x132
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
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
            "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    invoke-direct {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;->label:I

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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    move-result-object p1

    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;->label:I

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->loadTopRecommendUsers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->access$getHeaderView$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "headerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 9
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-ne v3, v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_7

    const/16 v4, 0x8

    :cond_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$loadOnline$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->access$getHeadAdapter$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2$HeadAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    :cond_8
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
