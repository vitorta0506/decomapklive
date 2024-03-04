.class public Lcom/tencent/liteav/base/util/CpuUsageMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[I
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/util/CpuUsageMeasurer;->nativeGetCpuUsage()[I

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 2
    aget v3, v0, v2

    aput v3, v1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    aput v0, v1, v2

    return-object v1
.end method

.method public static native nativeGetCpuUsage()[I
.end method
