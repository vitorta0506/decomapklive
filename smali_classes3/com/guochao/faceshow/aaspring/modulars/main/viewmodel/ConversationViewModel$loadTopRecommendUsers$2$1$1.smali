.class final Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->loadTopRecommendUsers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$loadTopRecommendUsers$2$1$1"
    f = "ConversationViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $onlines:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_apply:Ljava/util/List;
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
.method constructor <init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Lcom/guochao/faceshow/aaspring/base/http/v2/Response;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->$this_apply:Ljava/util/List;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->$onlines:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->$this_apply:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->$onlines:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;-><init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Lcom/guochao/faceshow/aaspring/base/http/v2/Response;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->$this_apply:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->$onlines:Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserListModel;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$TopOnlineUserModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 8
    invoke-virtual {v2, v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setOnlineStatus(I)V

    .line 9
    iput-boolean v4, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    .line 10
    :cond_2
    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->access$getModelLiveData(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$loadTopRecommendUsers$2$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->access$getModelLiveData(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 12
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
