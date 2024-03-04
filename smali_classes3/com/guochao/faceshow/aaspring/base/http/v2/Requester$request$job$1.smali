.class final Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->request(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;)Lcom/guochao/faceshow/aaspring/base/utils/a;
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
    c = "com.guochao.faceshow.aaspring.base.http.v2.Requester$request$job$1"
    f = "Requester.kt"
    i = {
        0x0
    }
    l = {
        0x56,
        0x65
    }
    m = "invokeSuspend"
    n = {
        "$this$invokeSuspend_u24lambda_u2d0"
    }
    s = {
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $call:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $cancelSign:Landroid/os/CancellationSignal;

.field final synthetic $gcRequest:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

.field final synthetic $repeat:J

.field final synthetic $request:Lokhttp3/Request;

.field final synthetic $requestParams:Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;JLcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Landroid/os/CancellationSignal;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lokhttp3/Call;",
            ">;",
            "Lokhttp3/Request;",
            "J",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;",
            "Landroid/os/CancellationSignal;",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$call:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$request:Lokhttp3/Request;

    iput-wide p3, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$repeat:J

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$requestParams:Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;

    iput-object p6, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$cancelSign:Landroid/os/CancellationSignal;

    iput-object p7, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$gcRequest:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$call:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$request:Lokhttp3/Request;

    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$repeat:J

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$requestParams:Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$cancelSign:Landroid/os/CancellationSignal;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$gcRequest:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokhttp3/Request;JLcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Landroid/os/CancellationSignal;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto/16 :goto_2

    :catch_0
    move-exception p1

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
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lokhttp3/Call;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lokhttp3/Call;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    .line 4
    :cond_3
    :try_start_2
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$call:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->access$getHttpClient$p()Lokhttp3/OkHttpClient;

    move-result-object v5

    iget-object v6, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$request:Lokhttp3/Request;

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    iget-object v6, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$gcRequest:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    .line 5
    sget-object v7, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;

    iput-object v5, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->L$0:Ljava/lang/Object;

    iput-object v6, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->L$1:Ljava/lang/Object;

    iput-object v5, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->L$2:Ljava/lang/Object;

    iput-object v1, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->L$3:Ljava/lang/Object;

    iput v3, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->label:I

    invoke-static {v7, v5, v6, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->access$callServer(Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;Lokhttp3/Call;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-ne v7, v0, :cond_4

    return-object v0

    :cond_4
    move-object v8, v5

    move-object v5, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v8

    .line 6
    :goto_0
    :try_start_3
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 7
    invoke-interface {v6}, Lokhttp3/Call;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_7

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v6, v3, :cond_5

    .line 9
    :try_start_4
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->getSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    .line 10
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_6
    :goto_1
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_7
    iput-object v8, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 15
    iget-wide v5, v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$repeat:J

    iput-object v4, v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->L$3:Ljava/lang/Object;

    iput v2, v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    move-object p1, v0

    move-object v0, v1

    .line 16
    :goto_2
    :try_start_6
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$requestParams:Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;->getRepeatInterval()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$cancelSign:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v1, :cond_3

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    .line 17
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$call:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Call;

    if-eqz v1, :cond_a

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester$request$job$1;->$gcRequest:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    .line 19
    invoke-interface {v1}, Lokhttp3/Call;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 20
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->getFail()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v2, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v4, v4, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->getComplete()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_a
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
