.class final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->closeMicro(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
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
    c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$closeMicro$1"
    f = "VoiceRoomSeatControllerViewModel.kt"
    i = {}
    l = {
        0x18b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $userId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

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

    new-instance v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 52
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v6, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 1
    iget v0, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->label:I

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v9, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getVoiceId()I

    move-result v1

    if-eq v1, v8, :cond_f

    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_f

    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastSeatIndex()I

    move-result v1

    if-eq v1, v8, :cond_f

    .line 5
    iget-object v4, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->$userId:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v0, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    .line 6
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getRepository()Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getVoiceId()I

    move-result v2

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastRoomId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastSeatIndex()I

    move-result v5

    .line 8
    iput v9, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->label:I

    move-object v0, v1

    move v1, v2

    move-object v2, v3

    move v3, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;->closeMicro(ILjava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_3

    return-object v7

    .line 9
    :cond_3
    :goto_1
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v10

    :goto_2
    if-nez v0, :cond_5

    goto/16 :goto_4

    .line 11
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_d

    .line 12
    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->$userId:Ljava/lang/String;

    sget-object v2, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v2, v10

    :goto_3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13
    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->stopAudio()V

    .line 14
    :cond_7
    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_roomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iget-object v2, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_roomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v11, :cond_c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    .line 15
    iget-object v2, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_roomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v3, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->$userId:Ljava/lang/String;

    .line 16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 17
    invoke-virtual {v7}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v10, v5

    .line 18
    :cond_9
    check-cast v10, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v10, :cond_a

    const/4 v3, 0x4

    .line 19
    invoke-virtual {v10, v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->setSeatStatus(I)V

    .line 20
    :cond_a
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_b
    move-object/from16 v40, v10

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const v49, -0x1000001

    const/16 v50, 0x1

    const/16 v51, 0x0

    .line 21
    invoke-static/range {v11 .. v51}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v10

    :cond_c
    invoke-virtual {v1, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 22
    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    if-eqz v1, :cond_11

    invoke-interface {v1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;->onValue(Ljava/lang/Object;)V

    goto :goto_5

    .line 23
    :cond_d
    :goto_4
    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    if-eqz v1, :cond_11

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_e
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;->onValue(Ljava/lang/Object;)V

    goto :goto_5

    .line 24
    :cond_f
    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$closeMicro$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    if-eqz v1, :cond_10

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;->onValue(Ljava/lang/Object;)V

    .line 25
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4e0b\u9ea6\u4f20\u53c2\u6709\u8bef"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_11
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
