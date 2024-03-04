.class public Lo9/b;
.super Lo9/a;
.source "SourceFile"


# static fields
.field static a:Lo9/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo9/a;-><init>()V

    return-void
.end method

.method public static d()Lo9/a;
    .locals 2

    .line 1
    sget-object v0, Lo9/b;->a:Lo9/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lo9/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lo9/b;->a:Lo9/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lo9/b;

    invoke-direct {v1}, Lo9/b;-><init>()V

    sput-object v1, Lo9/b;->a:Lo9/b;

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
    sget-object v0, Lo9/b;->a:Lo9/b;

    return-object v0
.end method

.method public static e()Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/a;->m()Lcom/google/android/gms/common/a;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/a;->g(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isBrandMeizu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1003023"

    const-string v2, "fd5957a668b9473491f5a72e21f8bef5"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/PushManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->f(Z)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getChat_switch()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->c()Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/massage/ThirdPushTokenMgr;->g()V

    .line 5
    :cond_2
    invoke-direct {p0}, Lo9/b;->f()V

    return-void
.end method
