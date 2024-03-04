.class public Lorg/light/utils/DeviceInfoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static appStatFile:Ljava/io/RandomAccessFile;

.field private static lastAppCpuTime:Ljava/lang/Long;

.field private static lastCpuTime:Ljava/lang/Long;

.field private static procStatFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lorg/light/utils/DeviceInfoUtil;->nativeInit()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCpuUsage()F
    .locals 7

    const-string v0, " "

    const-string v1, "r"

    .line 1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :try_start_0
    sget-object v3, Lorg/light/utils/DeviceInfoUtil;->procStatFile:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_2

    sget-object v4, Lorg/light/utils/DeviceInfoUtil;->appStatFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    .line 3
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    sget-object v1, Lorg/light/utils/DeviceInfoUtil;->appStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/proc/stat"

    invoke-direct {v3, v4, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/light/utils/DeviceInfoUtil;->procStatFile:Ljava/io/RandomAccessFile;

    .line 6
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/light/utils/DeviceInfoUtil;->appStatFile:Ljava/io/RandomAccessFile;

    .line 7
    :goto_1
    sget-object v1, Lorg/light/utils/DeviceInfoUtil;->procStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-object v3, Lorg/light/utils/DeviceInfoUtil;->appStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    .line 11
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/4 v5, 0x4

    aget-object v5, v1, v5

    .line 12
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/4 v5, 0x5

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/4 v5, 0x6

    aget-object v5, v1, v5

    .line 13
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/4 v5, 0x7

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/16 v5, 0x8

    aget-object v1, v1, v5

    .line 14
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/16 v1, 0xd

    .line 15
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v5, v0

    .line 16
    sget-object v0, Lorg/light/utils/DeviceInfoUtil;->lastCpuTime:Ljava/lang/Long;

    if-nez v0, :cond_3

    sget-object v0, Lorg/light/utils/DeviceInfoUtil;->lastAppCpuTime:Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/light/utils/DeviceInfoUtil;->lastCpuTime:Ljava/lang/Long;

    .line 18
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/light/utils/DeviceInfoUtil;->lastAppCpuTime:Ljava/lang/Long;

    return v2

    .line 19
    :cond_3
    sget-object v0, Lorg/light/utils/DeviceInfoUtil;->lastAppCpuTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v5, v0

    long-to-float v0, v0

    sget-object v1, Lorg/light/utils/DeviceInfoUtil;->lastCpuTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, v3, v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v2, v0, v1

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/light/utils/DeviceInfoUtil;->lastCpuTime:Ljava/lang/Long;

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/light/utils/DeviceInfoUtil;->lastAppCpuTime:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v2
.end method

.method public static getMemoryUsage()F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    return v0
.end method

.method private static native nativeInit()V
.end method
