.class public Lcb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/os/StatFs;)J
    .locals 4

    .line 1
    invoke-static {}, Lcb/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v2, p0

    mul-long v0, v0, v2

    :goto_0
    return-wide v0
.end method

.method public static b(J)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Lcb/a;->a(Landroid/os/StatFs;)J

    move-result-wide v0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
