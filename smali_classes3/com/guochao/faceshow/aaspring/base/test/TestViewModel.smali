.class public final Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/base/test/TestModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u0007\u001a\u00020\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/test/TestModel;",
        "()V",
        "async1",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "async2",
        "loadData",
        "",
        "testAsync",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final async1(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async1$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async1$1;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async1$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async1$1;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async1$1;-><init>(Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async1$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async1$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v4, 0x64

    .line 4
    iput v3, v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async1$1;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final async2(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async2$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async2$1;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async2$1;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async2$1;-><init>(Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v4, 0x12c

    .line 4
    iput v3, v0, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$async2$1;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x2

    .line 5
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final loadData()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;->testAsync()V

    return-void
.end method

.method public final testAsync()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$testAsync$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/guochao/faceshow/aaspring/base/test/TestViewModel$testAsync$1;-><init>(Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
