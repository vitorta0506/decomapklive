.class public Lorg/light/device/LightDeviceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/device/LightDeviceUtils$MEMORY_CLASS;
    }
.end annotation


# static fields
.field private static final BUILD_MODEL:Ljava/lang/String; = "Build.MODEL"

.field private static final MIN_OPENGL_ES_VERSION:I = 0x20000

.field public static final MIN_STORAGE_SIZE:I = 0x3200000

.field public static final MOBILE_NETWORK_2G:I = 0x1

.field public static final MOBILE_NETWORK_3G:I = 0x2

.field public static final MOBILE_NETWORK_4G:I = 0x3

.field public static final MOBILE_NETWORK_DISCONNECT:I = 0x5

.field public static final MOBILE_NETWORK_UNKNOWN:I = 0x4

.field public static final NET_2G:I = 0x2

.field public static final NET_3G:I = 0x3

.field public static final NET_4G:I = 0x4

.field public static final NET_NONE:I = 0x0

.field public static final NET_OTHER:I = 0x5

.field public static final NET_WIFI:I = 0x1

.field public static final RECORD_CPU_INTERVAL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "LightDeviceUtils"

.field private static allCpuFreqKhz:Ljava/lang/String;

.field private static allCpuParts:Ljava/lang/String;

.field private static buildModel:Ljava/lang/String;

.field private static cpuRate:F

.field public static handler:Landroid/os/Handler;

.field public static handlerThread:Landroid/os/HandlerThread;

.field private static isRooted:Ljava/lang/Boolean;

.field private static lastCpuIdleTime:J

.field private static lastCpuPart:Ljava/lang/String;

.field private static lastCpuTotalTime:J

.field private static mIsAllUnusable:Z

.field private static mIsOpenGlEsValid:Z

.field public static openGLESVersion:I

.field private static recordCpuCount:I

.field private static sCpuCount:I

.field private static sMaxCpuFreq:I

.field private static sTotalMemory:I

.field private static socName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Build.MODEL"

    .line 1
    invoke-static {v0}, Lorg/light/utils/LightDataUtils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/light/device/LightDeviceUtils;->buildModel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lorg/light/device/LightDeviceUtils;->handlerThread:Landroid/os/HandlerThread;

    .line 3
    sput-object v0, Lorg/light/device/LightDeviceUtils;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 4
    sput v0, Lorg/light/device/LightDeviceUtils;->recordCpuCount:I

    const/4 v1, 0x0

    .line 5
    sput v1, Lorg/light/device/LightDeviceUtils;->cpuRate:F

    const-wide/16 v1, 0x0

    .line 6
    sput-wide v1, Lorg/light/device/LightDeviceUtils;->lastCpuTotalTime:J

    .line 7
    sput-wide v1, Lorg/light/device/LightDeviceUtils;->lastCpuIdleTime:J

    .line 8
    sput-boolean v0, Lorg/light/device/LightDeviceUtils;->mIsAllUnusable:Z

    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lorg/light/device/LightDeviceUtils;->mIsOpenGlEsValid:Z

    const/high16 v0, 0x10000

    .line 10
    sput v0, Lorg/light/device/LightDeviceUtils;->openGLESVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/light/device/LightDeviceUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    sget-wide v0, Lorg/light/device/LightDeviceUtils;->lastCpuIdleTime:J

    return-wide v0
.end method

.method static synthetic access$102(J)J
    .locals 0

    sput-wide p0, Lorg/light/device/LightDeviceUtils;->lastCpuIdleTime:J

    return-wide p0
.end method

.method static synthetic access$200()J
    .locals 2

    sget-wide v0, Lorg/light/device/LightDeviceUtils;->lastCpuTotalTime:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .locals 0

    sput-wide p0, Lorg/light/device/LightDeviceUtils;->lastCpuTotalTime:J

    return-wide p0
.end method

.method static synthetic access$302(F)F
    .locals 0

    sput p0, Lorg/light/device/LightDeviceUtils;->cpuRate:F

    return p0
.end method

.method static synthetic access$402(I)I
    .locals 0

    sput p0, Lorg/light/device/LightDeviceUtils;->recordCpuCount:I

    return p0
.end method

.method public static canWriteFile(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 2
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    :cond_1
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_2
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "test_temp.txt"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 10
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private static extractValue([BI)I
    .locals 4

    .line 1
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 2
    aget-byte v0, p0, p1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    aget-byte v0, p0, p1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 3
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    if-lt v3, v1, :cond_0

    aget-byte v3, p0, v0

    if-gt v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int/2addr v0, p1

    invoke-direct {v1, p0, v2, p1, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static getAllCpuFreqKhz()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/light/device/LightDeviceUtils;->allCpuFreqKhz:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->initCpuFreq()V

    .line 3
    :cond_0
    sget-object v0, Lorg/light/device/LightDeviceUtils;->allCpuFreqKhz:Ljava/lang/String;

    return-object v0
.end method

.method public static getAllCpuParts()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/light/device/LightDeviceUtils;->allCpuParts:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->initSocModelInfo()V

    .line 3
    :cond_0
    sget-object v0, Lorg/light/device/LightDeviceUtils;->allCpuParts:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationMemory()I
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 2
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v5

    .line 8
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v0

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, v4

    add-int/2addr v1, v5

    add-int/2addr v1, v0

    return v1
.end method

.method public static getAvailableSize(Landroid/os/StatFs;)J
    .locals 4

    .line 1
    invoke-static {}, Lorg/light/device/ApiHelper;->hasJellyBeanMR2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v2, p0

    mul-long v0, v0, v2

    :goto_0
    return-wide v0
.end method

.method public static getBenchmarkStrategy()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/light/device/OfflineConfig;->getBenchmarkStrategy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuildModel()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/light/device/LightDeviceUtils;->buildModel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lorg/light/device/LightDeviceUtils;->buildModel:Ljava/lang/String;

    const-string v1, "Build.MODEL"

    .line 3
    invoke-static {v1, v0}, Lorg/light/utils/LightDataUtils;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v0, Lorg/light/device/LightDeviceUtils;->buildModel:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuildVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "."

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCpuNameOnce()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getSocName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuRate()F
    .locals 1

    sget v0, Lorg/light/device/LightDeviceUtils;->cpuRate:F

    return v0
.end method

.method public static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

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

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    return-object v1
.end method

.method public static getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 4
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x3200000

    invoke-static {p0, v0, v1}, Lorg/light/device/LightDeviceUtils;->isExternalStorageSpaceEnough(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public static getGpuInfo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/light/gles/GLCapabilities;->getGPUInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeapAllocatedPercent(Landroid/content/Context;)F
    .locals 4

    .line 1
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getHeapAllocatedSizeInKb()J

    move-result-wide v0

    .line 2
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getHeapMaxSizeInKb(Landroid/content/Context;)J

    move-result-wide v2

    long-to-float p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p0, p0, v0

    long-to-float v0, v2

    div-float/2addr p0, v0

    return p0
.end method

.method public static getHeapAllocatedSizeInKb()J
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lorg/light/device/LightDeviceUtils;->getRuntimeTotalMemory(I)J

    move-result-wide v1

    invoke-static {v0}, Lorg/light/device/LightDeviceUtils;->getRuntimeFreeMemory(I)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 2
    sget-object v0, Lorg/light/device/LightDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHeapAllocatedSizeInKb(), heapAllocated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v4, v1

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "(Mb), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "(Kb)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public static getHeapMaxSizeInKb(Landroid/content/Context;)J
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lorg/light/device/LightDeviceUtils;->getRuntimeMaxMemory(I)J

    move-result-wide v0

    :try_start_0
    const-string v2, "activity"

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3
    sget-object v2, Lorg/light/device/LightDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHeapMaxSizeInKb(), heap size(Mb) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit16 p0, p0, 0x400

    int-to-long v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-wide v0
.end method

.method public static getHeapMaxSizeInMb(Landroid/content/Context;)J
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lorg/light/device/LightDeviceUtils;->getRuntimeMaxMemory(I)J

    move-result-wide v0

    :try_start_0
    const-string v2, "activity"

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3
    sget-object v2, Lorg/light/device/LightDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHeapMaxSizeInMb(), heap size(Mb) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-wide v0
.end method

.method public static getHeapRemainSizeInKb(Landroid/content/Context;)J
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getHeapMaxSizeInKb(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getHeapAllocatedSizeInKb()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    sget-object p0, Lorg/light/device/LightDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeapRemainSizeInKb(), remainSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v3, v0

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "(Mb), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "(Kb)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static getLargeHeapMaxSizeInKb(Landroid/content/Context;)J
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lorg/light/device/LightDeviceUtils;->getRuntimeMaxMemory(I)J

    move-result-wide v0

    :try_start_0
    const-string v2, "activity"

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3
    sget-object v2, Lorg/light/device/LightDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLargeHeapMaxSizeInKb(), heap size(Mb) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit16 p0, p0, 0x400

    int-to-long v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-wide v0
.end method

.method public static getLargeHeapRemainSizeInKb(Landroid/content/Context;)J
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getLargeHeapMaxSizeInKb(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getHeapAllocatedSizeInKb()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    sget-object p0, Lorg/light/device/LightDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLargeHeapRemainSizeInKb(), remainSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v3, v0

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "(Mb), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "(Kb)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static getLastCpuPart()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/light/device/LightDeviceUtils;->lastCpuPart:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->initSocModelInfo()V

    .line 3
    :cond_0
    sget-object v0, Lorg/light/device/LightDeviceUtils;->lastCpuPart:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getMachineInfo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxCpuFreq()I
    .locals 1

    .line 1
    sget v0, Lorg/light/device/LightDeviceUtils;->sMaxCpuFreq:I

    if-gtz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->initCpuFreq()V

    .line 3
    :cond_0
    sget v0, Lorg/light/device/LightDeviceUtils;->sMaxCpuFreq:I

    return v0
.end method

.method public static getMobileNetworkType(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x4

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getNavigationBarHeight(Landroid/app/Activity;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->isNavigationBarShow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x5

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getMobileNetworkType(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method public static getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getNetworkType(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "unknow"

    return-object p0

    :cond_0
    const-string p0, "4G"

    return-object p0

    :cond_1
    const-string p0, "3G"

    return-object p0

    :cond_2
    const-string p0, "2G"

    return-object p0

    :cond_3
    const-string p0, "wifi"

    return-object p0

    :cond_4
    const-string p0, "none"

    return-object p0
.end method

.method public static getNumCores()I
    .locals 3

    .line 1
    sget v0, Lorg/light/device/LightDeviceUtils;->sCpuCount:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Lorg/light/device/LightDeviceUtils$1CpuFilter;

    invoke-direct {v2}, Lorg/light/device/LightDeviceUtils$1CpuFilter;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    array-length v1, v1

    sput v1, Lorg/light/device/LightDeviceUtils;->sCpuCount:I

    goto :goto_0

    .line 5
    :cond_1
    sput v0, Lorg/light/device/LightDeviceUtils;->sCpuCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    .line 7
    sput v0, Lorg/light/device/LightDeviceUtils;->sCpuCount:I

    .line 8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sCpuCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/light/device/LightDeviceUtils;->sCpuCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtils"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget v0, Lorg/light/device/LightDeviceUtils;->sCpuCount:I

    return v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getOpenGlEsVersion(Landroid/content/Context;)I
    .locals 1

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    sput p0, Lorg/light/device/LightDeviceUtils;->openGLESVersion:I

    .line 4
    :cond_0
    sget p0, Lorg/light/device/LightDeviceUtils;->openGLESVersion:I

    return p0
.end method

.method public static getPhonePerfLevel(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lorg/light/device/OfflineConfig;->getPhonePerfLevel(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static getRuntimeFreeMemory(I)J
    .locals 7

    const-wide/16 v0, 0x400

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    div-long/2addr v2, v0

    div-long/2addr v2, v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    div-long/2addr v2, v0

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    .line 5
    :goto_0
    sget-object p0, Lorg/light/device/LightDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getRuntimeFreeMemory] freeMemory = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    div-long/2addr v5, v0

    div-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "(Mb), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    div-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "(Kb)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2
.end method

.method private static getRuntimeMaxMemory(I)J
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    if-eqz p0, :cond_2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_1

    const/4 v4, 0x2

    if-eq p0, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    div-long/2addr v0, v2

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 5
    :goto_0
    sget-object p0, Lorg/light/device/LightDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getRuntimeMaxMemory] maxMemory = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v5

    div-long/2addr v5, v2

    div-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "(Mb), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v5

    div-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "(Kb)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public static getRuntimeRemainSize(I)J
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getHeapAllocatedSizeInKb()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x100000

    .line 2
    div-long/2addr v0, v2

    goto :goto_0

    .line 3
    :cond_1
    div-long/2addr v0, v4

    .line 4
    :goto_0
    sget-object v2, Lorg/light/device/LightDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRuntimeRemainSize] remainMemory = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private static getRuntimeTotalMemory(I)J
    .locals 7

    const-wide/16 v0, 0x400

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    div-long/2addr v2, v0

    div-long/2addr v2, v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    div-long/2addr v2, v0

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 5
    :goto_0
    sget-object p0, Lorg/light/device/LightDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getRuntimeTotalMemory] totalMemory = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    div-long/2addr v5, v0

    div-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "(Mb), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    div-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "(Kb)"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v2
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenHeightWithNavigationBar(Landroid/app/Activity;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static getScreenRatio(Landroid/content/Context;)F
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    invoke-static {p0}, Lorg/light/device/NotchInScreenUtils;->hasNotchInScreenHw(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p0}, Lorg/light/device/NotchInScreenUtils;->getNotchHeightHw(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v2, p0

    :cond_0
    int-to-float p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p0, p0, v0

    int-to-float v0, v2

    div-float/2addr p0, v0

    return p0
.end method

.method public static getScreenSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getSocName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/light/device/LightDeviceUtils;->socName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->initSocModelInfo()V

    .line 3
    :cond_0
    sget-object v0, Lorg/light/device/LightDeviceUtils;->socName:Ljava/lang/String;

    return-object v0
.end method

.method public static getSystemScreenBrightness(Landroid/content/ContentResolver;)I
    .locals 1

    :try_start_0
    const-string v0, "screen_brightness"

    .line 1
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSystemScreenMode(Landroid/content/ContentResolver;)I
    .locals 1

    :try_start_0
    const-string v0, "screen_brightness_mode"

    .line 1
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getTotalRamMemory(Landroid/content/Context;)J
    .locals 4

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v1, "activity"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 4
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    .line 5
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    const-string v2, "/proc/meminfo"

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "MemTotal"

    .line 6
    invoke-static {v2, p0}, Lorg/light/device/LightDeviceUtils;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    .line 7
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 8
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-wide v0
.end method

.method public static getTotalSize(Landroid/os/StatFs;)J
    .locals 4

    .line 1
    invoke-static {}, Lorg/light/device/ApiHelper;->hasJellyBeanMR2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v2, p0

    mul-long v0, v0, v2

    :goto_0
    return-wide v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x4000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWindowScreenBrightness(Landroid/view/Window;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 2
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    return p0
.end method

.method public static hideNavigationBar(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1706

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    new-instance v0, Lorg/light/device/LightDeviceUtils$2;

    invoke-direct {v0, p0}, Lorg/light/device/LightDeviceUtils$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private static initCpuFreq()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    .line 2
    :try_start_0
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getNumCores()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x80

    new-array v6, v4, [B

    .line 6
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-virtual {v7, v6}, Ljava/io/FileInputStream;->read([B)I

    const/4 v5, 0x0

    .line 8
    :goto_1
    aget-byte v8, v6, v5

    const/16 v9, 0x30

    if-lt v8, v9, :cond_0

    aget-byte v8, v6, v5

    const/16 v9, 0x39

    if-gt v8, v9, :cond_0

    if-ge v5, v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6, v1, v5}, Ljava/lang/String;-><init>([BII)V

    .line 10
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget v6, Lorg/light/device/LightDeviceUtils;->sMaxCpuFreq:I

    if-le v5, v6, :cond_1

    .line 13
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lorg/light/device/LightDeviceUtils;->sMaxCpuFreq:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 15
    throw v1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_3
    sget v1, Lorg/light/device/LightDeviceUtils;->sMaxCpuFreq:I

    if-ne v1, v3, :cond_5

    .line 17
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v2, "cpu MHz"

    .line 18
    invoke-static {v2, v1}, Lorg/light/device/LightDeviceUtils;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    .line 19
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget v4, Lorg/light/device/LightDeviceUtils;->sMaxCpuFreq:I

    if-le v2, v4, :cond_4

    .line 21
    sput v2, Lorg/light/device/LightDeviceUtils;->sMaxCpuFreq:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 23
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 24
    :catch_1
    sput v3, Lorg/light/device/LightDeviceUtils;->sMaxCpuFreq:I

    :cond_5
    :goto_3
    const-string v1, ";"

    .line 25
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/light/device/LightDeviceUtils;->allCpuFreqKhz:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sMaxCpuFreq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/light/device/LightDeviceUtils;->sMaxCpuFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtils"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initSocModelInfo()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, ":\\s+"

    const/4 v4, 0x2

    .line 5
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 6
    array-length v4, v2

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    const/4 v4, 0x0

    .line 7
    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "hardware"

    .line 8
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    sget-object v6, Lorg/light/device/LightDeviceUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/cpuinfo => hardware line = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lorg/light/utils/LightLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    aget-object v1, v2, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/light/device/LightDeviceUtils;->socName:Ljava/lang/String;

    :cond_0
    const-string v1, "cpu part"

    .line 11
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    aget-object v1, v2, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 14
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 15
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    .line 16
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 17
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_3

    .line 18
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    const-string v1, ";"

    .line 20
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/light/device/LightDeviceUtils;->allCpuParts:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, ""

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_4
    sput-object v0, Lorg/light/device/LightDeviceUtils;->lastCpuPart:Ljava/lang/String;

    .line 22
    sget-object v0, Lorg/light/device/LightDeviceUtils;->socName:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "ro.board.platform"

    .line 23
    invoke-static {v0}, Lorg/light/device/NotchInScreenUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/light/device/LightDeviceUtils;->socName:Ljava/lang/String;

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_5
    if-eqz v1, :cond_6

    .line 24
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    .line 25
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 26
    :cond_6
    :goto_6
    throw v0
.end method

.method public static isExternalStorageAvailable(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "mounted"

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 2
    :cond_1
    :goto_0
    new-instance v1, Landroid/os/StatFs;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static isExternalStorageSpaceEnough(Landroid/content/Context;J)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Lorg/light/device/LightDeviceUtils;->getAvailableSize(Landroid/os/StatFs;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v1, p1

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMobileNetwork(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isNavigationBarShow(Landroid/app/Activity;)Z
    .locals 4

    .line 1
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getBuildModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Redmi 6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 5
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 7
    invoke-virtual {p0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 8
    iget p0, v3, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isRooted()Z
    .locals 6

    .line 1
    sget-object v0, Lorg/light/device/LightDeviceUtils;->isRooted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lorg/light/device/LightDeviceUtils;->isRooted:Ljava/lang/Boolean;

    const/4 v0, 0x5

    const-string v1, "/system/bin/su"

    const-string v2, "/system/xbin/su"

    const-string v3, "/system/sbin/su"

    const-string v4, "/sbin/su"

    const-string v5, "/vendor/bin/su"

    .line 4
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    :try_start_0
    aget-object v3, v1, v2

    .line 6
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/light/device/LightDeviceUtils;->isRooted:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_2
    :goto_1
    sget-object v0, Lorg/light/device/LightDeviceUtils;->isRooted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isValid(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getOpenGlEsVersion(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x20000

    if-lt p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lorg/light/device/LightDeviceUtils;->mIsOpenGlEsValid:Z

    .line 2
    sput-boolean v1, Lorg/light/device/LightDeviceUtils;->mIsAllUnusable:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static isWifiNetwork(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "(\\d{1,3})[.](\\d{1,3})[.](\\d{1,3})[.](\\d{1,3})"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 6

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_5

    .line 2
    aget-byte v2, v0, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_4

    .line 3
    :cond_0
    aget-byte v2, v0, v1

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_4

    sub-int v3, v2, v1

    .line 4
    aget-byte v4, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    .line 6
    invoke-static {v0, v2}, Lorg/light/device/LightDeviceUtils;->extractValue([BI)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static recordCpuInfo()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lorg/light/device/LightDeviceUtils;->handlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAL_CPU_RATE"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/light/device/LightDeviceUtils;->handlerThread:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lorg/light/device/LightDeviceUtils;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/light/device/LightDeviceUtils;->handler:Landroid/os/Handler;

    .line 6
    :cond_1
    sget v0, Lorg/light/device/LightDeviceUtils;->recordCpuCount:I

    rem-int/lit8 v1, v0, 0x64

    if-nez v1, :cond_2

    .line 7
    sget-object v0, Lorg/light/device/LightDeviceUtils;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/light/device/LightDeviceUtils$1;

    invoke-direct {v1}, Lorg/light/device/LightDeviceUtils$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 8
    sput v0, Lorg/light/device/LightDeviceUtils;->recordCpuCount:I

    :goto_0
    return-void
.end method

.method public static resetWindowScreenBrightness(Landroid/view/Window;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Lorg/light/device/LightDeviceUtils;->setWindowScreenBrightness(Landroid/view/Window;F)V

    return-void
.end method

.method public static setNavigationBarColor(Landroid/app/Activity;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0xc000000

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    const/16 v0, 0x700

    .line 3
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getBuildModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pixel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x710

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method public static setSystemScreenBrightness(Landroid/content/ContentResolver;I)V
    .locals 1

    :try_start_0
    const-string v0, "screen_brightness"

    .line 1
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setSystemScreenMode(Landroid/content/ContentResolver;I)V
    .locals 1

    const-string v0, "screen_brightness_mode"

    .line 1
    :try_start_0
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setWindowScreenBrightness(Landroid/view/Window;F)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static setWindowScreenBrightnessMax(Landroid/app/Activity;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->veryLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {p0, v0}, Lorg/light/device/LightDeviceUtils;->setWindowScreenBrightness(Landroid/view/Window;F)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Lorg/light/device/LightDeviceUtils;->setWindowScreenBrightness(Landroid/view/Window;F)V

    :goto_0
    return-void
.end method

.method public static veryLargeScreen(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p0

    mul-int v0, v0, p0

    const p0, 0x1fa400

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
