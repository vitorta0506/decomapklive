.class final Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/signin/dialog/SignInDialog;->initView$lambda-2(Lcom/guochao/faceshow/signin/dialog/SignInDialog;Landroid/view/View;)V
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
    c = "com.guochao.faceshow.signin.dialog.SignInDialog$initView$3$1"
    f = "SignInDialog.kt"
    i = {}
    l = {
        0x6e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/guochao/faceshow/signin/dialog/SignInDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/signin/dialog/SignInDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/signin/dialog/SignInDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;->this$0:Lcom/guochao/faceshow/signin/dialog/SignInDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;->this$0:Lcom/guochao/faceshow/signin/dialog/SignInDialog;

    invoke-direct {p1, v0, p2}, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;-><init>(Lcom/guochao/faceshow/signin/dialog/SignInDialog;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

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
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1$response$1;

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1$response$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;->this$0:Lcom/guochao/faceshow/signin/dialog/SignInDialog;

    invoke-virtual {v4}, Lcom/guochao/faceshow/signin/dialog/SignInDialog;->getCallBack()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;->this$0:Lcom/guochao/faceshow/signin/dialog/SignInDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;->this$0:Lcom/guochao/faceshow/signin/dialog/SignInDialog;

    .line 9
    invoke-virtual {v4}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz v4, :cond_6

    sget-object v5, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;

    invoke-virtual {v5, v0, v4}, Lcom/guochao/faceshow/signin/dialog/SignInResultDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/signin/bean/SigninResponse;)Lcom/guochao/faceshow/signin/dialog/SignInResultDialog;

    .line 11
    :cond_6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getNewUser()Lcom/guochao/faceshow/signin/bean/NewUser;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser()I

    move-result v0

    if-ne v0, v3, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getNewUser()Lcom/guochao/faceshow/signin/bean/NewUser;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/guochao/faceshow/signin/bean/NewUser;->getRegDay()I

    move-result v0

    if-ne v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_f

    .line 12
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getLuckInfo()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 14
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/signin/bean/RewardList;

    .line 15
    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeType()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_9

    .line 16
    iget v6, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v5}, Lcom/guochao/faceshow/signin/bean/RewardList;->getPrizeNum()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    add-int/2addr v6, v5

    iput v6, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_5

    .line 17
    :cond_c
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getNewUser()Lcom/guochao/faceshow/signin/bean/NewUser;

    move-result-object v2

    :cond_d
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->build(Lcom/guochao/faceshow/signin/bean/NewUser;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->getRewardDiamond()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->setRewardDiamond(Ljava/lang/String;)V

    .line 19
    :try_start_0
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;->getNewUserGiftBag()Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult$LotteryResultItem;->getRewardDiamond()Ljava/lang/String;

    move-result-object v0

    const-string v4, "data.getNewUserGiftBag().getRewardDiamond()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v4, Lcom/guochao/faceshow/utils/LiveRandomGo;->INSTANCE:Lcom/guochao/faceshow/utils/LiveRandomGo;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_7
    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/utils/LiveRandomGo;->addRewardDiamond(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :goto_8
    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;->this$0:Lcom/guochao/faceshow/signin/dialog/SignInDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v4, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog$Companion;

    const-string v5, "data"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v2}, Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;)Lcom/guochao/faceshow/signin/dialog/LotteryResultDialog;

    .line 23
    :cond_f
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->getStatus()Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_11

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_12

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/signin/dialog/SignInDialog$initView$3$1;->this$0:Lcom/guochao/faceshow/signin/dialog/SignInDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 25
    :cond_12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
