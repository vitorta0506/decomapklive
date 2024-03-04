.class public Lcom/tencent/imsdk/common/SystemUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEVICE_ID:Ljava/lang/String; = "DeviceID"

.field private static final DEVICE_INFO:Ljava/lang/String; = "DeviceInfo"

.field private static final TAG:Ljava/lang/String; = "SystemUtil"

.field private static final TIME_INTERVAL:I = 0x3a98

.field private static buildBrand:Ljava/lang/String; = ""

.field private static buildManufacturer:Ljava/lang/String; = ""

.field private static buildModel:Ljava/lang/String; = ""

.field private static buildVersionRelease:Ljava/lang/String; = ""

.field private static buildVersionSDKInt:I = 0x0

.field private static currentProcessName:Ljava/lang/String; = ""

.field private static lastAppCpu:F = 0.0f

.field private static lastAppCpuTime:J = 0x0L

.field private static lastMemCheckTimeStamps:J = 0x0L

.field private static lastMemUsage:I = 0x0

.field private static lastSysCpu:F = 0.0f

.field private static lastSysCpuTime:J = 0x0L

.field private static mFirstTimeRun:Z = true

.field private static sCpuUsageMeasurer:Lcom/tencent/imsdk/common/CpuUsageMeasurer; = null

.field private static sIsLoadLibrarySuccess:Z = false

.field private static sRunningMemCheck:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/tencent/imsdk/common/SystemUtil;->sRunningMemCheck:Z

    return p0
.end method

.method static synthetic access$102(J)J
    .locals 0

    sput-wide p0, Lcom/tencent/imsdk/common/SystemUtil;->lastMemCheckTimeStamps:J

    return-wide p0
.end method

.method static synthetic access$202(I)I
    .locals 0

    sput p0, Lcom/tencent/imsdk/common/SystemUtil;->lastMemUsage:I

    return p0
.end method

.method public static getAppCpuUsage()F
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lcom/tencent/imsdk/common/SystemUtil;->lastAppCpuTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 3
    sget v0, Lcom/tencent/imsdk/common/SystemUtil;->lastAppCpu:F

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getProcessCPURate()[I

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    aget v2, v2, v3

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 6
    sput v2, Lcom/tencent/imsdk/common/SystemUtil;->lastAppCpu:F

    .line 7
    sput-wide v0, Lcom/tencent/imsdk/common/SystemUtil;->lastAppCpuTime:J

    return v2
.end method

.method public static getAppMemory()F
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-boolean v2, Lcom/tencent/imsdk/common/SystemUtil;->sRunningMemCheck:Z

    if-nez v2, :cond_1

    sget-wide v2, Lcom/tencent/imsdk/common/SystemUtil;->lastMemCheckTimeStamps:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 3
    sput-boolean v2, Lcom/tencent/imsdk/common/SystemUtil;->sRunningMemCheck:Z

    .line 4
    new-instance v2, Lcom/tencent/imsdk/common/SystemUtil$1;

    invoke-direct {v2, v0, v1}, Lcom/tencent/imsdk/common/SystemUtil$1;-><init>(J)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 5
    sget v0, Lcom/tencent/imsdk/common/SystemUtil;->lastMemUsage:I

    :goto_0
    int-to-float v0, v0

    return v0

    .line 6
    :cond_1
    :goto_1
    sget v0, Lcom/tencent/imsdk/common/SystemUtil;->lastMemUsage:I

    goto :goto_0
.end method

.method private static getBuildBrand()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->buildBrand:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/tencent/imsdk/common/SystemUtil;->buildBrand:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->buildBrand:Ljava/lang/String;

    return-object v0
.end method

.method private static getBuildManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->buildManufacturer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/tencent/imsdk/common/SystemUtil;->buildManufacturer:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->buildManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentProcessName()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->currentProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->currentProcessName:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 4
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/imsdk/common/SystemUtil;->currentProcessName:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    .line 5
    const-class v1, Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentProcessName"

    new-array v3, v2, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 10
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/tencent/imsdk/common/SystemUtil;->currentProcessName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :cond_2
    :goto_0
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->currentProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/IMContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "DeviceInfo"

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "DeviceID"

    .line 3
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\w{8}(-\\w{4}){3}-\\w{12}"

    .line 6
    invoke-static {v4, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 10
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-object v1
.end method

.method public static getDeviceType()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->buildModel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/tencent/imsdk/common/SystemUtil;->buildModel:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->buildModel:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstanceType()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->isBrandXiaoMi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->isBrandNewHonor()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7d6

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->isBrandHuawei()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x7d1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->isBrandMeizu()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x7d3

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->isBrandOppo()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x7d4

    goto :goto_0

    .line 6
    :cond_4
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->isBrandVivo()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x7d5

    goto :goto_0

    :cond_5
    const/16 v0, 0x7d2

    :goto_0
    return v0
.end method

.method static getProcessCPURate()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->sCpuUsageMeasurer:Lcom/tencent/imsdk/common/CpuUsageMeasurer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/imsdk/common/CpuUsageMeasurer;

    invoke-direct {v0}, Lcom/tencent/imsdk/common/CpuUsageMeasurer;-><init>()V

    sput-object v0, Lcom/tencent/imsdk/common/SystemUtil;->sCpuUsageMeasurer:Lcom/tencent/imsdk/common/CpuUsageMeasurer;

    .line 3
    :cond_0
    sget-boolean v0, Lcom/tencent/imsdk/common/SystemUtil;->mFirstTimeRun:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/tencent/imsdk/common/SystemUtil;->mFirstTimeRun:Z

    .line 5
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->sCpuUsageMeasurer:Lcom/tencent/imsdk/common/CpuUsageMeasurer;

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/CpuUsageMeasurer;->getCpuUsage()[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    return-object v0

    .line 7
    :cond_1
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->sCpuUsageMeasurer:Lcom/tencent/imsdk/common/CpuUsageMeasurer;

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/CpuUsageMeasurer;->getCpuUsage()[I

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getSDKInitPath()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/IMContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    const-string v0, ":"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "."

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    sget-object v2, Lcom/tencent/imsdk/common/SystemUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSDKInitPath exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_3
    :goto_0
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK Init Path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getSDKLogPath()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/IMContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/log/tencent/imsdk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tencent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "imsdk"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 9
    sget-object v1, Lcom/tencent/imsdk/common/SystemUtil;->TAG:Ljava/lang/String;

    const-string v3, "create log folder failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    const-string v0, ":"

    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    const-string v0, "."

    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-ltz v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 17
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    sget-object v2, Lcom/tencent/imsdk/common/SystemUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSDKLogPath exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_5
    :goto_1
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK LOG Path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getSDKVersion()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/imsdk/common/SystemUtil;->buildVersionSDKInt:I

    if-nez v0, :cond_0

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/tencent/imsdk/common/SystemUtil;->buildVersionSDKInt:I

    .line 3
    :cond_0
    sget v0, Lcom/tencent/imsdk/common/SystemUtil;->buildVersionSDKInt:I

    return v0
.end method

.method public static getSysCpuUsage()F
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-wide v2, Lcom/tencent/imsdk/common/SystemUtil;->lastSysCpuTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 3
    sget v0, Lcom/tencent/imsdk/common/SystemUtil;->lastSysCpu:F

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getProcessCPURate()[I

    move-result-object v2

    const/4 v3, 0x1

    .line 5
    aget v2, v2, v3

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 6
    sput v2, Lcom/tencent/imsdk/common/SystemUtil;->lastSysCpu:F

    .line 7
    sput-wide v0, Lcom/tencent/imsdk/common/SystemUtil;->lastSysCpuTime:J

    return v2
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->buildVersionRelease:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/tencent/imsdk/common/SystemUtil;->buildVersionRelease:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/imsdk/common/SystemUtil;->buildVersionRelease:Ljava/lang/String;

    return-object v0
.end method

.method static isBrandHuawei()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "honor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isBrandMeizu()Z
    .locals 2

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meizu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isBrandNewHonor()Z
    .locals 2

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "honor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isBrandOppo()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "realme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oneplus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isBrandVivo()Z
    .locals 2

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildBrand()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vivo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isBrandXiaoMi()Z
    .locals 2

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildBrand()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getBuildManufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isLibraryLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/imsdk/common/SystemUtil;->sIsLoadLibrarySuccess:Z

    return v0
.end method

.method public static loadIMLibrary()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/tencent/imsdk/common/SystemUtil;->loadIMLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static loadIMLibrary(Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v0, "system load so library failed, "

    .line 2
    sget-boolean v1, Lcom/tencent/imsdk/common/SystemUtil;->sIsLoadLibrarySuccess:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "libImSDK.so"

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 6
    sput-boolean v2, Lcom/tencent/imsdk/common/SystemUtil;->sIsLoadLibrarySuccess:Z

    .line 7
    sget-object v2, Lcom/tencent/imsdk/common/SystemUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "system load so library success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "ImSDK"

    .line 8
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    sput-boolean v2, Lcom/tencent/imsdk/common/SystemUtil;->sIsLoadLibrarySuccess:Z

    .line 10
    sget-object p0, Lcom/tencent/imsdk/common/SystemUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "system load so library success, libImSDK.so"

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    sput-boolean v1, Lcom/tencent/imsdk/common/SystemUtil;->sIsLoadLibrarySuccess:Z

    .line 12
    sget-object v1, Lcom/tencent/imsdk/common/SystemUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 13
    sput-boolean v1, Lcom/tencent/imsdk/common/SystemUtil;->sIsLoadLibrarySuccess:Z

    .line 14
    sget-object v1, Lcom/tencent/imsdk/common/SystemUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :goto_0
    sget-boolean p0, Lcom/tencent/imsdk/common/SystemUtil;->sIsLoadLibrarySuccess:Z

    return p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 4
    array-length v0, p0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v1
.end method

.method public static setBuildBrand(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/imsdk/common/SystemUtil;->buildBrand:Ljava/lang/String;

    return-void
.end method

.method public static setBuildManufacturer(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/imsdk/common/SystemUtil;->buildManufacturer:Ljava/lang/String;

    return-void
.end method

.method public static setBuildModel(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/imsdk/common/SystemUtil;->buildModel:Ljava/lang/String;

    return-void
.end method

.method public static setBuildVersionRelease(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/imsdk/common/SystemUtil;->buildVersionRelease:Ljava/lang/String;

    return-void
.end method

.method public static setBuildVersionSDKInt(I)V
    .locals 0

    sput p0, Lcom/tencent/imsdk/common/SystemUtil;->buildVersionSDKInt:I

    return-void
.end method
