.class final Lvg/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a([Ljava/lang/Object;)I
    .locals 0

    array-length p0, p0

    return p0
.end method

.method static b(JJ)J
    .locals 2

    sget-wide v0, Lwg/d;->a:J

    and-long/2addr p0, p2

    sget p2, Lwg/d;->b:I

    add-int/lit8 p2, p2, -0x1

    shl-long/2addr p0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method
