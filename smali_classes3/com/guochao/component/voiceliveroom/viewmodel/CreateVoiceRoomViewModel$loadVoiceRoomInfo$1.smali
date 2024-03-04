.class final Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;->loadVoiceRoomInfo()V
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
    c = "com.guochao.component.voiceliveroom.viewmodel.CreateVoiceRoomViewModel$loadVoiceRoomInfo$1"
    f = "CreateVoiceRoomViewModel.kt"
    i = {}
    l = {
        0x1d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;

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

    new-instance p1, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;

    invoke-direct {p1, v0, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

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
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;->access$get_voiceRoomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;->access$getRepository$p(Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel;)Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;

    move-result-object v1

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/CreateVoiceRoomViewModel$loadVoiceRoomInfo$1;->label:I

    invoke-virtual {v1, p0}, Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;->loadVoiceRoomInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTagIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getTagConfs()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;

    .line 8
    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;->getId()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 9
    invoke-virtual {v4, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;->setSelected(Z)V

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 10
    :cond_7
    :goto_2
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
