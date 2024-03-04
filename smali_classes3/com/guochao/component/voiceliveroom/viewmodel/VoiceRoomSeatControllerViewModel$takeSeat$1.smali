.class final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->takeSeat(Ljava/lang/String;I)I
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
    c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$takeSeat$1"
    f = "VoiceRoomSeatControllerViewModel.kt"
    i = {}
    l = {
        0xc8,
        0xdf
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic $roomId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->$roomId:Ljava/lang/String;

    iput p3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->$index:I

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

    new-instance p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->$roomId:Ljava/lang/String;

    iget v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->$index:I

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 53
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
    iget v0, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->label:I

    const/16 v8, 0x138c

    const/4 v1, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastSeatIndex()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    .line 5
    iget-object v0, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getRepository()Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;

    move-result-object v0

    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->$roomId:Ljava/lang/String;

    iget v3, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->$index:I

    iput v2, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->label:I

    invoke-virtual {v0, v1, v3, v6}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;->takeSeat(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_3

    return-object v7

    .line 6
    :cond_3
    :goto_0
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    iget-object v0, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->startLocalAudio(I)V

    .line 9
    iget-object v0, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->$roomId:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_roomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getSignInfo()Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    move-result-object v11

    :cond_4
    iget v3, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->$index:I

    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->enterTRTCRoom(Ljava/lang/String;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;ZI)V

    goto/16 :goto_3

    .line 10
    :cond_5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result v1

    if-ne v1, v8, :cond_6

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    .line 12
    sget v1, Lcom/guochao/component/liveroom/R$string;->voice_room_tips_micro_type_member_only:I

    .line 13
    invoke-static {v0, v1, v10, v9, v11}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto/16 :goto_3

    .line 14
    :cond_6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result v1

    const/16 v2, 0x138a

    if-ne v1, v2, :cond_7

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    .line 16
    sget v1, Lcom/guochao/component/liveroom/R$string;->voice_room_room_toast_frozen:I

    .line 17
    invoke-static {v0, v1, v10, v9, v11}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto/16 :goto_3

    .line 18
    :cond_7
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v12

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/16 v17, 0x0

    .line 20
    invoke-static/range {v12 .. v17}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto/16 :goto_3

    .line 21
    :cond_8
    iget-object v0, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getRepository()Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;

    move-result-object v0

    iget-object v2, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getVoiceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->$roomId:Ljava/lang/String;

    iget-object v4, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getLastSeatIndex()I

    move-result v4

    iget v5, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->$index:I

    iput v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->label:I

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;->switchSeat(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_9

    return-object v7

    .line 22
    :cond_9
    :goto_1
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 23
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 24
    iget-object v0, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iget v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->$index:I

    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->setLastSeatIndex(I)V

    .line 25
    iget-object v0, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_roomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_roomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v12, :cond_f

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

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    .line 26
    iget-object v1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_roomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getMicroList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    iget v2, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$takeSeat$1;->$index:I

    .line 27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 28
    invoke-virtual {v5}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getUserId()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v7}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_b
    move-object v7, v11

    :goto_2
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v11, v4

    .line 29
    :cond_c
    check-cast v11, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    if-eqz v11, :cond_d

    .line 30
    invoke-virtual {v11, v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->setSeatIndex(I)V

    .line 31
    :cond_d
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_e
    move-object/from16 v41, v11

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const v50, -0x1000001

    const/16 v51, 0x1

    const/16 v52, 0x0

    .line 32
    invoke-static/range {v12 .. v52}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v11

    :cond_f
    invoke-virtual {v0, v11}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 33
    :cond_10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result v0

    if-ne v0, v8, :cond_11

    .line 34
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    .line 35
    sget v1, Lcom/guochao/component/liveroom/R$string;->voice_room_tips_micro_type_member_only:I

    .line 36
    invoke-static {v0, v1, v10, v9, v11}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 37
    :cond_11
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
