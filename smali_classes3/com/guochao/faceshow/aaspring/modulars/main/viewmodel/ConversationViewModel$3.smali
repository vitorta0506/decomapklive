.class final Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;-><init>()V
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
    c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$3"
    f = "ConversationViewModel.kt"
    i = {}
    l = {
        0x56
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    invoke-direct {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->access$getRepo$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;

    move-result-object p1

    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;->label:I

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;->getAllConversations(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->access$getSystemConversations$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;

    .line 9
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->access$getSystemConversations$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Ljava/util/List;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    const/4 v4, 0x3

    .line 11
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;->getConversationId()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-direct {v3, v4, v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;-><init>(ILjava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgStr(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;->getLastMsgTime()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4, v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setLastMsgTime(J)V

    .line 15
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->access$resetList(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Z)V

    .line 17
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
