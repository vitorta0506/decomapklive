.class final Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->checkHistorySubscribe(Ljava/util/List;)V
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
    c = "com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$checkHistorySubscribe$1"
    f = "GooglePayOrderViewModel.kt"
    i = {
        0x1
    }
    l = {
        0xc1,
        0xc3,
        0xc6
    }
    m = "invokeSuspend"
    n = {
        "request"
    }
    s = {
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $purchase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->$purchase:Ljava/util/List;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.activity.BaseActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4ec5\u6d4b\u8bd5\uff1a\u8ba2\u9605\u6210\u529f\u5220\u9664\u5df2\u4fdd\u5b58\u7684\u51ed\u8bc1orderId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;->getGoogleOrderId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->$purchase:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;-><init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v6

    move-object v6, v1

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v7

    move-object v7, v1

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->$purchase:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, v1

    move-object v1, p1

    move-object p1, p0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/billingclient/api/Purchase;

    .line 6
    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v7

    const-string v9, "it.orderId"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$1:Ljava/lang/Object;

    iput-object v2, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$2:Ljava/lang/Object;

    iput v5, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->label:I

    invoke-virtual {v8, v7, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->findSavedSubscribeRequestModel(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_4

    return-object v0

    :cond_4
    move-object v10, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v1

    move-object v1, v10

    .line 7
    :goto_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;

    if-eqz p1, :cond_7

    .line 8
    invoke-static {v7}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    move-result-object v8

    iput-object v7, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->label:I

    invoke-virtual {v8, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->subscribeCertificate(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_5

    return-object v1

    :cond_5
    move-object v10, v7

    move-object v7, p1

    move-object p1, v8

    move-object v8, v10

    .line 9
    :goto_2
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 11
    invoke-static {v8}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    move-result-object p1

    iput-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;->label:I

    invoke-virtual {p1, v7, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->removeSubscribeRequestModel(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    move-object p1, v0

    move-object v0, v1

    move-object v1, v6

    move-object v6, v8

    goto :goto_0

    :cond_7
    move-object p1, v0

    move-object v0, v1

    move-object v1, v6

    move-object v6, v7

    goto :goto_0

    .line 12
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
