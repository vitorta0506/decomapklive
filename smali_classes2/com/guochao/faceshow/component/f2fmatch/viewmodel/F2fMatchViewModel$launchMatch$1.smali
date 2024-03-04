.class final Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->launchMatch(Z)V
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
    c = "com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel$launchMatch$1"
    f = "F2fMatchViewModel.kt"
    i = {}
    l = {
        0x74
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

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

    new-instance p1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-direct {p1, v0, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

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
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->access$getF2fDataSource$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;

    move-result-object v1

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;->label:I

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;->getPrepareMatchInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->access$setTrtcSignatureModel$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fTrtcSignatureModel;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->access$getStartMatchRunnable$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$launchMatch$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->access$setStartMatchRunnable$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Ljava/lang/Runnable;)V

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
