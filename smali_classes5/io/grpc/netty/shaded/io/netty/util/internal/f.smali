.class public final Lio/grpc/netty/shaded/io/netty/util/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .locals 0

    xor-int/2addr p0, p1

    not-int p0, p0

    shr-int/lit8 p1, p0, 0x10

    and-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x8

    and-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x4

    and-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x2

    and-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x1

    and-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(JJ)I
    .locals 0

    xor-long/2addr p0, p2

    not-long p0, p0

    const/16 p2, 0x20

    shr-long p2, p0, p2

    and-long/2addr p0, p2

    const/16 p2, 0x10

    shr-long p2, p0, p2

    and-long/2addr p0, p2

    const/16 p2, 0x8

    shr-long p2, p0, p2

    and-long/2addr p0, p2

    const/4 p2, 0x4

    shr-long p2, p0, p2

    and-long/2addr p0, p2

    const/4 p2, 0x2

    shr-long p2, p0, p2

    and-long/2addr p0, p2

    const/4 p2, 0x1

    shr-long p2, p0, p2

    and-long/2addr p0, p2

    const-wide/16 p2, 0x1

    and-long/2addr p0, p2

    long-to-int p1, p0

    return p1
.end method

.method public static c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 3
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/f;->a(II)I

    move-result p0

    return p0
.end method

.method public static d([BI[BII)I
    .locals 4

    add-int/2addr p4, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, p4, :cond_0

    .line 1
    aget-byte v2, p0, p1

    aget-byte v3, p2, p3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/f;->a(II)I

    move-result p0

    return p0
.end method
