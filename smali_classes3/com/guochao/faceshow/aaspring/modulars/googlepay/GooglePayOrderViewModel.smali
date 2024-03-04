.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u0006\u0010\r\u001a\u00020\tJ \u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\n\u001a\u00020\u000cJ\'\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0002\u0010\u0019J,\u0010\u001a\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000c2\u000c\u0008\u0002\u0010\u001b\u001a\u00060\u001cj\u0002`\u001d2\u000c\u0008\u0002\u0010\u001e\u001a\u00060\u001cj\u0002`\u001dH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "()V",
        "lastCheckTime",
        "",
        "repository",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;",
        "checkHistorySubscribe",
        "",
        "purchase",
        "",
        "Lcom/android/billingclient/api/Purchase;",
        "checkSavedPayOrder",
        "googlePayCertificate",
        "sceneType",
        "",
        "extData",
        "",
        "loadEvent",
        "requestModel",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;",
        "cache",
        "",
        "diamond",
        "(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;ZLjava/lang/Integer;)V",
        "subscribePayCertificate",
        "success",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "faile",
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
.field private lastCheckTime:J

.field private final repository:Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->repository:Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->repository:Lcom/guochao/faceshow/aaspring/modulars/googlepay/repository/GooglePayOrderRepository;

    return-object p0
.end method

.method public static final synthetic access$loadEvent(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;ZLjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->loadEvent(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;ZLjava/lang/Integer;)V

    return-void
.end method

.method private final loadEvent(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;ZLjava/lang/Integer;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "nickname"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "item_name"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content_type"

    const-string v2, "googlepay"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;->getSceneType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sceneType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v1, "a_app_purchase"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-nez p2, :cond_0

    const-string p2, "\u6b63\u5e38\u5b8c\u6210\u8ba2\u5355\u6210\u529f"

    goto :goto_0

    :cond_0
    const-string p2, "\u8fdb\u5165app\u91cd\u8bd5\u5b8c\u6210\u8ba2\u5355\u6210\u529f"

    :goto_0
    const-string v0, "params"

    .line 9
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p2

    const-string v0, "g_pay_after_server_success"

    .line 11
    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->f()I

    move-result p1

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-le p2, p1, :cond_2

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    const p3, 0x7f1206d7

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, p3, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 15
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/bean/UserBean;->setRecharged(I)V

    .line 16
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lp9/a;->B(I)V

    .line 17
    sget-object p1, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {p1}, Lcom/guochao/faceshow/signin/SigninManager;->getRechargeListeners()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/signin/RechargeListener;

    .line 18
    invoke-interface {p2}, Lcom/guochao/faceshow/signin/RechargeListener;->onRecharged()V

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {}, Lb8/e;->h()V

    :cond_2
    return-void
.end method

.method public static synthetic subscribePayCertificate$default(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lcom/android/billingclient/api/Purchase;Ljava/lang/Runnable;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$default$$inlined$Runnable$1;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$default$$inlined$Runnable$1;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$default$$inlined$Runnable$2;

    invoke-direct {p3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$default$$inlined$Runnable$2;-><init>()V

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->subscribePayCertificate(Lcom/android/billingclient/api/Purchase;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final checkHistorySubscribe(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "purchase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkHistorySubscribe$1;-><init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final checkSavedPayOrder()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->lastCheckTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->lastCheckTime:J

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$checkSavedPayOrder$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final googlePayCertificate(ILjava/lang/String;Lcom/android/billingclient/api/Purchase;)V
    .locals 19
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/billingclient/api/Purchase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p3

    const-string v1, "purchase"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c37\u6b4c\u56de\u8c03\u4e86\u652f\u4ed8\u7ed3\u679c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debug(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 2
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/PayLoadingDialog$Companion;->showDialog()V

    .line 3
    invoke-virtual/range {p3 .. p3}, Lcom/android/billingclient/api/Purchase;->f()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    :goto_0
    if-nez v6, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v12

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;

    .line 8
    invoke-virtual/range {p3 .. p3}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v5

    const-string v2, "purchase.orderId"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual/range {p3 .. p3}, Lcom/android/billingclient/api/Purchase;->c()J

    move-result-wide v7

    .line 10
    invoke-virtual/range {p3 .. p3}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v9

    const-string v2, "purchase.originalJson"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p3 .. p3}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v10

    const-string v0, "purchase.signature"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    .line 12
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    move/from16 v11, p1

    move-object/from16 v13, p2

    .line 13
    invoke-direct/range {v4 .. v13}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v13

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v14

    const/4 v15, 0x0

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$googlePayCertificate$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GooglePayOrderRequestModel;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final subscribePayCertificate(Lcom/android/billingclient/api/Purchase;)V
    .locals 7
    .param p1    # Lcom/android/billingclient/api/Purchase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "purchase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->subscribePayCertificate$default(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lcom/android/billingclient/api/Purchase;Ljava/lang/Runnable;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final subscribePayCertificate(Lcom/android/billingclient/api/Purchase;Ljava/lang/Runnable;)V
    .locals 7
    .param p1    # Lcom/android/billingclient/api/Purchase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "purchase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->subscribePayCertificate$default(Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Lcom/android/billingclient/api/Purchase;Ljava/lang/Runnable;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final subscribePayCertificate(Lcom/android/billingclient/api/Purchase;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9
    .param p1    # Lcom/android/billingclient/api/Purchase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "purchase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "faile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8c37\u6b4c\u56de\u8c03\u4e86\u8ba2\u9605\u7ed3\u679c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debug(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel$subscribePayCertificate$3;-><init>(Lcom/android/billingclient/api/Purchase;Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;Ljava/lang/Runnable;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
