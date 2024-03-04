.class final Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->cancelMatch(Lkotlin/jvm/functions/Function0;)V
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
    c = "com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel$cancelMatch$1$1"
    f = "F2fMatchViewModel.kt"
    i = {
        0x2
    }
    l = {
        0xdb,
        0xde,
        0xe3
    }
    m = "invokeSuspend"
    n = {
        "$this$invokeSuspend_u24lambda_u2d1"
    }
    s = {
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:I

.field final synthetic $this_apply:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;Lkotlin/jvm/functions/Function0;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;",
            "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->$this_apply:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;

    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->$callback:Lkotlin/jvm/functions/Function0;

    iput p4, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->$state:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->$this_apply:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;

    iget-object v3, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->$callback:Lkotlin/jvm/functions/Function0;

    iget v4, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->$state:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;Lkotlin/jvm/functions/Function0;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

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
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->access$getF2fDataSource$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->$this_apply:Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fStartMatchResultModel;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iput v3, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;->cancelMatch(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 5
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getLastMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getRoomId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->$state:I

    iget-object v3, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    if-ne v1, v4, :cond_5

    .line 6
    invoke-static {v3}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->access$getF2fDataSource$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;)Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;

    move-result-object v1

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->label:I

    invoke-virtual {v1, p1, p0}, Lcom/guochao/faceshow/component/f2fmatch/datasource/F2fMatchDataSource;->quitRoom(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->setLastMatchUserInfo(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->$callback:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_7

    const-wide/16 v1, 0x12c

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel$cancelMatch$1$1;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    .line 10
    :goto_2
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
