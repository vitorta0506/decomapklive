.class public final Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005J9\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2!\u0010\u000c\u001a\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00070\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;",
        "()V",
        "loadSetting",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "saveCurrentPriceSetting",
        "",
        "type",
        "",
        "model",
        "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
        "callBack",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "success",
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


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getModelLiveData(Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadSetting(Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;->loadSetting(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final loadSetting(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v2, "tokens/appoint/V2"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$loadSetting$2$1;

    invoke-direct {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$loadSetting$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 3
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final saveCurrentPriceSetting(ILcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->setUpdate:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, "audioPriceRuleId"

    goto :goto_0

    :cond_0
    const-string v1, "videoPriceRuleId"

    .line 2
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->getRuleId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel$saveCurrentPriceSetting$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;ILkotlin/jvm/functions/Function1;Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
