.class final Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->setFreeTime(Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/jvm/functions/Function2;)V
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
    c = "com.guochao.component.mvp.viewmodel.MVPUserInfoViewModel$setFreeTime$1"
    f = "MVPUserInfoViewModel.kt"
    i = {}
    l = {
        0x46,
        0x47
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bean:Lcom/guochao/component/mvp/model/GetInterestsRequestModel;

.field final synthetic $call:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
            "Lcom/guochao/component/mvp/model/GetInterestsRequestModel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->this$0:Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    iput-object p2, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->$bean:Lcom/guochao/component/mvp/model/GetInterestsRequestModel;

    iput-object p3, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->$call:Lkotlin/jvm/functions/Function2;

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

    new-instance p1, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;

    iget-object v0, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->this$0:Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    iget-object v1, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->$bean:Lcom/guochao/component/mvp/model/GetInterestsRequestModel;

    iget-object v2, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->$call:Lkotlin/jvm/functions/Function2;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;-><init>(Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->this$0:Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    invoke-static {p1}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->access$getRepository$p(Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;)Lcom/guochao/component/mvp/repository/MVPRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->$bean:Lcom/guochao/component/mvp/model/GetInterestsRequestModel;

    iput v3, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/guochao/component/mvp/repository/MVPRepository;->setFreeTime(Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 6
    iget-object v1, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->$call:Lkotlin/jvm/functions/Function2;

    iput v2, p0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel$setFreeTime$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
