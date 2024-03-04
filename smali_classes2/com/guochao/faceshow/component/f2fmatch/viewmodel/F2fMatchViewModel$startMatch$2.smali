.class final Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->startMatch(ILkotlin/jvm/functions/Function1;)V
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
    c = "com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel$startMatch$2"
    f = "F2fMatchViewModel.kt"
    i = {
        0x0,
        0x1,
        0x2
    }
    l = {
        0x8a,
        0x91,
        0xb5
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "$this$launch",
        "$this$launch"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $c:Landroid/os/CancellationSignal;

.field final synthetic $gender:I

.field final synthetic $retry:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILandroid/os/CancellationSignal;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
            "I",
            "Landroid/os/CancellationSignal;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    iput p2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->$gender:I

    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->$c:Landroid/os/CancellationSignal;

    iput-object p4, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->$retry:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    iget v2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->$gender:I

    iget-object v3, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->$c:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->$retry:Lkotlin/jvm/functions/Function1;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;ILandroid/os/CancellationSignal;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->setMatchState(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->access$getF2fDataSource$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;

    move-result-object p1

    iget v5, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->$gender:I

    iput-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->label:I

    invoke-virtual {p1, v5, p0}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;->startMatch(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 6
    :cond_4
    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result v5

    if-eq v5, v4, :cond_6

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getF2fMatchCallback()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;->onStartMatchError(I)V

    .line 9
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 10
    :cond_6
    iget-object v5, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;

    invoke-static {v5, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->access$setStartMatchResult$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;)V

    move-object p1, p0

    .line 11
    :cond_7
    iget-object v5, p1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-static {v5}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->access$getF2fDataSource$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;

    move-result-object v5

    iput-object v1, p1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->L$0:Ljava/lang/Object;

    iput v3, p1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->label:I

    invoke-virtual {v5, p1}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;->heartBeat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_8

    return-object v0

    :cond_8
    move-object v12, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v1

    move-object v1, v12

    .line 12
    :goto_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 13
    iget-object v6, v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->$c:Landroid/os/CancellationSignal;

    invoke-virtual {v6}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 14
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 15
    :cond_9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v4, :cond_d

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 16
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    .line 17
    iget-object v8, v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-virtual {v8}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getLastMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    move-result-object v8

    if-eqz v8, :cond_a

    if-eqz v6, :cond_a

    .line 18
    invoke-virtual {v6}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getRoomId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getRoomId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 19
    iget-object v8, v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-static {v8, v6}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->access$handleHeartBeatResult(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    goto :goto_3

    .line 20
    :cond_a
    iget-object v8, v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-virtual {v8, v6}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->setLastMatchUserInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    if-eqz v6, :cond_b

    .line 21
    invoke-virtual {v6}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getStatus()I

    move-result v8

    if-ne v8, v4, :cond_b

    const/4 v8, 0x1

    goto :goto_2

    :cond_b
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_d

    invoke-virtual {v6}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 22
    iget-object v8, v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-virtual {v8}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getF2fMatchCallback()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    move-result-object v8

    .line 23
    iget-object v9, v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-static {v9}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->access$getAutoCancelRunnable$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)Ljava/lang/Runnable;

    move-result-object v9

    const-wide/16 v10, 0x2710

    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;Ljava/lang/Long;)V

    if-nez v8, :cond_c

    .line 24
    sget-object v6, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;->Companion:Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$Companion;

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v8

    const-string v9, "app()"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8, v4}, Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$Companion;->start(Landroid/content/Context;Z)V

    goto :goto_3

    .line 25
    :cond_c
    invoke-interface {v8, v6}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;->onUserMatched(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    .line 26
    :cond_d
    :goto_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getStatus()I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_e

    const/4 v7, 0x1

    :cond_e
    if-eqz v7, :cond_f

    .line 27
    iget-object v1, v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getF2fMatchCallback()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    move-result-object v1

    .line 28
    iget-object v2, v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    new-instance v3, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;

    iget-object v0, v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->$retry:Lkotlin/jvm/functions/Function1;

    invoke-direct {v3, v1, v2, v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lkotlin/jvm/functions/Function1;Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->cancelMatch(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_f
    const-wide/16 v6, 0x7d0

    .line 29
    iput-object v5, v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->label:I

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_10

    return-object v1

    :cond_10
    move-object p1, v0

    move-object v0, v1

    move-object v1, v5

    .line 30
    :goto_4
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$startMatch$2;->$c:Landroid/os/CancellationSignal;

    invoke-virtual {v5}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 31
    :cond_11
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
