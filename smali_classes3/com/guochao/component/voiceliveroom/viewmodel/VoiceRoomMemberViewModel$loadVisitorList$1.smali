.class final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->loadVisitorList(Ljava/lang/String;ZI)V
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
    c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel$loadVisitorList$1"
    f = "VoiceRoomMemberViewModel.kt"
    i = {}
    l = {
        0x91
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $refresh:Z

.field final synthetic $roomId:Ljava/lang/String;

.field final synthetic $size:I

.field label:I

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;


# direct methods
.method constructor <init>(ZLcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->$refresh:Z

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->$roomId:Ljava/lang/String;

    iput p4, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->$size:I

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

    new-instance p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;

    iget-boolean v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->$refresh:Z

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    iget-object v3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->$roomId:Ljava/lang/String;

    iget v4, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->$size:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;-><init>(ZLcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->label:I

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
    iget-boolean p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->$refresh:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {p1, v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$setVisitorPage$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;I)V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$getRepository$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->$roomId:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$getVisitorPage$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)I

    move-result v3

    iget v4, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->$size:I

    iput v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->label:I

    invoke-virtual {p1, v1, v3, v4, p0}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;->getVisitorList(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 7
    :cond_3
    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$getVisitorPage$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 10
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_visitorList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;->getList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_visitorList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomVisitorListModel;->getList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_visitorList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_visitorList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadVisitorList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$getVisitorPage$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$setVisitorPage$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;I)V

    .line 14
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
