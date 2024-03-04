.class public Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "YTCommon_FetchLicense"


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

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public fetchLicenseOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/youtu/xmagic/YTDeviceInfo;)Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;
    .locals 12

    move-object/from16 v0, p5

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v8, v1

    goto :goto_0

    .line 1
    :cond_0
    iget-object v2, v0, Lcom/tencent/youtu/xmagic/YTDeviceInfo;->device_id:Ljava/lang/String;

    move-object v8, v2

    :goto_0
    if-nez v0, :cond_1

    const-string v2, "ANDROID"

    goto :goto_1

    .line 2
    :cond_1
    iget-object v2, v0, Lcom/tencent/youtu/xmagic/YTDeviceInfo;->platform:Ljava/lang/String;

    :goto_1
    move-object v7, v2

    if-nez v0, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iget-object v1, v0, Lcom/tencent/youtu/xmagic/YTDeviceInfo;->device_info_encrypted:Ljava/lang/String;

    :goto_2
    move-object v9, v1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 5
    new-instance v1, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p3

    move-object/from16 v6, p4

    move-object v11, p2

    invoke-direct/range {v3 .. v11}, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;-><init>(Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 10
    :goto_3
    iget-object v0, v1, Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$1FetchThreadRunnable;->result:Lcom/tencent/youtu/xmagic/YTFetchLicenseHelper$FetchLicenseResult;

    return-object v0
.end method
