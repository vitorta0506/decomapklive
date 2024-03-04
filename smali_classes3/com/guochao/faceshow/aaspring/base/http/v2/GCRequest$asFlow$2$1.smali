.class public final Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
        "TT;>;>;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001*\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00020\u0001H\u008a@"
    }
    d2 = {
        "T",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
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
    c = "com.guochao.faceshow.aaspring.base.http.v2.GCRequest$asFlow$2$1"
    f = "GCRequest.kt"
    i = {}
    l = {
        0x15d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;->this$0:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

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

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;->this$0:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    invoke-direct {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;-><init>(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/FlowCollector;
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
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;->this$0:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    .line 2
    :try_start_0
    sget-object v3, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->INSTANCE:Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->buildRequestParams()Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;

    move-result-object v4

    const/4 v5, 0x4

    const-string v6, "T?"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, v5}, Lcom/guochao/faceshow/aaspring/base/http/v2/Requester;->execute(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Lcom/guochao/faceshow/aaspring/base/http/v2/RequestParams;Ljava/lang/reflect/Type;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    sget-object v3, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->Companion:Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;->fail(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->setError(Ljava/lang/Throwable;)V

    move-object v1, v3

    .line 5
    :goto_0
    iput v2, p0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$asFlow$2$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
