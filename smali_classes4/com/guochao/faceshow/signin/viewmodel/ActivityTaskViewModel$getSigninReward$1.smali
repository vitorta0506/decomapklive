.class final Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;->getSigninReward(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V
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
    c = "com.guochao.faceshow.signin.viewmodel.ActivityTaskViewModel$getSigninReward$1"
    f = "ActivityTaskViewModel.kt"
    i = {}
    l = {
        0x35
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $itemData:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;",
            "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;->this$0:Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;

    iput-object p2, p0, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;->$itemData:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;

    iget-object v0, p0, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;->this$0:Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;->$itemData:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    invoke-direct {p1, v0, v1, p2}, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;-><init>(Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;->label:I

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
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1$response$1;

    iget-object v3, p0, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;->$itemData:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1$response$1;-><init>(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;->this$0:Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel;->getGetSigninReward()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/signin/viewmodel/ActivityTaskViewModel$getSigninReward$1;->$itemData:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getStatus()Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method