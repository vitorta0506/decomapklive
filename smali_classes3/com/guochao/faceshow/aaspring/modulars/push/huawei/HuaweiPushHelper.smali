.class public final Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;
.super Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;",
        "Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;",
        "tokenType",
        "",
        "(Ljava/lang/String;)V",
        "getTokenType",
        "()Ljava/lang/String;",
        "checkToken",
        "",
        "initOnce",
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
.field private final tokenType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tokenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/base/BasePushHelper;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;->tokenType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "20"

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;->checkToken$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;->initOnce$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;)V

    return-void
.end method

.method private static final checkToken$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lsb/a;->d(Landroid/content/Context;)Lsb/a;

    move-result-object v0

    const-string v1, "client/app_id"

    .line 2
    invoke-interface {v0, v1}, Lrb/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/aaid/HmsInstanceId;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/aaid/HmsInstanceId;

    move-result-object v1

    const-string v2, "HCM"

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/aaid/HmsInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;->getTokenType()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->setThirdPushToken$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static final initOnce$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lsb/a;->d(Landroid/content/Context;)Lsb/a;

    move-result-object v0

    const-string v1, "client/app_id"

    .line 2
    invoke-interface {v0, v1}, Lrb/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/aaid/HmsInstanceId;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/aaid/HmsInstanceId;

    move-result-object v1

    const-string v2, "HCM"

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/aaid/HmsInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiPushHelper::"

    .line 4
    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;->getTokenType()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->setThirdPushToken$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public checkToken()V
    .locals 3

    new-instance v0, Lt9/a;

    invoke-direct {v0, p0}, Lt9/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v1, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->run$default(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public initOnce()V
    .locals 3

    new-instance v0, Lt9/b;

    invoke-direct {v0, p0}, Lt9/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/push/huawei/HuaweiPushHelper;)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v1, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->run$default(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method
