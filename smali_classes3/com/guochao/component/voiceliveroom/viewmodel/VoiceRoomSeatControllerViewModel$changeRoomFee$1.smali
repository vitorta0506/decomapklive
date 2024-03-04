.class final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->changeRoomFee(ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
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
    c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$changeRoomFee$1"
    f = "VoiceRoomSeatControllerViewModel.kt"
    i = {}
    l = {
        0x27f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fee:I

.field final synthetic $gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
            "I",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iput p2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->$fee:I

    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

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

    new-instance p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->$fee:I

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;ILcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 45
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getRepository()Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;

    move-result-object v2

    iget v4, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->$fee:I

    iput v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->label:I

    invoke-virtual {v2, v4, v0}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomSeatControllerRepository;->changeRoomFee(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 5
    :cond_2
    :goto_0
    check-cast v2, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_roomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_roomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->$fee:I

    move/from16 v21, v2

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const v42, -0x8001

    const/16 v43, 0x1

    const/16 v44, 0x0

    invoke-static/range {v4 .. v44}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    if-eqz v1, :cond_5

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;->onValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_4
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$changeRoomFee$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;->onError(ILjava/lang/String;)V

    .line 10
    :cond_5
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
