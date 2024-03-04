.class public Lcom/guochao/faceshow/BaseAppContext;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/GCMvvmApplication;
.source "SourceFile"


# static fields
.field public static UA:Ljava/lang/String; = null

.field public static isChange:Z = false

.field public static isClearHalloween:Z = false


# instance fields
.field mOnNetworkChangeCallBack:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;

.field public normalLogined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/GCMvvmApplication;-><init>()V

    return-void
.end method

.method private checkChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, p2, p3, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x1

    .line 4
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 p3, 0x3

    if-lt p4, p3, :cond_1

    .line 5
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    :cond_1
    const/4 p2, 0x0

    .line 6
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private considerImportance(I)I
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isLowMemoryDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    :cond_0
    return p1
.end method

.method private createNotificationChannels()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const-string v0, "notification"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const-string v2, "11"

    const-string v3, "Update"

    .line 3
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/guochao/faceshow/BaseAppContext;->checkChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x4

    .line 4
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/BaseAppContext;->considerImportance(I)I

    move-result v2

    const-string v3, "12"

    const-string v4, "Live"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/guochao/faceshow/BaseAppContext;->checkChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "99"

    const-string v3, "Chat"

    .line 5
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/guochao/faceshow/BaseAppContext;->checkChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/BaseAppContext;->considerImportance(I)I

    move-result v1

    const-string v2, "13"

    const-string v3, "Invite"

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/guochao/faceshow/BaseAppContext;->checkChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private fixWebView()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    :try_start_0
    invoke-static {v0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :cond_0
    :try_start_1
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/guochao/faceshow/BaseAppContext;->UA:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 5
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 6
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/utils/Foreground;->init(Landroid/app/Application;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/i;->w(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public accountForceLogout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lb8/d;->a(Lb8/a;Z)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lz8/c;->J(ZZ)V

    .line 4
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lz8/c;->N(Lz8/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "PARAMS_MSG_KEY"

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const p1, 0x10008000

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getCurrTopActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/Foreground;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4
    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-object v0
.end method

.method public initAsync()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/BaseAppContext;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lz7/a;->a()Lz7/a;

    move-result-object v0

    invoke-virtual {v0}, Lz7/a;->b()V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/BaseAppContext;->createNotificationChannels()V

    .line 4
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lja/a;->c(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->reset()V

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 7
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 8
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 9
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->getArchType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/context/GCApplication;->sCpuArch:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    :goto_0
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->init(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/a;->p(Landroid/content/Context;)V

    .line 12
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->setOptions(Landroid/content/Context;)V

    const-string v0, "last_clear_banner"

    .line 13
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x240c8400

    cmp-long v5, v3, v1

    if-ltz v5, :cond_2

    .line 15
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/banner_image/"

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DataCleanManager;->deleteDir(Ljava/io/File;)Z

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 17
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->O()V

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/BaseAppContext;->initJPush()V

    return-void
.end method

.method public initJPush()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcn/jpush/android/api/JPushInterface;->setLbsEnable(Landroid/content/Context;Z)V

    .line 2
    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->setDebugMode(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/api/JPushInterface;->resumePush(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x16

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3, v0}, Lcn/jpush/android/api/JPushInterface;->setSilenceTime(Landroid/content/Context;IIII)V

    return-void
.end method

.method public initWhenMainProcess()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->init(Landroid/content/Context;)V

    const-string v0, "userToken"

    .line 2
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->x:Ljava/lang/String;

    const-string v0, "userId"

    .line 4
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->w:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAParser$Companion;->shareParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/opensource/svgaplayer/SVGAParser;->init(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/ApplicationContextGetter;->instance()Lcom/guochao/faceshow/utils/ApplicationContextGetter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/utils/ApplicationContextGetter;->setApplicationContext(Landroid/app/Application;)V

    .line 7
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lq7/a;->i(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lb8/d;->init(Landroid/content/Context;)V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/BaseAppContext;->init()V

    .line 10
    invoke-static {p0}, Lcom/guochao/pusher/GCLivePusher;->init(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->init()V

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lcom/guochao/GCLiveConfig;->setTestEnv(Z)V

    return-void
.end method

.method public isMainProcess()Z
    .locals 2

    invoke-static {p0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-static {p0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->f()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lq7/a;->n(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "tokens/user/set/modifyPhoneConf"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->x()V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/GCMvvmApplication;->onCreate()V

    .line 2
    new-instance v0, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/BuglyStrategy;->setUploadProcess(Z)Lcom/tencent/bugly/BuglyStrategy;

    .line 4
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lx6/a;->e:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/BaseAppContext;->fixWebView()V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/BaseAppContext;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/BaseAppContext;->initWhenMainProcess()V

    .line 8
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/BaseAppContext$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/BaseAppContext$a;-><init>(Lcom/guochao/faceshow/BaseAppContext;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    .line 9
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/k;->subscribe()Lth/b;

    .line 10
    invoke-static {p0}, Lob/m;->a(Landroid/app/Application;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 2
    invoke-static {p0}, Lic/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->b()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->getInstance()Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->destroy()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 2
    invoke-static {p0}, Lic/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->r(I)V

    return-void
.end method

.method public refreshToken()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/BaseAppContext;->normalLogined:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "userToken"

    .line 2
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v2, 0x0

    const-string v3, "api/sys/tokenLogin"

    invoke-direct {v1, p0, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)V

    const-string v2, "token"

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "refreshThirdPushToken"

    const-string v2, "1"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/BaseAppContext$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/BaseAppContext$b;-><init>(Lcom/guochao/faceshow/BaseAppContext;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public updateLocale()V
    .locals 5

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->m()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 5
    new-instance v2, Landroid/os/LocaleList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/Locale;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method
