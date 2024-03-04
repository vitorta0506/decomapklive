.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ\u001f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00020\u0008H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ!\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u000cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u0019\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u0019\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J!\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f2\u0006\u0010\u001b\u001a\u00020\u0006H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;",
        "",
        "()V",
        "googlePayOrderRequestModelDatabase",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;",
        "findSavedSubscribeRequestModel",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;",
        "googleOrderId",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getSavedPurchaseRequestModel",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;",
        "userId",
        "googlePayOrderCertificate",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "",
        "requestModel",
        "(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeSaveModel",
        "",
        "removeSubscribeRequestModel",
        "model",
        "(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "savePurchaseRequestModel",
        "saveSubscribeRequestModel",
        "subscribeCertificate",
        "subscribeRequestModel",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_GOOGLE_PAY_CERTIFICATE:Ljava/lang/String; = "api/token/trade/recharge/google/payCertificate/_vse"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final URL_GOOGLE_SUBSCRIBE_CERTIFICATE:Ljava/lang/String; = "api/token/trade/recharge/vip/payCertificate/_vse"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final googlePayOrderRequestModelDatabase:Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->googlePayOrderRequestModelDatabase:Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;

    return-void
.end method

.method public static final synthetic access$getGooglePayOrderRequestModelDatabase$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;->googlePayOrderRequestModelDatabase:Lcom/guochao/faceshow/aaspring/modulars/googlepay/database/GooglePayOrderRequestModelDatabase;

    return-object p0
.end method


# virtual methods
.method public final findSavedSubscribeRequestModel(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$findSavedSubscribeRequestModel$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$findSavedSubscribeRequestModel$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getSavedPurchaseRequestModel(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$getSavedPurchaseRequestModel$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$getSavedPurchaseRequestModel$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final googlePayOrderCertificate(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$googlePayOrderCertificate$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$googlePayOrderCertificate$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final removeSaveModel(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$removeSaveModel$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$removeSaveModel$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final removeSubscribeRequestModel(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$removeSubscribeRequestModel$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$removeSubscribeRequestModel$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final savePurchaseRequestModel(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$savePurchaseRequestModel$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$savePurchaseRequestModel$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final saveSubscribeRequestModel(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$saveSubscribeRequestModel$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$saveSubscribeRequestModel$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final subscribeCertificate(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$subscribeCertificate$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository$subscribeCertificate$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
