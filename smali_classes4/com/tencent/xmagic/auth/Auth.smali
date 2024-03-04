.class public Lcom/tencent/xmagic/auth/Auth;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/xmagic/auth/Auth$AuthResult;,
        Lcom/tencent/xmagic/auth/Auth$AuthResultSucceed;,
        Lcom/tencent/xmagic/auth/Auth$AuthResultFail;,
        Lcom/tencent/xmagic/auth/Auth$AuthInfo;,
        Lcom/tencent/xmagic/auth/Auth$BindType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static sAuthOnlineWithCacheCallTime:J

.field private static sCurrentUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "YTCommonXMagic"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "static initializer: load YTCommonXMagic,error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTH"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :goto_0
    const-class v0, Lcom/tencent/xmagic/auth/Auth;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/xmagic/auth/Auth;->TAG:Ljava/lang/String;

    const-string v0, "https://license.youtu.qq.com/youtu/sdklicenseapi/license_generate"

    .line 4
    sput-object v0, Lcom/tencent/xmagic/auth/Auth;->sCurrentUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/xmagic/auth/Auth;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/xmagic/auth/Auth;->sCurrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static auth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/xmagic/auth/Auth$AuthResult;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/xmagic/auth/Auth;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/tencent/xmagic/auth/Auth;->innerAuthOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    new-instance p0, Lcom/tencent/xmagic/auth/Auth$AuthResult;

    const/16 p1, 0x270f

    invoke-direct {p0, p1, v1, v1}, Lcom/tencent/xmagic/auth/Auth$AuthResult;-><init>(ILcom/tencent/xmagic/auth/Auth$AuthInfo;Lcom/tencent/xmagic/auth/Auth$1;)V

    return-object p0

    .line 6
    :cond_2
    invoke-static {p1, p3}, Lcom/tencent/xmagic/auth/Auth;->innerAuthAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-static {}, Lcom/tencent/xmagic/auth/Auth;->needRenewal()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    invoke-static {p0, p2, p3}, Lcom/tencent/xmagic/auth/Auth;->innerAuthOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    .line 10
    :cond_4
    sget-object p0, Lcom/tencent/xmagic/auth/Auth;->TAG:Ljava/lang/String;

    const-string p3, "licenseId or secretKey is null, Unable to pull lic online"

    invoke-static {p0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move p0, v0

    .line 11
    :goto_1
    new-instance p3, Lcom/tencent/xmagic/auth/Auth$AuthInfo;

    sget-wide v5, Lcom/tencent/xmagic/auth/Auth;->sAuthOnlineWithCacheCallTime:J

    sget-object v7, Lcom/tencent/xmagic/auth/Auth$BindType;->APP:Lcom/tencent/xmagic/auth/Auth$BindType;

    const/4 v8, 0x0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/tencent/xmagic/auth/Auth$AuthInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/tencent/xmagic/auth/Auth$BindType;Lcom/tencent/xmagic/auth/Auth$1;)V

    .line 12
    new-instance p1, Lcom/tencent/xmagic/auth/Auth$AuthResult;

    invoke-direct {p1, p0, p3, v1}, Lcom/tencent/xmagic/auth/Auth$AuthResult;-><init>(ILcom/tencent/xmagic/auth/Auth$AuthInfo;Lcom/tencent/xmagic/auth/Auth$1;)V

    return-object p1
.end method

.method public static authByBase64(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/xmagic/auth/Auth$AuthResult;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/xmagic/auth/Auth;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p1, p2}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->initAuthByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 3
    sget-object p1, Lcom/tencent/xmagic/auth/Auth;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "YTCommonInterface.initAuthByString(secret_key=%s) = code%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p1, Lcom/tencent/xmagic/auth/Auth$AuthInfo;

    sget-wide v4, Lcom/tencent/xmagic/auth/Auth;->sAuthOnlineWithCacheCallTime:J

    sget-object v6, Lcom/tencent/xmagic/auth/Auth$BindType;->APP:Lcom/tencent/xmagic/auth/Auth$BindType;

    const-string v3, ""

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/tencent/xmagic/auth/Auth$AuthInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/tencent/xmagic/auth/Auth$BindType;Lcom/tencent/xmagic/auth/Auth$1;)V

    .line 5
    new-instance p2, Lcom/tencent/xmagic/auth/Auth$AuthResult;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/tencent/xmagic/auth/Auth$AuthResult;-><init>(ILcom/tencent/xmagic/auth/Auth$AuthInfo;Lcom/tencent/xmagic/auth/Auth$1;)V

    return-object p2
.end method

.method private static doAuthOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".lic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/tencent/xmagic/auth/Auth;->sAuthOnlineWithCacheCallTime:J

    .line 3
    sget-object v1, Lcom/tencent/xmagic/auth/Auth;->sCurrentUrl:Ljava/lang/String;

    const-string v2, "sdklicensetest.youtu.qq.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/tencent/xmagic/auth/Auth;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "use test server!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    sget-object v4, Lcom/tencent/xmagic/auth/Auth;->sCurrentUrl:Ljava/lang/String;

    move-object v3, p0

    move-object v5, v0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->initAuthOnlineWithCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    .line 6
    sget-object p2, Lcom/tencent/xmagic/auth/Auth;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const-string p1, "YTCommonInterface.initAuthOnlineWithCache(cachePath=%s, licenseId=%s, isBindDevice=%s) = code%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static innerAuthAssets(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->initAuthByAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2
    sget-object v0, Lcom/tencent/xmagic/auth/Auth;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "YTCommonInterface.initAuthByAssets(licenceFileName=%s) = code%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private static innerAuthOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/tencent/xmagic/auth/Auth;->doAuthOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lcom/tencent/xmagic/auth/Auth;->doAuthOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static needRenewal()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->getEndTime()J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xe10

    .line 3
    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    const-wide/16 v2, 0x7

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
