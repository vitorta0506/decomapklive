.class public Lcom/tencent/ugc/datereport/UGCDataReport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/tencent/ugc/datereport/UGCDataReport;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private final mDAUReporter:Lcom/tencent/liteav/base/datareport/Event4XReporter;

.field private mDevId:Ljava/lang/String;

.field private mDevUUID:Ljava/lang/String;

.field private mNetType:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;

.field private mSystemVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mNetType:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mDevId:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mDevUUID:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mPkgName:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mAppName:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mSystemVersion:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const v2, 0xc34f

    const/16 v3, 0x3ec

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/liteav/base/datareport/Event4XReporter;-><init>(IILjava/lang/String;ZI)V

    iput-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mDAUReporter:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    return-void
.end method

.method private static getInstance()Lcom/tencent/ugc/datereport/UGCDataReport;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/ugc/datereport/UGCDataReport;->sInstance:Lcom/tencent/ugc/datereport/UGCDataReport;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/ugc/datereport/UGCDataReport;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/ugc/datereport/UGCDataReport;->sInstance:Lcom/tencent/ugc/datereport/UGCDataReport;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/ugc/datereport/UGCDataReport;

    invoke-direct {v1}, Lcom/tencent/ugc/datereport/UGCDataReport;-><init>()V

    sput-object v1, Lcom/tencent/ugc/datereport/UGCDataReport;->sInstance:Lcom/tencent/ugc/datereport/UGCDataReport;

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
    sget-object v0, Lcom/tencent/ugc/datereport/UGCDataReport;->sInstance:Lcom/tencent/ugc/datereport/UGCDataReport;

    return-object v0
.end method

.method public static declared-synchronized reportDAU(I)V
    .locals 4

    const-class v0, Lcom/tencent/ugc/datereport/UGCDataReport;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/ugc/datereport/UGCDataReport;->getInstance()Lcom/tencent/ugc/datereport/UGCDataReport;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, p0, v2, v3}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAUImpl(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized reportDAU(IILjava/lang/String;)V
    .locals 2

    const-class v0, Lcom/tencent/ugc/datereport/UGCDataReport;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/tencent/ugc/datereport/UGCDataReport;->getInstance()Lcom/tencent/ugc/datereport/UGCDataReport;

    move-result-object v1

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/ugc/datereport/UGCDataReport;->reportDAUImpl(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private reportDAUImpl(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/datereport/UGCDataReport;->setCommonInfo()V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mDAUReporter:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->reportDau(IILjava/lang/String;)V

    return-void
.end method

.method private setCommonInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mNetType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mDAUReporter:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string v2, "net_type"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setCommonStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mDevId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mDAUReporter:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string v2, "dev_id"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setCommonStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mDevUUID:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mDAUReporter:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string v2, "dev_uuid"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setCommonStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mAppName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 8
    iget-object v1, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mDAUReporter:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string v2, "app_name"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setCommonStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mSystemVersion:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 10
    iget-object v1, p0, Lcom/tencent/ugc/datereport/UGCDataReport;->mDAUReporter:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string/jumbo v2, "sys_version"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setCommonStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
