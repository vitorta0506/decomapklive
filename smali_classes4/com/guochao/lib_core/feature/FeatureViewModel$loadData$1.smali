.class final Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/lib_core/feature/FeatureViewModel;->loadData()V
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
    c = "com.guochao.lib_core.feature.FeatureViewModel$loadData$1"
    f = "Feature.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0xd1,
        0xf3
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "$this$launch"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/lib_core/feature/FeatureViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/lib_core/feature/FeatureViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/lib_core/feature/FeatureViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->this$0:Lcom/guochao/lib_core/feature/FeatureViewModel;

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

    new-instance v0, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;

    iget-object v1, p0, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->this$0:Lcom/guochao/lib_core/feature/FeatureViewModel;

    invoke-direct {v0, v1, p2}, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;-><init>(Lcom/guochao/lib_core/feature/FeatureViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v1, p0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iget-object v1, p0, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->this$0:Lcom/guochao/lib_core/feature/FeatureViewModel;

    invoke-static {v1, v5}, Lcom/guochao/lib_core/feature/FeatureViewModel;->access$setLoading$p(Lcom/guochao/lib_core/feature/FeatureViewModel;Z)V

    :goto_0
    move-object v1, p0

    .line 5
    :goto_1
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    new-instance v7, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1$data$1;

    invoke-direct {v7, v4}, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1$data$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v1, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->L$0:Ljava/lang/Object;

    iput v5, v1, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->label:I

    invoke-static {v6, v7, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    return-object v0

    :cond_3
    move-object v9, v6

    move-object v6, p1

    move-object p1, v9

    .line 7
    :goto_2
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 9
    iget-object v0, v1, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->this$0:Lcom/guochao/lib_core/feature/FeatureViewModel;

    invoke-static {v0, v3}, Lcom/guochao/lib_core/feature/FeatureViewModel;->access$setLoading$p(Lcom/guochao/lib_core/feature/FeatureViewModel;Z)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v4

    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "features"

    .line 12
    invoke-static {v0, v7, v6}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key_hello_star"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v4

    .line 15
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getSelfString2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const/4 v3, 0x1

    :cond_7
    if-eqz v3, :cond_a

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/guochao/lib_core/feature/FeatureResult;

    .line 20
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/lib_core/feature/FeatureResult;

    .line 21
    invoke-virtual {v0}, Lcom/guochao/lib_core/feature/FeatureResult;->getResultMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 22
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "hello_star"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 24
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/lib_core/feature/FeatureResultData;

    invoke-virtual {v3}, Lcom/guochao/lib_core/feature/FeatureResultData;->getParamJson()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v5}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v5

    .line 26
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_9
    move-object v5, v4

    .line 27
    :goto_6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/lib_core/feature/FeatureResultData;

    invoke-virtual {v2}, Lcom/guochao/lib_core/feature/FeatureResultData;->getParamJson()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v3, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfString2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 30
    :cond_a
    iget-object v0, v1, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->this$0:Lcom/guochao/lib_core/feature/FeatureViewModel;

    invoke-static {v0}, Lcom/guochao/lib_core/feature/FeatureViewModel;->access$getModelLiveData(Lcom/guochao/lib_core/feature/FeatureViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_b
    const-wide/16 v7, 0x7530

    .line 32
    iput-object v6, v1, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->L$0:Ljava/lang/Object;

    iput v2, v1, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->label:I

    invoke-static {v7, v8, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    :cond_c
    move-object p1, v6

    goto/16 :goto_1

    .line 33
    :cond_d
    iget-object p1, v1, Lcom/guochao/lib_core/feature/FeatureViewModel$loadData$1;->this$0:Lcom/guochao/lib_core/feature/FeatureViewModel;

    invoke-static {p1, v3}, Lcom/guochao/lib_core/feature/FeatureViewModel;->access$setLoading$p(Lcom/guochao/lib_core/feature/FeatureViewModel;Z)V

    .line 34
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
