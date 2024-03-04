.class public final Lcom/google/common/primitives/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)B
    .locals 4

    long-to-int v0, p0

    int-to-byte v0, v0

    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Out of range: %s"

    invoke-static {v1, v2, p0, p1}, Lcom/google/common/base/o;->j(ZLjava/lang/String;J)V

    return v0
.end method
