.class final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->saveVoiceRoomSetting(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;Lkotlin/jvm/functions/Function2;)V
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
    c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1"
    f = "VoiceRoomSeatControllerViewModel.kt"
    i = {}
    l = {
        0x2b6,
        0x2be,
        0x2c0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $call:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;

.field label:I

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->$model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->$call:Lkotlin/jvm/functions/Function2;

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

    new-instance p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->$model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->$call:Lkotlin/jvm/functions/Function2;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;-><init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 47
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
    iget v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    new-instance v2, Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;

    invoke-direct {v2}, Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;-><init>()V

    iget-object v6, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->$model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;

    iput v5, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->label:I

    invoke-virtual {v2, v6, v0}, Lcom/guochao/component/voiceliveroom/repository/CreateRoomRepository;->saveOrUpdateVoiceRoomInfo(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    .line 5
    :cond_4
    :goto_1
    check-cast v2, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 7
    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_roomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    iget-object v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    invoke-static {v3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->access$get_roomInfo$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v6, :cond_5

    .line 8
    iget-object v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->$model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 9
    iget-object v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->$model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;->getCoverImgUrl()Ljava/lang/String;

    move-result-object v12

    .line 10
    iget-object v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->$model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;->getBackImgUrl()Ljava/lang/String;

    move-result-object v22

    .line 11
    iget-object v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->$model:Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCreateRoomModel;->getTagIds()Ljava/util/List;

    move-result-object v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

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

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, -0x40b1

    const/16 v45, 0x1

    const/16 v46, 0x0

    .line 12
    invoke-static/range {v6 .. v46}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->$call:Lkotlin/jvm/functions/Function2;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    iput v4, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->label:I

    invoke-interface {v2, v3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    .line 14
    :cond_6
    iget-object v4, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->$call:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    iput v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel$saveVoiceRoomSetting$1;->label:I

    invoke-interface {v4, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    .line 15
    :cond_7
    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
