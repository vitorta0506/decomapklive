.class public Lorg/light/utils/FpsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JUMP_FRAME_THRESHOLD:D = 0.3

.field private static final MONITOR_INTERVAL:J = 0x3e8L

.field public static averageFps:F

.field private static fameCount:I

.field private static fps2:I

.field private static lastFameTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFps()I
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/light/utils/FpsUtils;->lastFameTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 2
    sget v0, Lorg/light/utils/FpsUtils;->fameCount:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    mul-long v0, v0, v2

    long-to-int v1, v0

    const/4 v0, 0x0

    .line 3
    sput v0, Lorg/light/utils/FpsUtils;->fameCount:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/light/utils/FpsUtils;->lastFameTime:J

    int-to-double v2, v1

    .line 5
    sget v4, Lorg/light/utils/FpsUtils;->fps2:I

    int-to-double v4, v4

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double v4, v4, v6

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    return v0

    .line 6
    :cond_0
    sput v1, Lorg/light/utils/FpsUtils;->fps2:I

    goto :goto_0

    .line 7
    :cond_1
    sget v0, Lorg/light/utils/FpsUtils;->fameCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/light/utils/FpsUtils;->fameCount:I

    .line 8
    :goto_0
    sget v0, Lorg/light/utils/FpsUtils;->fps2:I

    return v0
.end method
