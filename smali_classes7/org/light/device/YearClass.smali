.class public Lorg/light/device/YearClass;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLASS_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Phone_year"

.field private static mCPUMaxFreq:J = 0x0L

.field private static mCoreNum:I = 0x0

.field private static mTotalMem:J = 0x0L

.field private static volatile mYearCategory:Ljava/lang/Integer; = null

.field private static sBaseYear:I = 0x7dc

.field private static sCpuRate:F = 0.5f


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

.method private static categorizeByYear(Landroid/content/Context;)I
    .locals 5

    .line 1
    invoke-static {}, Lorg/light/device/YearClass;->getClockSpeedYear()I

    move-result v0

    .line 2
    invoke-static {p0}, Lorg/light/device/YearClass;->getRamYear(Landroid/content/Context;)I

    move-result p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-ne v1, p0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    sget v1, Lorg/light/device/YearClass;->sBaseYear:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    int-to-float v3, v0

    sget v4, Lorg/light/device/YearClass;->sCpuRate:F

    mul-float v3, v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    cmpg-float v2, v3, v2

    if-gtz v2, :cond_2

    int-to-float v1, p0

    goto :goto_1

    :cond_2
    if-lt p0, v1, :cond_3

    int-to-float v1, p0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    sget v4, Lorg/light/device/YearClass;->sCpuRate:F

    sub-float/2addr v2, v4

    mul-float v1, v1, v2

    add-float/2addr v1, v3

    goto :goto_1

    :cond_3
    int-to-float v1, v0

    :goto_1
    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u624b\u673a\u914d\u7f6e\u6240\u5c5e\u5e74\u4efd\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",cpuYear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",ramYear:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Phone_year"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static conditionallyAdd(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget-object v0, Lorg/light/device/YearClass;->mYearCategory:Ljava/lang/Integer;

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    const-class v0, Lorg/light/device/YearClass;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lorg/light/device/YearClass;->mYearCategory:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 4
    invoke-static {p0}, Lorg/light/device/YearClass;->categorizeByYear(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lorg/light/device/YearClass;->mYearCategory:Ljava/lang/Integer;

    .line 5
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_2
    :goto_0
    sget-object p0, Lorg/light/device/YearClass;->mYearCategory:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getClockSpeedYear()I
    .locals 5

    .line 1
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getMaxCpuFreq()I

    move-result v0

    int-to-long v0, v0

    .line 2
    sput-wide v0, Lorg/light/device/YearClass;->mCPUMaxFreq:J

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpuMaxHZ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lorg/light/device/YearClass;->mCPUMaxFreq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Phone_year"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-wide v0, Lorg/light/device/YearClass;->mCPUMaxFreq:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lorg/light/device/CPUYearList;->getCPUOclock(J)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static getNumCoresYear()I
    .locals 2

    .line 1
    invoke-static {}, Lorg/light/device/LightDeviceUtils;->getNumCores()I

    move-result v0

    .line 2
    sput v0, Lorg/light/device/YearClass;->mCoreNum:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "corenum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/light/device/YearClass;->mCoreNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Phone_year"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget v0, Lorg/light/device/YearClass;->mCoreNum:I

    invoke-static {v0}, Lorg/light/device/CPUYearList;->getCoreNumYear(I)I

    move-result v0

    return v0
.end method

.method public static getPhonHWInfo()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPU core num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/light/device/YearClass;->mCoreNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",CPU max freq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lorg/light/device/YearClass;->mCPUMaxFreq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",total memory:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lorg/light/device/YearClass;->mTotalMem:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRamYear(Landroid/content/Context;)I
    .locals 6

    .line 1
    invoke-static {p0}, Lorg/light/device/LightDeviceUtils;->getTotalRamMemory(Landroid/content/Context;)J

    move-result-wide v0

    .line 2
    sput-wide v0, Lorg/light/device/YearClass;->mTotalMem:J

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ramSize:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lorg/light/device/YearClass;->mTotalMem:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Phone_year"

    invoke-static {v2, p0}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-wide v2, Lorg/light/device/YearClass;->mTotalMem:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lorg/light/device/RamYearList;->getRamYear(J)I

    move-result p0

    :goto_0
    return p0
.end method
