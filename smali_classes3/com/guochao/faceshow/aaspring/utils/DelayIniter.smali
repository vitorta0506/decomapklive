.class public final Lcom/guochao/faceshow/aaspring/utils/DelayIniter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0007J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0003J\u0008\u0010\u0016\u001a\u00020\u0010H\u0007J\u0008\u0010\u0017\u001a\u00020\u0010H\u0007J\u0008\u0010\u0018\u001a\u00020\u0010H\u0007J\u0008\u0010\u0019\u001a\u00020\u0010H\u0007R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/DelayIniter;",
        "",
        "()V",
        "context",
        "Lcom/guochao/faceshow/BaseApplication;",
        "kotlin.jvm.PlatformType",
        "facebookInited",
        "",
        "mCurrentNetwork",
        "",
        "mediaFileInited",
        "networkReged",
        "tencentInited",
        "twitterInited",
        "weiboInited",
        "checkNetworkToken",
        "",
        "checkSecondDay",
        "initFacebook",
        "initTXConfig",
        "tencentConfigBean",
        "Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;",
        "initTencentConfig",
        "initTwitter",
        "initWeiBo",
        "initWhenSplashOrMain",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/DelayIniter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final context:Lcom/guochao/faceshow/BaseApplication;

.field private static facebookInited:Z

.field private static mCurrentNetwork:I

.field private static mediaFileInited:Z

.field private static networkReged:Z

.field private static tencentInited:Z

.field private static twitterInited:Z

.field private static weiboInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/DelayIniter;

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->context:Lcom/guochao/faceshow/BaseApplication;

    const/4 v0, -0x1

    .line 2
    sput v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->mCurrentNetwork:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->checkNetworkToken$lambda-3(I)V

    return-void
.end method

.method public static final synthetic access$getContext$p()Lcom/guochao/faceshow/BaseApplication;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->context:Lcom/guochao/faceshow/BaseApplication;

    return-object v0
.end method

.method public static final checkNetworkToken()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->networkReged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->networkReged:Z

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->create(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/c;->a:Lcom/guochao/faceshow/aaspring/utils/c;

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->register(Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;)V

    return-void
.end method

.method private static final checkNetworkToken$lambda-3(I)V
    .locals 1

    .line 1
    sget v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->mCurrentNetwork:I

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->refreshToken()V

    .line 3
    :cond_0
    sput p0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->mCurrentNetwork:I

    return-void
.end method

.method private final checkSecondDay()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "second_day"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const/4 v1, 0x0

    const-string v4, "second_day_uploaded"

    invoke-static {v0, v4, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x6

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v3, v2

    const/4 v2, 0x1

    if-ne v3, v2, :cond_2

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 9
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v1, "second_day_meeting_3000"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0, v4, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public static final initFacebook()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->facebookInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->facebookInited:Z

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->context:Lcom/guochao/faceshow/BaseApplication;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    return-void
.end method

.method private static final initTXConfig(Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getImAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/manager/im/a;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/guochao/library_xmagic/XMagicHelper;->Companion:Lcom/guochao/library_xmagic/XMagicHelper$Companion;

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getBeautyKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tencentConfigBean.beautyKey"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getBeautyLicenseUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tencentConfigBean.beautyLicenseUrl"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Lcom/tencent/rtmp/TXLiveBase;->setConsoleEnabled(Z)V

    const/4 v1, 0x6

    .line 5
    invoke-static {v1}, Lcom/tencent/rtmp/TXLiveBase;->setLogLevel(I)V

    .line 6
    invoke-static {}, Lcom/tencent/ugc/TXUGCBase;->getInstance()Lcom/tencent/ugc/TXUGCBase;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getBeautyLicenseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getBeautyKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/ugc/TXUGCBase;->setLicence(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getLiveAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/rtmp/TXLiveBase;->setAppID(Ljava/lang/String;)V

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/DelayIniter$initTXConfig$1;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter$initTXConfig$1;-><init>()V

    invoke-static {v1}, Lcom/tencent/rtmp/TXLiveBase;->setListener(Lcom/tencent/rtmp/TXLiveBaseListener;)V

    .line 10
    invoke-static {}, Lcom/tencent/rtmp/TXLiveBase;->getInstance()Lcom/tencent/rtmp/TXLiveBase;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getBeautyLicenseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getBeautyKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, v2, p0}, Lcom/tencent/rtmp/TXLiveBase;->setLicence(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final initTencentConfig()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->tencentInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->tencentInited:Z

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->context:Lcom/guochao/faceshow/BaseApplication;

    const-string v1, "KEY_LICENCE_DIALOG_HAS_SHOWED"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    const-string v1, "api/live/license"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/TencentBean;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/DelayIniter$initTencentConfig$$inlined$success$1;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter$initTencentConfig$$inlined$success$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/DelayIniter$initTencentConfig$$inlined$fail$1;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter$initTencentConfig$$inlined$fail$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    :cond_2
    return-void
.end method

.method public static final initTwitter()V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->twitterInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->twitterInited:Z

    .line 3
    :try_start_0
    new-instance v0, Lcom/twitter/sdk/android/core/n$b;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/n$b;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v1, Lcom/twitter/sdk/android/core/c;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/c;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/n$b;->c(Lcom/twitter/sdk/android/core/g;)Lcom/twitter/sdk/android/core/n$b;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 6
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->context:Lcom/guochao/faceshow/BaseApplication;

    const v3, 0x7f12000a

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f12000b

    .line 7
    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-direct {v1, v3, v2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/n$b;->d(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/n$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/n$b;->b(Z)Lcom/twitter/sdk/android/core/n$b;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/n$b;->a()Lcom/twitter/sdk/android/core/n;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/twitter/sdk/android/core/l;->i(Lcom/twitter/sdk/android/core/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final initWeiBo()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->weiboInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->weiboInited:Z

    return-void
.end method

.method public static final initWhenSplashOrMain()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->mediaFileInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->app_open:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/DelayIniter;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->checkSecondDay()V

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->startDownload()V

    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->mediaFileInited:Z

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->Companion:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->readIfHasPermission()V

    .line 7
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->Companion:Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->context:Lcom/guochao/faceshow/BaseApplication;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->init(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UnusedFileDeleter;->delete()V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->e()Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->f()V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;->getDefault()Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initTXConfig(Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initWeiBo()V

    return-void
.end method
