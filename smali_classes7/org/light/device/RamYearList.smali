.class Lorg/light/device/RamYearList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GB:J = 0x3b9aca00L

.field private static final MB:J = 0xf4240L

.field private static final SRamSize:[J

.field private static final START_YEAR:I = 0x7dc


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/light/device/RamYearList;->SRamSize:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x1dcd6500
        0x59682f00
        0x9502f900L
        0xd09dc300L
        0xd09dc300L
        0x147d35700L
        0x1bf08eb00L
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRamYear(J)I
    .locals 5

    .line 1
    sget-object v0, Lorg/light/device/RamYearList;->SRamSize:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/16 v1, 0x7dc

    if-ltz v0, :cond_1

    .line 2
    sget-object v2, Lorg/light/device/RamYearList;->SRamSize:[J

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
