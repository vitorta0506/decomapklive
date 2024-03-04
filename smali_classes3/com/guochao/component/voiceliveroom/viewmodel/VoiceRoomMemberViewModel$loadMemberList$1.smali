.class final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->loadMemberList(Ljava/lang/String;II)V
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
    c = "com.guochao.component.voiceliveroom.viewmodel.VoiceRoomMemberViewModel$loadMemberList$1"
    f = "VoiceRoomMemberViewModel.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x6a,
        0x79,
        0x83
    }
    m = "invokeSuspend"
    n = {
        "totalList",
        "member",
        "totalList",
        "member"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $page:I

.field final synthetic $size:I

.field final synthetic $voiceRoomId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;


# direct methods
.method constructor <init>(ILcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->$page:I

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->$voiceRoomId:Ljava/lang/String;

    iput p4, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->$size:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->$page:I

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    iget-object v3, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->$voiceRoomId:Ljava/lang/String;

    iget v4, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->$size:I

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;-><init>(ILcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    move-object v3, v6

    goto/16 :goto_9

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Deferred;

    iget-object v5, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_7

    :cond_2
    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Deferred;

    iget-object v8, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iget v8, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->$page:I

    if-ne v8, v7, :cond_4

    .line 5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 6
    :cond_4
    iget-object v8, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v8}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_memberList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    :goto_0
    move-object v14, v8

    .line 7
    iget v8, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->$page:I

    if-ne v8, v7, :cond_6

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 8
    new-instance v11, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1$admin$1;

    iget-object v8, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    iget-object v12, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->$voiceRoomId:Ljava/lang/String;

    invoke-direct {v11, v8, v12, v6}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1$admin$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, v2

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v8

    goto :goto_1

    :cond_6
    move-object v8, v6

    :goto_1
    if-eqz v8, :cond_7

    .line 9
    invoke-interface {v8}, Lkotlinx/coroutines/Job;->start()Z

    move-object v15, v8

    goto :goto_2

    :cond_7
    move-object v15, v6

    :goto_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 10
    new-instance v11, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1$member$1;

    iget-object v8, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    iget-object v12, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->$voiceRoomId:Ljava/lang/String;

    iget v13, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->$size:I

    iget v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->$page:I

    const/16 v21, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v8

    move-object/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v3

    invoke-direct/range {v16 .. v21}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1$member$1;-><init>(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, v2

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v2

    .line 11
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->start()Z

    if-eqz v15, :cond_d

    .line 12
    iput-object v14, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->L$1:Ljava/lang/Object;

    iput v7, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->label:I

    invoke-interface {v15, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_8

    return-object v1

    :cond_8
    move-object v8, v14

    :goto_3
    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;

    if-eqz v3, :cond_c

    iget-object v9, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    .line 13
    new-instance v15, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/16 v16, 0x0

    move-object v10, v15

    move-object v6, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;-><init>(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v6, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    const/16 v23, -0x1

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->getOwner()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x4

    const/16 v27, 0x0

    move-object/from16 v22, v6

    invoke-direct/range {v22 .. v27}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;-><init>(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->getAdmins()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-nez v6, :cond_b

    .line 16
    new-instance v6, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v15}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;-><init>(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->getAdmins()Ljava/util/List;

    move-result-object v6

    .line 18
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    const/16 v10, 0xa

    .line 19
    invoke-virtual {v13, v10}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->setMemberType(I)V

    .line 20
    new-instance v10, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;-><init>(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 21
    :cond_b
    invoke-static {v9}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_titles$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    .line 22
    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->getMemberCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->getMemberMaxCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v10, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    const-string v11, "(%s/%s)"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "format(format, *args)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v6, v10}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 24
    invoke-static {v9}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_memberNum$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->getMemberCount()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_c
    move-object v14, v8

    .line 25
    :cond_d
    iput-object v14, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_e

    return-object v1

    :cond_e
    move-object v5, v14

    :goto_7
    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;

    if-eqz v3, :cond_11

    .line 26
    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->getList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    const/4 v4, 0x1

    :cond_10
    if-nez v4, :cond_11

    .line 27
    new-instance v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;-><init>(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->getList()Ljava/util/List;

    move-result-object v3

    .line 29
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    const/16 v4, 0x14

    .line 30
    invoke-virtual {v10, v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->setMemberType(I)V

    .line 31
    new-instance v4, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;-><init>(ILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 32
    :cond_11
    iget-object v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v3}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_memberList$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 33
    iput-object v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_12

    return-object v1

    :cond_12
    :goto_9
    check-cast v2, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;

    if-eqz v1, :cond_14

    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$loadMemberList$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    .line 34
    invoke-static {v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$get_memberListHasMore$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberPagedModel;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v7

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_a

    :cond_13
    move-object v6, v3

    :goto_a
    invoke-virtual {v2, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 35
    :cond_14
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
