.class public final Lcom/tencent/liteav/txcvodplayer/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private D:Z

.field private E:I

.field private F:Ljava/lang/String;

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:I

.field private K:F

.field private L:I

.field private M:Ljava/lang/String;

.field private N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

.field private O:Lcom/tencent/liteav/base/datareport/Event4XReporter;

.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:J

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:J

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TXCVodPlayCollection"

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->B:Ljava/lang/String;

    const-string v0, "1"

    .line 3
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->C:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->c:J

    .line 6
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    .line 7
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->e:J

    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->D:Z

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->f:Z

    .line 10
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->g:Z

    .line 11
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->h:Z

    .line 12
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->i:I

    .line 13
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->j:I

    .line 14
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->E:I

    .line 15
    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    .line 16
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    .line 17
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    .line 18
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    .line 19
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->p:Z

    .line 20
    iput-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->q:Z

    .line 21
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->G:I

    .line 22
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->r:I

    const-string v0, "0"

    .line 23
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->s:Ljava/lang/String;

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->t:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->I:Ljava/lang/String;

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->u:I

    .line 27
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->v:I

    .line 28
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->w:I

    .line 29
    iput v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->x:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->K:F

    .line 31
    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->A:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->a:Landroid/content/Context;

    .line 33
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->F:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getDeviceUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->M:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->getInstance()Lcom/tencent/liteav/sdk/common/LicenseChecker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/sdk/common/LicenseChecker;->getAppId()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLicenseAppId = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VodLicenseCheck"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->A:Ljava/lang/String;

    .line 38
    new-instance p1, Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const v3, 0xc34f

    const/16 v4, 0x3ec

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/tencent/liteav/base/datareport/Event4XReporter;-><init>(IILjava/lang/String;ZI)V

    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->O:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "window"

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 13
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 14
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 15
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    :try_start_0
    const-string v1, "android.view.Display"

    .line 16
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 17
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    const-string v2, "getRealMetrics"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 18
    const-class v5, Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v6

    .line 19
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 21
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 3
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string/jumbo v1, "str_sdk_name"

    const-string v2, "liteavSdk"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getBrand()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string/jumbo v2, "str_brand_type"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string/jumbo v2, "str_device_resolution"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string/jumbo v2, "str_device_type"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getNetworkType()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    int-to-long v2, v0

    const-string/jumbo v0, "u32_network_type"

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 10
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string v2, "dev_uuid"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->F:Ljava/lang/String;

    const-string/jumbo v3, "str_app_version"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->f()Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string/jumbo v3, "str_app_name"

    invoke-virtual {v2, v3, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sys_version"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->b:Ljava/lang/String;

    const-string/jumbo v3, "str_stream_url"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getDeviceUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->M:Ljava/lang/String;

    .line 18
    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string/jumbo v3, "token"

    invoke-virtual {v2, v3, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string/jumbo v2, "str_user_id"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string/jumbo v2, "str_package_name"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->A:Ljava/lang/String;

    const-string/jumbo v2, "u32_app_id"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .locals 7

    .line 1
    new-instance v6, Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const v1, 0x9d70

    const/16 v2, 0x3f3

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;-><init>(IILjava/lang/String;ZI)V

    iput-object v6, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->g()V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->E:I

    int-to-long v1, v1

    const-string/jumbo v3, "u32_timeuse"

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->i:I

    int-to-long v1, v1

    const-string/jumbo v3, "u32_videotime"

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    div-int/2addr v4, v1

    int-to-long v4, v4

    :goto_0
    const-string/jumbo v1, "u32_avg_load"

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    int-to-long v4, v1

    const-string/jumbo v1, "u32_load_cnt"

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->o:I

    int-to-long v4, v1

    const-string/jumbo v1, "u32_max_load"

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    int-to-long v4, v1

    const-string/jumbo v1, "u32_avg_block_time"

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->r:I

    int-to-long v4, v1

    const-string/jumbo v1, "u32_player_type"

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->w:I

    if-lez v1, :cond_1

    int-to-long v4, v1

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    const-string/jumbo v1, "u32_dns_time"

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->v:I

    if-lez v1, :cond_2

    int-to-long v4, v1

    goto :goto_2

    :cond_2
    move-wide v4, v2

    :goto_2
    const-string/jumbo v1, "u32_tcp_did_connect"

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->x:I

    if-lez v1, :cond_3

    int-to-long v4, v1

    goto :goto_3

    :cond_3
    move-wide v4, v2

    :goto_3
    const-string/jumbo v1, "u32_first_video_packet"

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    if-lez v1, :cond_4

    int-to-long v2, v1

    :cond_4
    const-string/jumbo v1, "u32_first_i_frame"

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->y:Ljava/lang/String;

    const-string/jumbo v2, "u32_server_ip"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->z:Ljava/lang/String;

    const-string/jumbo v2, "u32_drm_type"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->t:Ljava/lang/String;

    const-string/jumbo v2, "str_fileid"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->s:Ljava/lang/String;

    const-string/jumbo v2, "u32_playmode"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->H:I

    int-to-long v1, v1

    const-string/jumbo v3, "u64_err_code"

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 19
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->I:Ljava/lang/String;

    const-string/jumbo v2, "str_err_info"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->u:I

    int-to-long v1, v1

    const-string/jumbo v3, "u32_video_decode_type"

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 21
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->K:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    int-to-long v3, v1

    const-string/jumbo v1, "u32_speed"

    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->sendReport()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "report evt 40304: token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,dev_uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getDeviceUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,str_app_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,sys_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,str_stream_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_timeuse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_videotime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_avg_load="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    iget v3, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    div-int v1, v3, v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_load_cnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_max_load="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_avg_block_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_player_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_dns_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_tcp_did_connect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->v:I

    const/4 v3, -0x1

    if-lez v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, -0x1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_first_video_packet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->x:I

    if-lez v1, :cond_7

    move v3, v1

    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_first_i_frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_server_ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_drm_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,str_fileid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_playmode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,u64_err_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,str_err_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->K:F

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ,u32_app_id= ,u32_video_decode_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    .line 26
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 8

    const-string v0, "TXCVodPlayCollection"

    const-string v1, "onSegmentReport"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const v3, 0x9d71

    const/16 v4, 0x3f3

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/tencent/liteav/base/datareport/Event4XReporter;-><init>(IILjava/lang/String;ZI)V

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->g()V

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->i:I

    int-to-long v2, v2

    const-string/jumbo v4, "u32_videotime"

    invoke-virtual {v1, v4, v2, v3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->r:I

    int-to-long v2, v2

    const-string/jumbo v4, "u32_player_type"

    invoke-virtual {v1, v4, v2, v3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 6
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->y:Ljava/lang/String;

    const-string/jumbo v3, "u32_server_ip"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->z:Ljava/lang/String;

    const-string/jumbo v3, "u32_drm_type"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->t:Ljava/lang/String;

    const-string/jumbo v3, "str_fileid"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->s:Ljava/lang/String;

    const-string/jumbo v3, "u32_playmode"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->j:I

    int-to-long v2, v2

    const-string/jumbo v4, "u32_videoindex"

    invoke-virtual {v1, v4, v2, v3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 11
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string/jumbo v6, "u32_realplaytime"

    invoke-virtual {v1, v6, v2, v3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 12
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v6, "u64_timestamp"

    invoke-virtual {v1, v6, v2, v3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 13
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->K:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-long v6, v2

    const-string/jumbo v2, "u32_speed"

    invoke-virtual {v1, v2, v6, v7}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 14
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/a/b;->a(Landroid/content/Context;)Lcom/tencent/liteav/txcvodplayer/a/b;

    move-result-object v2

    iget-object v6, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->A:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/tencent/liteav/txcvodplayer/a/b;->a(Ljava/lang/String;)I

    move-result v2

    int-to-long v6, v2

    const-string/jumbo v2, "u32_segment_duration"

    invoke-virtual {v1, v2, v6, v7}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventIntValue(Ljava/lang/String;J)V

    .line 15
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    invoke-virtual {v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->sendReport()V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report evt 40305: token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,dev_uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getDeviceUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,str_app_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,sys_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,str_stream_url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,u32_videotime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,u32_player_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,u32_server_ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,u32_drm_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,str_fileid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,u32_playmode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,u32_videoindex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,u32_realplaytime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    div-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,u32_speed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->K:F

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ,u32_app_id= ,u64_timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    new-instance v6, Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const v1, 0x9d6f

    const/16 v2, 0x3f3

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/base/datareport/Event4XReporter;-><init>(IILjava/lang/String;ZI)V

    iput-object v6, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->g()V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->t:Ljava/lang/String;

    const-string/jumbo v2, "str_fileid"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/c;->a()Lcom/tencent/liteav/sdk/common/LicenseChecker$d;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    .line 6
    iget v2, v0, Lcom/tencent/liteav/sdk/common/LicenseChecker$d;->value:I

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "u64_err_code"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcom/tencent/liteav/sdk/common/LicenseChecker$d;->a:Lcom/tencent/liteav/sdk/common/LicenseChecker$d;

    if-eq v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const-string/jumbo v1, "str_err_info"

    const-string v2, "player_license_error"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->setEventStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->N:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->sendReport()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "report evt 40303: token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(F)V
    .locals 3

    .line 35
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->K:F

    .line 36
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->O:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const/16 v0, 0x610

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->reportDau(IILjava/lang/String;)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mSpeed = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->K:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodPlayCollection"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \uff0cerrorInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    if-nez v0, :cond_0

    .line 40
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->H:I

    .line 41
    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->I:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->I:Ljava/lang/String;

    .line 43
    :cond_0
    iget-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->D:Z

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->c()V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->D:Z

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    iput-wide v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->c:J

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->E:I

    const-wide/16 v2, 0x0

    .line 26
    iput-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    .line 27
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->j:I

    .line 28
    iput-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->e:J

    .line 29
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->m:I

    .line 30
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->n:I

    .line 31
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->o:I

    if-eqz p1, :cond_0

    .line 32
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->f:Z

    goto :goto_0

    .line 33
    :cond_0
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->g:Z

    .line 34
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "start "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mIsPaused = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsPreLoading = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->g:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodPlayCollection"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    const-string v2, "TXCVodPlayCollection"

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    const-string v0, "calculateSegmentPlayTime mBeginPlayTS == 0"

    .line 2
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "calculateSegmentPlayTime mCurIndexPlayTime= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBeginPlayTS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    int-to-long v2, v3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->s:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/a/b;->a(Landroid/content/Context;)Lcom/tencent/liteav/txcvodplayer/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/a/b;->a(Landroid/content/Context;)Lcom/tencent/liteav/txcvodplayer/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/txcvodplayer/a/b;->c(Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->D:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->i()V

    .line 11
    :cond_2
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->E:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    const-wide/16 v4, 0x3e8

    div-long v6, v2, v4

    add-long/2addr v0, v6

    long-to-int v1, v0

    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->E:I

    .line 12
    rem-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    :cond_3
    return-void
.end method

.method public final b(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->J:I

    .line 14
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->O:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const/16 v1, 0x611

    const-string v2, ""

    invoke-virtual {p1, v1, v0, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->reportDau(IILjava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->J:I

    .line 16
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mIsMirror= "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->J:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodPlayCollection"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->f:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->d:J

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->g:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->b()V

    .line 6
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->E:I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->E:I

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->k:J

    .line 8
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/a/a;->h()V

    .line 9
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->D:Z

    .line 10
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->p:Z

    .line 11
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->q:Z

    .line 12
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->f:Z

    .line 13
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->l:I

    .line 14
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->g:Z

    .line 15
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->h:Z

    return-void
.end method

.method public final c(Z)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 16
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->h:Z

    .line 17
    :cond_0
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->L:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->L:I

    .line 18
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->O:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const/16 v0, 0x612

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->reportDau(IILjava/lang/String;)V

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mSetBitrateIndexCnt= "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->L:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodPlayCollection"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 2

    const-string v0, "TXCVodPlayCollection"

    const-string v1, "setBitrateRenderStart"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->h:Z

    return-void
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->p:Z

    .line 2
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->G:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->G:I

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->O:Lcom/tencent/liteav/base/datareport/Event4XReporter;

    const/16 v1, 0x60f

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/base/datareport/Event4XReporter;->reportDau(IILjava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSeekCnt= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/a/a;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVodPlayCollection"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
