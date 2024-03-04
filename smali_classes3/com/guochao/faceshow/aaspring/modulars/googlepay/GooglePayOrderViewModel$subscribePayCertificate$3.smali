.class final Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->subscribePayCertificate(Lcom/android/billingclient/api/Purchase;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
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
    c = "com.guochao.faceshow.aaspring.modulars.googlepay.GooglePayOrderViewModel$subscribePayCertificate$3"
    f = "GooglePayOrderViewModel.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x62,
        0x6c,
        0x6e
    }
    m = "invokeSuspend"
    n = {
        "requestModel",
        "requestModel"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $faile:Ljava/lang/Runnable;

.field final synthetic $purchase:Lcom/android/billingclient/api/Purchase;

.field final synthetic $success:Ljava/lang/Runnable;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/Purchase;Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Ljava/lang/Runnable;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/Purchase;",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->$purchase:Lcom/android/billingclient/api/Purchase;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->$success:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->$faile:Ljava/lang/Runnable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;)V
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.activity.BaseActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4ec5\u6d4b\u8bd5\uff1a\u4fdd\u5b58\u8ba2\u9605\u51ed\u8bc1orderId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;->getGoogleOrderId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    return-void
.end method

.method private static final invokeSuspend$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;)V
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.activity.BaseActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4ec5\u6d4b\u8bd5\uff1a\u8ba2\u9605\u6210\u529f\u5220\u9664\u51ed\u8bc1orderId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;->getGoogleOrderId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->$purchase:Lcom/android/billingclient/api/Purchase;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->$success:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->$faile:Ljava/lang/Runnable;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;-><init>(Lcom/android/billingclient/api/Purchase;Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Ljava/lang/Runnable;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->f()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "purchase.skus[0]"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v7

    const-string v1, "purchase.orderId"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    move-result-object v10

    const-string v1, "purchase.purchaseToken"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x2c

    const/4 v13, 0x0

    move-object v5, p1

    .line 8
    invoke-direct/range {v5 .. v13}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    move-result-object v1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->label:I

    invoke-virtual {v1, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->saveSubscribeRequestModel(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p1

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    move-result-object p1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->subscribeCertificate(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 11
    :cond_5
    :goto_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    move-result-object p1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->removeSubscribeRequestModel(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 14
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->$success:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;->$faile:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 16
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
