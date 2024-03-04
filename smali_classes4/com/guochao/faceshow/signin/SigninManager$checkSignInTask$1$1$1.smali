.class final Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.guochao.faceshow.signin.SigninManager$checkSignInTask$1$1$1"
    f = "SigninManager.kt"
    i = {}
    l = {
        0x31
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/signin/bean/SigninResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/signin/bean/SigninResponse;",
            ">;>;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->$signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;

    iget-object v0, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->$signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0, v1, p2}, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

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
    iget-object p1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->$signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v4, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1$1;

    iget-object v5, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->$signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4, v5, v2}, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->label:I

    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 5
    :goto_0
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->$signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getStatus()Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_10

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->$signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getNewUser()Lcom/guochao/faceshow/signin/bean/NewUser;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser()I

    move-result p1

    if-ne p1, v3, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->$signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getNewUser()Lcom/guochao/faceshow/signin/bean/NewUser;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/NewUser;->getRegDay()I

    move-result p1

    if-ne p1, v3, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_10

    .line 8
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 9
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 10
    iget-object v4, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->$signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getLuckInfo()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 11
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/signin/bean/RewardList;

    .line 12
    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_a

    .line 13
    iget v6, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    :goto_6
    add-int/2addr v6, v7

    iput v6, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 14
    :cond_a
    :goto_7
    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_7

    .line 15
    iget v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    :goto_8
    add-int/2addr v6, v5

    iput v6, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_5

    .line 16
    :cond_d
    iget-object v3, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->$signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getNewUser()Lcom/guochao/faceshow/signin/bean/NewUser;

    move-result-object v2

    :cond_e
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->build(Lcom/guochao/faceshow/signin/bean/NewUser;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object v3

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->getCharmValues()Ljava/lang/String;

    move-result-object v4

    const-string v5, "data.newUserGiftBag.charmValues"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->setCharmValues(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object p1

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->getRewardDiamond()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data.newUserGiftBag.rewardDiamond"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->setRewardDiamond(Ljava/lang/String;)V

    .line 19
    :try_start_0
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->getRewardDiamond()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v1, Lcom/guochao/faceshow/utils/LiveRandomGo;->INSTANCE:Lcom/guochao/faceshow/utils/LiveRandomGo;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_9
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/utils/LiveRandomGo;->addRewardDiamond(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :goto_a
    iget-object p1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog$Companion;

    const-string v1, "activity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;)Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;

    .line 23
    :cond_10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
