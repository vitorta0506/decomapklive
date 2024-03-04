.class public final Lcom/tencent/live2/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/live2/impl/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/tencent/live2/impl/a$a;

.field private static b:Lcom/tencent/live2/V2TXLivePremier$V2TXLivePremierObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/live2/impl/a$a;

    invoke-direct {v0}, Lcom/tencent/live2/impl/a$a;-><init>()V

    sput-object v0, Lcom/tencent/live2/impl/a;->a:Lcom/tencent/live2/impl/a$a;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/util/CommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/liteav/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    const-string p0, "liteav"

    .line 24
    invoke-static {p0}, Lcom/tencent/liteav/base/ContextUtils;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->getInstance()Lcom/tencent/liteav/sdk/common/LicenseChecker;

    move-result-object p0

    new-instance v0, Lcom/tencent/live2/impl/a$1;

    invoke-direct {v0}, Lcom/tencent/live2/impl/a$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->setListener(Lcom/tencent/liteav/sdk/common/LicenseChecker$b;)V

    .line 26
    invoke-static {}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->getInstance()Lcom/tencent/liteav/sdk/common/LicenseChecker;

    move-result-object p0

    sget-object v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$c;->a:Lcom/tencent/liteav/sdk/common/LicenseChecker$c;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->setLicense(Lcom/tencent/liteav/sdk/common/LicenseChecker$c;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static a(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;)V
    .locals 2

    if-eqz p0, :cond_7

    .line 6
    iget-boolean v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->enableConsole:Z

    invoke-static {v0}, Lcom/tencent/liteav/base/util/LiteavLog;->nativeSetConsoleLogEnabled(Z)V

    .line 7
    iget-boolean v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->enableLogFile:Z

    invoke-static {v0}, Lcom/tencent/liteav/base/util/LiteavLog;->nativeSetLogToFileEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->logPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9
    invoke-static {v0}, Lcom/tencent/liteav/base/util/LiteavLog;->nativeSetLogFilePath(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->logLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 11
    sget-object v0, Lcom/tencent/liteav/base/util/LiteavLog$b;->a:Lcom/tencent/liteav/base/util/LiteavLog$b;

    goto :goto_0

    .line 12
    :cond_1
    sget-object v0, Lcom/tencent/liteav/base/util/LiteavLog$b;->f:Lcom/tencent/liteav/base/util/LiteavLog$b;

    goto :goto_0

    .line 13
    :cond_2
    sget-object v0, Lcom/tencent/liteav/base/util/LiteavLog$b;->e:Lcom/tencent/liteav/base/util/LiteavLog$b;

    goto :goto_0

    .line 14
    :cond_3
    sget-object v0, Lcom/tencent/liteav/base/util/LiteavLog$b;->d:Lcom/tencent/liteav/base/util/LiteavLog$b;

    goto :goto_0

    .line 15
    :cond_4
    sget-object v0, Lcom/tencent/liteav/base/util/LiteavLog$b;->c:Lcom/tencent/liteav/base/util/LiteavLog$b;

    goto :goto_0

    .line 16
    :cond_5
    sget-object v0, Lcom/tencent/liteav/base/util/LiteavLog$b;->b:Lcom/tencent/liteav/base/util/LiteavLog$b;

    .line 17
    :goto_0
    iget v0, v0, Lcom/tencent/liteav/base/util/LiteavLog$b;->mNativeValue:I

    .line 18
    invoke-static {v0}, Lcom/tencent/liteav/base/util/LiteavLog;->nativeSetLogLevel(I)V

    .line 19
    sget-object v0, Lcom/tencent/live2/impl/a;->a:Lcom/tencent/live2/impl/a$a;

    iget-boolean p0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->enableObserver:Z

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 20
    :goto_1
    invoke-static {v0}, Lcom/tencent/liteav/base/util/LiteavLog;->setCallback(Lcom/tencent/liteav/base/util/LiteavLog$a;)V

    .line 21
    invoke-static {p0}, Lcom/tencent/liteav/base/util/LiteavLog;->nativeSetLogCallbackEnabled(Z)V

    :cond_7
    return-void
.end method

.method public static a(Lcom/tencent/live2/V2TXLivePremier$V2TXLivePremierObserver;)V
    .locals 1

    .line 2
    sput-object p0, Lcom/tencent/live2/impl/a;->b:Lcom/tencent/live2/V2TXLivePremier$V2TXLivePremierObserver;

    .line 3
    sget-object v0, Lcom/tencent/live2/impl/a;->a:Lcom/tencent/live2/impl/a$a;

    .line 4
    iput-object p0, v0, Lcom/tencent/live2/impl/a$a;->a:Lcom/tencent/live2/V2TXLivePremier$V2TXLivePremierObserver;

    .line 5
    invoke-static {p0}, Lcom/tencent/liteav/live/V2TXLivePremierJni;->setObserver(Lcom/tencent/live2/V2TXLivePremier$V2TXLivePremierObserver;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/tencent/rtmp/TXLiveBase;->setGlobalEnv(Ljava/lang/String;)I

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/liteav/base/util/CommonUtil;->setSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static a(ZLcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameObserverFormat;)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/tencent/liteav/live/V2TXLivePremierJni;->enableAudioPlayoutObserver(ZLcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameObserverFormat;)I

    return-void
.end method

.method static synthetic b()Lcom/tencent/live2/V2TXLivePremier$V2TXLivePremierObserver;
    .locals 1

    sget-object v0, Lcom/tencent/live2/impl/a;->b:Lcom/tencent/live2/V2TXLivePremier$V2TXLivePremierObserver;

    return-object v0
.end method
