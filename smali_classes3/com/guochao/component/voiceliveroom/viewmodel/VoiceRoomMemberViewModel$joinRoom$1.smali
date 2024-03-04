.class final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->joinRoom(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
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
    c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel$joinRoom$1"
    f = "VoiceRoomMemberViewModel.kt"
    i = {}
    l = {
        0xa8
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $roomId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->$roomId:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

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

    new-instance p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->$roomId:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28
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
    iget v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->label:I

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
    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$getRepository$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;

    move-result-object v2

    iget-object v4, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->$roomId:Ljava/lang/String;

    iput v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->label:I

    invoke-virtual {v2, v4, v0}, Lcom/guochao/component/voiceliveroom/repository/VoiceRoomMemberRepository;->joinRoom(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 5
    :cond_2
    :goto_0
    check-cast v2, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 6
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;->onValue(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 8
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$getMSeatControllerViewModel$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object v1

    const/16 v4, 0x14

    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->setRoleType(I)V

    .line 9
    :cond_3
    sget-object v1, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v1}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/session/model/UserSessionModel;

    .line 10
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 11
    iget-object v6, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v6}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_memberList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    .line 12
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    .line 13
    invoke-virtual {v8}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getUserId()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_5
    move-object v9, v7

    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_6
    move-object v10, v7

    :goto_3
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 14
    iput-boolean v3, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 15
    invoke-virtual {v8}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v8, v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->setMemberType(I)V

    goto :goto_1

    .line 16
    :cond_8
    iget-boolean v3, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v3, :cond_9

    .line 17
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_memberList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iget-object v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_memberList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 18
    :cond_9
    iget-object v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_memberList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    iget-object v4, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v4}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_memberList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_e

    .line 19
    new-instance v5, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    const/4 v9, -0x1

    .line 20
    new-instance v6, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    if-eqz v1, :cond_a

    .line 21
    invoke-virtual {v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v8

    move-object v11, v8

    goto :goto_4

    :cond_a
    move-object v11, v7

    :goto_4
    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getNickName()Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    goto :goto_5

    :cond_b
    move-object v12, v7

    :goto_5
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v1, :cond_c

    .line 23
    invoke-virtual {v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserAvatar()Ljava/lang/String;

    move-result-object v7

    :cond_c
    move-object/from16 v16, v7

    const/16 v17, 0x0

    const/16 v18, 0x14

    const/4 v7, 0x0

    if-eqz v1, :cond_d

    .line 24
    invoke-virtual {v1}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getGender()I

    move-result v1

    move/from16 v19, v1

    goto :goto_6

    :cond_d
    const/16 v19, 0x0

    :goto_6
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x7e5c

    const/16 v27, 0x0

    move-object v10, v6

    .line 25
    invoke-direct/range {v10 .. v27}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v5

    .line 26
    invoke-direct/range {v8 .. v13}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;-><init>(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    invoke-interface {v4, v7, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v7, v4

    .line 28
    :cond_e
    invoke-virtual {v3, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 29
    :cond_f
    :goto_7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_10

    .line 30
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$joinRoom$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;->onError(ILjava/lang/String;)V

    .line 31
    :cond_10
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
