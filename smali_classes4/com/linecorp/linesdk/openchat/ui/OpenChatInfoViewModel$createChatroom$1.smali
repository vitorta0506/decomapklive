.class final Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->createChatroom()V
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
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel$createChatroom$1"
    f = "OpenChatInfoViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x4e
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $openChatParameters:Lcom/linecorp/linesdk/openchat/OpenChatParameters;

.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;


# direct methods
.method constructor <init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iput-object p2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->$openChatParameters:Lcom/linecorp/linesdk/openchat/OpenChatParameters;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;

    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iget-object v2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->$openChatParameters:Lcom/linecorp/linesdk/openchat/OpenChatParameters;

    invoke-direct {v0, v1, v2, p2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;-><init>(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

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

    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-static {v1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->access$get_isCreatingChatRoom$p(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    iget-object v3, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->$openChatParameters:Lcom/linecorp/linesdk/openchat/OpenChatParameters;

    iput-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->label:I

    invoke-virtual {v1, v3, p0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->createChatRoomAsync(Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    check-cast p1, Lqc/c;

    .line 7
    invoke-virtual {p1}, Lqc/c;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-static {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->access$get_openChatRoomInfo$p(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lqc/c;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-static {v0}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->access$get_createChatRoomError$p(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$createChatroom$1;->this$0:Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;

    invoke-static {p1}, Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;->access$get_isCreatingChatRoom$p(Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
