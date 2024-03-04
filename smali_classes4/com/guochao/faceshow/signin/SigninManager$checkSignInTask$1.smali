.class final Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/signin/SigninManager;->checkSignInTask(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.guochao.faceshow.signin.SigninManager$checkSignInTask$1"
    f = "SigninManager.kt"
    i = {}
    l = {
        0x25
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $callBack:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/guochao/faceshow/signin/bean/SigninResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

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

.field label:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/faceshow/signin/bean/SigninResponse;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/signin/bean/SigninResponse;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->$callBack:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->$signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance p1, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;

    iget-object v0, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->$callBack:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->$signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;-><init>(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->label:I

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

    new-instance v1, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$response$1;

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$response$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->label:I

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

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/bean/SigninBean;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->$callBack:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1;->$signResponse:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninBean;->getDayFlag()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 9
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninBean;->getRegDays()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/bean/SigninBean;->getDaySign()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_7

    .line 10
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;

    invoke-direct {v8, v4, v0, v2}, Lcom/guochao/faceshow/signin/SigninManager$checkSignInTask$1$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 12
    :cond_7
    :goto_2
    sget-object v2, Lcom/guochao/faceshow/signin/dialog/SignInDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/SignInDialog$Companion;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v3, "activity.supportFragmentManager"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, p1}, Lcom/guochao/faceshow/signin/dialog/SignInDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/signin/bean/SigninBean;)Lcom/guochao/faceshow/signin/dialog/SignInDialog;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_3

    .line 13
    :cond_8
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/signin/dialog/SignInDialog;->setCallBack(Lkotlin/jvm/functions/Function1;)V

    .line 14
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
