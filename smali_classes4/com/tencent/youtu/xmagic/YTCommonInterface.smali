.class public Lcom/tencent/youtu/xmagic/YTCommonInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static TAG:Ljava/lang/String; = "YTCommon"

.field private static enable_log:I = 0x1


# instance fields
.field private nativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceInfo(Landroid/content/Context;Lcom/tencent/youtu/xmagic/YTDeviceInfo;)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    sget p0, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz p0, :cond_0

    const-string p0, "YTCommon"

    const-string/jumbo p1, "\u4f18\u56fe\u9274\u6743\uff1a\u83b7\u53d6\u672c\u673a\u8bbe\u5907\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u7ed9APP\u6dfb\u52a0READ_PHONE_STATE\u6743\u9650\u3002"

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p0, 0xfa3

    return p0

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->nativeGetDeviceInfo(Lcom/tencent/youtu/xmagic/YTDeviceInfo;)I

    move-result p0

    return p0
.end method

.method public static native getEndTime()J
.end method

.method public static native getSDKList()[I
.end method

.method public static native getSDKNameByID(I)Ljava/lang/String;
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static initAuthByAssets(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->nativeInitAuthByAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static initAuthByFilePath(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, -0xa

    if-eqz v1, :cond_5

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x800

    new-array v3, v0, [B

    .line 4
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    if-ge v4, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 6
    invoke-static {v3, v0, v4, v1}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->nativeInitAuthByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 8
    :cond_1
    sget p1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz p1, :cond_2

    .line 9
    sget-object p1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->TAG:Ljava/lang/String;

    const-string v0, "license length oversize."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 p0, -0x2

    return p0

    :catch_0
    move-exception p1

    .line 10
    sget v0, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz v0, :cond_3

    .line 11
    sget-object v0, Lcom/tencent/youtu/xmagic/YTCommonInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "io error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    const/4 p0, -0x4

    return p0

    :catch_1
    move-exception p1

    .line 13
    sget v0, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz v0, :cond_4

    .line 14
    sget-object v0, Lcom/tencent/youtu/xmagic/YTCommonInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string p0, "YTCommon"

    const-string/jumbo p1, "\u4f18\u56fe\u9274\u6743\uff1a\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5APP\u662f\u5426\u62e5\u6709READ_EXTERNAL_STORAGE\u6743\u9650\u3002"

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    .line 17
    :cond_5
    sget p1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz p1, :cond_6

    .line 18
    sget-object p1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file not exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v2
.end method

.method public static initAuthByString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->nativeInitAuthByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static initAuthForQQ()I
    .locals 1

    invoke-static {}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->nativeInitAuthForQQ()I

    move-result v0

    return v0
.end method

.method public static initAuthOnlineWithCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 3
    sget v1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "license cache found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-static {p2, p4}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->initAuthByFilePath(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 6
    invoke-static {}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->getEndTime()J

    move-result-wide v4

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    .line 8
    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x18

    .line 9
    div-long/2addr v4, v6

    const-wide/16 v6, 0xe10

    div-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    const-wide/16 v6, 0x7

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    .line 10
    sget v6, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz v6, :cond_3

    .line 11
    sget-object v6, Lcom/tencent/youtu/xmagic/YTCommonInterface;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "youtu auth will expire in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " days"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x3ea

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_d

    .line 12
    sget v1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz v1, :cond_4

    .line 13
    sget-object v1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "youtu fetchLicenseOnline"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x0

    if-eqz p5, :cond_6

    .line 14
    new-instance v1, Lcom/tencent/youtu/xmagic/YTDeviceInfo;

    invoke-direct {v1}, Lcom/tencent/youtu/xmagic/YTDeviceInfo;-><init>()V

    .line 15
    invoke-static {p0, v1}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->getDeviceInfo(Landroid/content/Context;Lcom/tencent/youtu/xmagic/YTDeviceInfo;)I

    move-result p5

    if-eqz p5, :cond_6

    .line 16
    sget p0, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz p0, :cond_5

    .line 17
    sget-object p0, Lcom/tencent/youtu/xmagic/YTCommonInterface;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDeviceInfo failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return p5

    :cond_6
    move-object v9, v1

    .line 18
    new-instance v4, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;

    invoke-direct {v4}, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;-><init>()V

    move-object v5, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, p4

    .line 19
    invoke-virtual/range {v4 .. v9}, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;->fetchLicenseOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/youtu/xmagic/YTDeviceInfo;)Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

    move-result-object p0

    .line 20
    iget p1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->error_code:I

    if-nez p1, :cond_8

    .line 21
    iget-object p1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->license:Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->initAuthByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 22
    iget-object p3, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->auth_type:Ljava/lang/String;

    const-string/jumbo p4, "test"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->bind_type:Ljava/lang/String;

    const-string p4, "APP"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 23
    sget p3, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz p3, :cond_a

    .line 24
    sget-object p3, Lcom/tencent/youtu/xmagic/YTCommonInterface;->TAG:Ljava/lang/String;

    const-string/jumbo p4, "youtu test license will not cache"

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    if-nez p1, :cond_a

    move v1, p1

    const/4 p1, 0x1

    goto :goto_3

    .line 25
    :cond_8
    sget p1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz p1, :cond_9

    .line 26
    sget-object p1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "fetch license failed: http_status: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->http_status:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " error_code: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->error_code:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " error_msg: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->error_msg:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_9
    iget p1, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->error_code:I

    .line 28
    sget p3, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz p3, :cond_a

    .line 29
    invoke-static {p1}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->nativePrintAuthResult(I)V

    :cond_a
    :goto_2
    move v1, p1

    const/4 p1, 0x0

    :goto_3
    if-ne p1, v3, :cond_d

    .line 30
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 31
    iget-object p0, p0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;->license:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 33
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 34
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 35
    sget p1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz p1, :cond_b

    .line 36
    sget-object p1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "io error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    const/4 p0, -0x4

    return p0

    :catch_1
    move-exception p0

    .line 38
    sget p1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    if-eqz p1, :cond_c

    .line 39
    sget-object p1, Lcom/tencent/youtu/xmagic/YTCommonInterface;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cache file not found: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string p0, "YTCommon"

    const-string/jumbo p1, "\u4f18\u56fe\u9274\u6743\uff1a\u8bfb\u53d6\u6587\u4ef6\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5APP\u662f\u5426\u62e5\u6709READ_EXTERNAL_STORAGE\u6743\u9650\u3002"

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 p0, -0xa

    return p0

    :cond_d
    return v1
.end method

.method private static native nativeGetDeviceInfo(Lcom/tencent/youtu/xmagic/YTDeviceInfo;)I
.end method

.method private static native nativeInitAuthByAssets(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeInitAuthByString(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeInitAuthForQQ()I
.end method

.method private static native nativePrintAuthResult(I)V
.end method

.method private static native nativeSetEnableLog(I)V
.end method

.method public static setEnableLog(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->nativeSetEnableLog(I)V

    .line 2
    sput p0, Lcom/tencent/youtu/xmagic/YTCommonInterface;->enable_log:I

    return-void
.end method
