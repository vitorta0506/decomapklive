.class final Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->googlePayCertificate(ILjava/lang/String;Lcom/android/billingclient/api/Purchase;)V
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
    c = "com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$googlePayCertificate$1"
    f = "GooglePayOrderViewModel.kt"
    i = {
        0x2
    }
    l = {
        0x40,
        0x46,
        0x48
    }
    m = "invokeSuspend"
    n = {
        "result"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $requestModel:Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->$requestModel:Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;

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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->$requestModel:Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->$requestModel:Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;

    iput v4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->savePurchaseRequestModel(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 5
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->$requestModel:Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;

    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->googlePayOrderCertificate(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 6
    :cond_5
    :goto_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->$requestModel:Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->label:I

    invoke-virtual {v1, v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->removeSaveModel(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    .line 9
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;->$requestModel:Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p1, v1, v5, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$loadEvent(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;ZLjava/lang/Integer;)V

    .line 10
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_7
    invoke-virtual {p1, v5}, Lp9/a;->B(I)V

    .line 11
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;->dismissDialog()V

    goto :goto_3

    .line 12
    :cond_8
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    const v0, 0x7f1203d0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v0, v5, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 13
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;->dismissDialog()V

    .line 14
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
