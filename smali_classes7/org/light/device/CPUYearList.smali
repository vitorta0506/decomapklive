.class Lorg/light/device/CPUYearList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KHZ:J = 0x3e8L

.field private static final SCORES_NUM:[I

.field private static final SCPU_Freq:[J

.field private static final START_CORE_YEAR:I = 0x7dc

.field private static final START_YEAR:I = 0x7dd


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [J

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/light/device/CPUYearList;->SCPU_Freq:[J

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lorg/light/device/CPUYearList;->SCORES_NUM:[I

    return-void

    nop

    :array_0
    .array-data 8
        0x173180
        0x18b820
        0x1b2920
        0x1e8480
        0x2191c0
        0x27ac40
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
        0x7
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCPUOclock(J)I
    .locals 5

    .line 1
    sget-object v0, Lorg/light/device/CPUYearList;->SCPU_Freq:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/16 v1, 0x7dd

    if-ltz v0, :cond_1

    .line 2
    sget-object v2, Lorg/light/device/CPUYearList;->SCPU_Freq:[J

    aget-wide v3, v2, v0

    cmp-long v2, v3, p0

    if-gez v2, :cond_0

    add-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getCoreNumYear(I)I
    .locals 3

    .line 1
    sget-object v0, Lorg/light/device/CPUYearList;->SCORES_NUM:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/16 v1, 0x7dc

    if-ltz v0, :cond_1

    .line 2
    sget-object v2, Lorg/light/device/CPUYearList;->SCORES_NUM:[I

    aget v2, v2, v0

    if-ge v2, p0, :cond_0

    add-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method
