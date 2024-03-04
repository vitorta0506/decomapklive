.class public Lcom/tencent/ugc/TXUGCBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/TXUGCBase$TXUGCBaseListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/tencent/ugc/TXUGCBase;

.field private static sListener:Lcom/tencent/ugc/TXUGCBase$TXUGCBaseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/tencent/liteav/base/util/r;->a()Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/ugc/TXUGCBase;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/ugc/TXUGCBase;->sInstance:Lcom/tencent/ugc/TXUGCBase;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/ugc/TXUGCBase;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/ugc/TXUGCBase;->sInstance:Lcom/tencent/ugc/TXUGCBase;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/ugc/TXUGCBase;

    invoke-direct {v1}, Lcom/tencent/ugc/TXUGCBase;-><init>()V

    sput-object v1, Lcom/tencent/ugc/TXUGCBase;->sInstance:Lcom/tencent/ugc/TXUGCBase;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/ugc/TXUGCBase;->sInstance:Lcom/tencent/ugc/TXUGCBase;

    return-object v0
.end method

.method static synthetic lambda$setLicence$0(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/ugc/TXUGCBase;->sListener:Lcom/tencent/ugc/TXUGCBase$TXUGCBaseListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/tencent/ugc/TXUGCBase$TXUGCBaseListener;->onLicenceLoaded(ILjava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    const/16 p0, 0x3f8

    .line 3
    invoke-static {p0}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    return-void

    :cond_1
    const/16 v0, 0x3f9

    .line 4
    invoke-static {v0, p0, p1}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(IILjava/lang/String;)V

    return-void
.end method

.method public static setListener(Lcom/tencent/ugc/TXUGCBase$TXUGCBaseListener;)V
    .locals 0

    sput-object p0, Lcom/tencent/ugc/TXUGCBase;->sListener:Lcom/tencent/ugc/TXUGCBase$TXUGCBaseListener;

    return-void
.end method


# virtual methods
.method public getLicenceInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->getInstance()Lcom/tencent/liteav/sdk/common/LicenseChecker;

    move-result-object p1

    sget-object v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$c;->b:Lcom/tencent/liteav/sdk/common/LicenseChecker$c;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->getLicense(Lcom/tencent/liteav/sdk/common/LicenseChecker$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setLicence(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/liteav/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    const-string p1, "liteav"

    .line 2
    invoke-static {p1}, Lcom/tencent/liteav/base/ContextUtils;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->getInstance()Lcom/tencent/liteav/sdk/common/LicenseChecker;

    move-result-object p1

    invoke-static {}, Lcom/tencent/ugc/a;->a()Lcom/tencent/liteav/sdk/common/LicenseChecker$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->setListener(Lcom/tencent/liteav/sdk/common/LicenseChecker$b;)V

    .line 4
    invoke-static {}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->getInstance()Lcom/tencent/liteav/sdk/common/LicenseChecker;

    move-result-object p1

    sget-object v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$c;->b:Lcom/tencent/liteav/sdk/common/LicenseChecker$c;

    invoke-virtual {p1, v0, p2, p3}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->setLicense(Lcom/tencent/liteav/sdk/common/LicenseChecker$c;Ljava/lang/String;Ljava/lang/String;)Z

    const/16 p1, 0x44b

    .line 5
    invoke-static {p1}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAU(I)V

    return-void
.end method
