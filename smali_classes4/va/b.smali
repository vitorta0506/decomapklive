.class public Lva/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:J


# direct methods
.method public static a(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 2
    :goto_0
    sget-wide v1, Lva/b;->b:J

    int-to-long v3, p0

    const/4 p0, 0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 3
    sput-wide v3, Lva/b;->b:J

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lva/b;->a:J

    return p0

    .line 5
    :cond_1
    sget-wide v1, Lva/b;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lva/b;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    return v0

    .line 6
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lva/b;->a:J

    return p0
.end method
