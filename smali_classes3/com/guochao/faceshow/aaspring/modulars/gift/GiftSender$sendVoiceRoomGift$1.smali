.class final Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->sendVoiceRoomGift(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
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
    c = "com.guochao.faceshow.aaspring.modulars.gift.GiftSender$sendVoiceRoomGift$1"
    f = "GiftSender.kt"
    i = {}
    l = {
        0x168
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic $sendGiftRequestModel:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

.field label:I


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->$sendGiftRequestModel:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

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

    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->$sendGiftRequestModel:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->label:I

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
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->$sendGiftRequestModel:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->access$sendVoiceRoomGiftToServer(Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->$sendGiftRequestModel:Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->getLucyGift()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->access$getRequestList$p()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->getEndCombo()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->access$getLuckyGiftSendCount$p()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 7
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->o()V

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->access$setLuckyGiftSendCount$p(I)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_4

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender$sendVoiceRoomGift$1;->$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;-><init>()V

    .line 14
    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V

    .line 16
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    invoke-virtual {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    goto :goto_1

    .line 18
    :cond_5
    new-instance v1, Lg7/a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getError()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onFailure(Lg7/a;)V

    .line 19
    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
