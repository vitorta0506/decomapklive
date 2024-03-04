.class final Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
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

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "",
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
    c = "com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment$RandomTip$1$1"
    f = "F2fMatchingFragment.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x9c,
        0xa1
    }
    m = "invokeSuspend"
    n = {
        "$this$flow",
        "$this$flow"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $$this$launch:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $array:[Ljava/lang/Integer;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;[Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;",
            "[",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;

    iput-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->$array:[Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;

    iget-object v3, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->$array:[Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;[Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v1

    move-object v1, p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    :goto_0
    move-object v1, p0

    .line 4
    :cond_3
    iget-object v4, v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;

    invoke-static {v4}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->access$getMatching$p(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5
    iget-object v4, v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->$array:[Ljava/lang/Integer;

    iget-object v5, v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;

    invoke-static {v5}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->access$getIndex$p(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;)I

    move-result v5

    aget-object v4, v4, v5

    iput-object p1, v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->L$0:Ljava/lang/Object;

    iput v3, v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->label:I

    invoke-interface {p1, v4, v1}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    .line 6
    :cond_4
    :goto_1
    iget-object v4, v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;

    invoke-static {v4}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->access$getIndex$p(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->access$setIndex$p(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;I)V

    invoke-static {v4}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->access$getIndex$p(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;)I

    .line 7
    iget-object v4, v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;

    invoke-static {v4}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->access$getIndex$p(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;)I

    move-result v4

    iget-object v5, v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->$array:[Ljava/lang/Integer;

    array-length v5, v5

    if-ne v4, v5, :cond_5

    .line 8
    iget-object v4, v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;->access$setIndex$p(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;I)V

    :cond_5
    const-wide/16 v4, 0x1388

    .line 9
    iput-object p1, v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->L$0:Ljava/lang/Object;

    iput v2, v1, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip$1$1;->label:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    return-object v0

    .line 10
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
