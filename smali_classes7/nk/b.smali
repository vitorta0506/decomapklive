.class public Lnk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)J
    .locals 6

    const v0, 0xff00

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lnk/a;->a(III)I

    move-result p0

    const v0, 0xf000f0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lnk/a;->a(III)I

    move-result p0

    const v0, 0xc0c0c0c

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lnk/a;->a(III)I

    move-result p0

    const v0, 0x22222222

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lnk/a;->a(III)I

    move-result p0

    ushr-int/lit8 v0, p0, 0x1

    int-to-long v0, v0

    const-wide/32 v2, 0x55555555

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static b(J[JI)V
    .locals 5

    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    invoke-static {p0, p1, v0, v1, v2}, Lnk/a;->b(JJI)J

    move-result-wide p0

    const-wide v0, 0xff000000ff00L

    const/16 v2, 0x8

    invoke-static {p0, p1, v0, v1, v2}, Lnk/a;->b(JJI)J

    move-result-wide p0

    const-wide v0, 0xf000f000f000f0L

    const/4 v2, 0x4

    invoke-static {p0, p1, v0, v1, v2}, Lnk/a;->b(JJI)J

    move-result-wide p0

    const-wide v0, 0xc0c0c0c0c0c0c0cL

    const/4 v2, 0x2

    invoke-static {p0, p1, v0, v1, v2}, Lnk/a;->b(JJI)J

    move-result-wide p0

    const-wide v0, 0x2222222222222222L

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lnk/a;->b(JJI)J

    move-result-wide p0

    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long v3, p0, v0

    aput-wide v3, p2, p3

    add-int/2addr p3, v2

    ushr-long/2addr p0, v2

    and-long/2addr p0, v0

    aput-wide p0, p2, p3

    return-void
.end method

.method public static c([JII[JI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, p1, v0

    aget-wide v1, p0, v1

    invoke-static {v1, v2, p3, p4}, Lnk/b;->b(J[JI)V

    add-int/lit8 p4, p4, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d(I)I
    .locals 1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xf0f

    shl-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    and-int/lit16 p0, p0, 0x3333

    shl-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    and-int/lit16 p0, p0, 0x5555

    return p0
.end method

.method public static e(I)I
    .locals 2

    const v0, 0xaa00aa

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lnk/a;->a(III)I

    move-result p0

    const v0, 0xcccc

    const/16 v1, 0xe

    invoke-static {p0, v0, v1}, Lnk/a;->a(III)I

    move-result p0

    const v0, 0xf000f0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lnk/a;->a(III)I

    move-result p0

    const v0, 0xff00

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lnk/a;->a(III)I

    move-result p0

    return p0
.end method

.method public static f(J)J
    .locals 3

    const-wide v0, 0x2222222222222222L

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lnk/a;->b(JJI)J

    move-result-wide p0

    const-wide v0, 0xc0c0c0c0c0c0c0cL

    const/4 v2, 0x2

    invoke-static {p0, p1, v0, v1, v2}, Lnk/a;->b(JJI)J

    move-result-wide p0

    const-wide v0, 0xf000f000f000f0L

    const/4 v2, 0x4

    invoke-static {p0, p1, v0, v1, v2}, Lnk/a;->b(JJI)J

    move-result-wide p0

    const-wide v0, 0xff000000ff00L

    const/16 v2, 0x8

    invoke-static {p0, p1, v0, v1, v2}, Lnk/a;->b(JJI)J

    move-result-wide p0

    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    invoke-static {p0, p1, v0, v1, v2}, Lnk/a;->b(JJI)J

    move-result-wide p0

    return-wide p0
.end method
