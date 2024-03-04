.class final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->loadViewerList(IZ)V
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
    c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$loadViewerList$1"
    f = "VoiceRoomSeatControllerViewModel.kt"
    i = {}
    l = {
        0x229
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $refresh:Z

.field final synthetic $size:I

.field label:I

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;IZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
            "IZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iput p2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->$size:I

    iput-boolean p3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->$refresh:Z

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

    new-instance p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->$size:I

    iget-boolean v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->$refresh:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;IZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->label:I

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
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {p1, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->setViewerIsLoading(Z)V

    .line 5
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getRepository()Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getViewerPage()I

    move-result v3

    iget v4, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->$size:I

    iput v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->label:I

    invoke-virtual {p1, v1, v3, v4, p0}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;->loadViewerList(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 8
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$isViewerLoad$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v0, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$setViewerLoad$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Z)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_viewerCount$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;->getTotal()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    :cond_3
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerListModel;->getList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 12
    iget-boolean p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->$refresh:Z

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_viewerList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_viewerList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_viewerList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_9

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 15
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Iterable;

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/guochao/component/voiceliveroom/model/VoiceRoomViewerModel;

    .line 18
    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-interface {v3, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 19
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    .line 20
    :goto_2
    invoke-virtual {p1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    :goto_3
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_viewerHasMore$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x14

    if-lt v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->getViewerPage()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->setViewerPage(I)V

    .line 23
    :cond_b
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$loadViewerList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {p1, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->setViewerIsLoading(Z)V

    .line 24
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
