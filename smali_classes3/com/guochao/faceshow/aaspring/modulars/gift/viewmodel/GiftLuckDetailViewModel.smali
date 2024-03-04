.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u001b\u0010\n\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;",
        "()V",
        "lastCancel",
        "Landroidx/core/os/CancellationSignal;",
        "getConfig",
        "",
        "giftId",
        "",
        "getData",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private lastCancel:Landroidx/core/os/CancellationSignal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    return-void
.end method

.method public static final synthetic access$getData(Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;->getData(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLastCancel$p(Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;)Landroidx/core/os/CancellationSignal;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;->lastCancel:Landroidx/core/os/CancellationSignal;

    return-object p0
.end method

.method public static final synthetic access$getModelLiveData(Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setLastCancel$p(Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;Landroidx/core/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;->lastCancel:Landroidx/core/os/CancellationSignal;

    return-void
.end method

.method private final getData(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 3
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;->access$getLastCancel$p(Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;)Landroidx/core/os/CancellationSignal;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 5
    :cond_0
    new-instance v1, Landroidx/core/os/CancellationSignal;

    invoke-direct {v1}, Landroidx/core/os/CancellationSignal;-><init>()V

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;->access$setLastCancel$p(Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;Landroidx/core/os/CancellationSignal;)V

    .line 6
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;->access$getLastCancel$p(Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;)Landroidx/core/os/CancellationSignal;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v3, "api/token/promotion/sendgift/getConfig"

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "giftId"

    invoke-virtual {v2, v3, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/GiftLuckDetailBean;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel$getData$lambda-3$$inlined$success$1;

    invoke-direct {v3, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel$getData$lambda-3$$inlined$success$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    const-class v3, Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel$getData$lambda-3$$inlined$fail$1;

    invoke-direct {v3, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel$getData$lambda-3$$inlined$fail$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    .line 13
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel$getData$2$2;

    invoke-direct {v2, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel$getData$2$2;-><init>(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;Landroidx/core/os/CancellationSignal;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 14
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final getConfig(I)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel$getConfig$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel$getConfig$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/viewmodel/GiftLuckDetailViewModel;ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
