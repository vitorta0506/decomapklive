.class final Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->_init_$lambda-2(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/List;)V
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
    c = "com.guochao.faceshow.aaspring.modulars.main.viewmodel.ConversationViewModel$2$1"
    f = "ConversationViewModel.kt"
    i = {}
    l = {
        0x44
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $it:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;->$it:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;->$it:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

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

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;->access$getRepo$p(Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;)Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;->$it:Ljava/util/List;

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "it"

    .line 6
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 8
    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;

    .line 9
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_info.conversationId"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    .line 11
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsgStr()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-direct {v5, v6, v7, v4}, Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel$2$1;->label:I

    invoke-virtual {p1, v3, p0}, Lcom/guochao/faceshow/aaspring/db/repo/SystemConversationRepository;->insertOrUpdateConversations(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 15
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
