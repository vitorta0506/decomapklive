.class public final Lvg/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvg/j$a;
    }
.end annotation


# direct methods
.method public static a(Lvg/j$a;)Z
    .locals 4

    invoke-interface {p0}, Lvg/j$a;->f()J

    move-result-wide v0

    invoke-interface {p0}, Lvg/j$a;->d()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lvg/j$a;)I
    .locals 7

    .line 1
    invoke-interface {p0}, Lvg/j$a;->f()J

    move-result-wide v0

    .line 2
    :goto_0
    invoke-interface {p0}, Lvg/j$a;->d()J

    move-result-wide v2

    .line 3
    invoke-interface {p0}, Lvg/j$a;->f()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-nez v6, :cond_3

    sub-long/2addr v2, v4

    const-wide/32 v0, 0x7fffffff

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-interface {p0}, Lvg/j$a;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-interface {p0}, Lvg/j$a;->c()I

    move-result v0

    int-to-long v0, v0

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    .line 5
    invoke-interface {p0}, Lvg/j$a;->c()I

    move-result p0

    return p0

    :cond_2
    long-to-int p0, v2

    return p0

    :cond_3
    move-wide v0, v4

    goto :goto_0
.end method
