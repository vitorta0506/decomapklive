.class final Lkg/n$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# direct methods
.method static synthetic a(B)J
    .locals 2

    invoke-static {p0}, Lkg/n$d;->c(B)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(JJZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lkg/n$d;->d(JJZ)I

    move-result p0

    return p0
.end method

.method private static c(B)J
    .locals 4

    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const-wide v2, 0x101010101010101L

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private static d(JJZ)I
    .locals 2

    xor-long/2addr p0, p2

    const-wide p2, 0x7f7f7f7f7f7f7f7fL    # 1.3824172084878715E306

    and-long v0, p0, p2

    add-long/2addr v0, p2

    or-long/2addr p0, v0

    or-long/2addr p0, p2

    not-long p0, p0

    if-eqz p4, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    :goto_0
    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method
