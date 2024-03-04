.class public Lcom/guochao/faceshow/aaspring/utils/DistanceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EARTH_RADIUS:D = 6378.137


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDistance(DDDD)D
    .locals 2

    .line 1
    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/utils/DistanceUtils;->rad(D)D

    move-result-wide p2

    .line 2
    invoke-static {p6, p7}, Lcom/guochao/faceshow/aaspring/utils/DistanceUtils;->rad(D)D

    move-result-wide p6

    sub-double v0, p2, p6

    sub-double/2addr p0, p4

    .line 3
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/DistanceUtils;->rad(D)D

    move-result-wide p0

    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p4

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    div-double/2addr p0, p4

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double v0, v0, v0

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    .line 7
    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double p2, p2, p4

    mul-double p2, p2, p0

    mul-double p2, p2, p0

    add-double/2addr v0, p2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    const-wide p2, 0x40c8ea23126e978dL    # 12756.274

    mul-double p0, p0, p2

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, p2

    return-wide p0
.end method

.method public static getFormatDistance(Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/utils/DistanceUtils;->getDistance(DDDD)D

    move-result-wide p0

    double-to-int p0, p0

    const/16 p1, 0x3e8

    if-ge p0, p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "m"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    int-to-double v1, p0

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "%2fKm"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static rad(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p0, p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method
