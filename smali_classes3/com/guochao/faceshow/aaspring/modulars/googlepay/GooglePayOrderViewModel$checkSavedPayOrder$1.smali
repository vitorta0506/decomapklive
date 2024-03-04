.class final Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->checkSavedPayOrder()V
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
    c = "com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$checkSavedPayOrder$1"
    f = "GooglePayOrderViewModel.kt"
    i = {
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x88,
        0x8b,
        0x8e
    }
    m = "invokeSuspend"
    n = {
        "total",
        "it",
        "total",
        "result"
    }
    s = {
        "L$0",
        "L$3",
        "L$0",
        "L$3"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-direct {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v7

    move-object v7, p0

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    move-result-object v1

    const-string v5, "userId"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->label:I

    invoke-virtual {v1, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->getSavedPurchaseRequestModel(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 6
    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 7
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 8
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, p0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;

    .line 10
    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    move-result-object v8

    iput-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$0:Ljava/lang/Object;

    iput-object v5, v6, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$1:Ljava/lang/Object;

    iput-object p1, v6, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$2:Ljava/lang/Object;

    iput-object v7, v6, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$3:Ljava/lang/Object;

    iput v3, v6, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->label:I

    invoke-virtual {v8, v7, v6}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->googlePayOrderCertificate(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_5

    return-object v0

    :cond_5
    move-object v10, v5

    move-object v5, p1

    move-object p1, v8

    move-object v8, v1

    move-object v1, v7

    move-object v7, v6

    move-object v6, v10

    .line 11
    :goto_2
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-static {v6, v1, v4, v9}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$loadEvent(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;ZLjava/lang/Integer;)V

    .line 14
    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    move-result-object v9

    iput-object v8, v7, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$0:Ljava/lang/Object;

    iput-object v6, v7, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$1:Ljava/lang/Object;

    iput-object v5, v7, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$2:Ljava/lang/Object;

    iput-object p1, v7, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->L$3:Ljava/lang/Object;

    iput v2, v7, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;->label:I

    invoke-virtual {v9, v1, v7}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->removeSaveModel(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v1, p1

    move-object p1, v7

    move-object v7, v8

    .line 15
    :goto_3
    iget v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    invoke-static {v8, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    iput v1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object v1, v7

    move-object v10, v6

    move-object v6, p1

    move-object p1, v5

    move-object v5, v10

    goto :goto_1

    :cond_8
    move-object p1, v5

    move-object v5, v6

    move-object v6, v7

    move-object v1, v8

    goto :goto_1

    .line 16
    :cond_9
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    iget v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1, v0, v4}, Lp9/a;->C(IZ)V

    .line 17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
