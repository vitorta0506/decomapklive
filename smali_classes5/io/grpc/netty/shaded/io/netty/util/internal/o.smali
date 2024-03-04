.class public final Lio/grpc/netty/shaded/io/netty/util/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(JJ)I
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(I)I
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    shl-int p0, v0, p0

    return p0
.end method

.method public static c(III)Z
    .locals 1

    or-int v0, p0, p1

    or-int/2addr v0, p2

    add-int/2addr p0, p1

    or-int p1, v0, p0

    sub-int/2addr p2, p0

    or-int p0, p1, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(I)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-gtz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->b(I)I

    move-result v0

    :goto_0
    return v0
.end method
