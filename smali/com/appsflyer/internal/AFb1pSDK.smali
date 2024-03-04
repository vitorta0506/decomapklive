.class public final Lcom/appsflyer/internal/AFb1pSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static AFInAppEventType:Lcom/appsflyer/internal/AFb1pSDK; = null

.field private static afErrorLog:I = 0x0

.field private static afInfoLog:J = -0x35e37a35b9a6c846L

.field private static init:I = 0x1


# instance fields
.field private AFInAppEventParameterName:I

.field private AFKeystoreWrapper:Z

.field private AFLogger:Z

.field private afDebugLog:Z

.field private afRDLog:Ljava/lang/String;

.field private final valueOf:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->values:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper:Z

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string v1, "-1"

    .line 5
    iput-object v1, p0, Lcom/appsflyer/internal/AFb1pSDK;->afRDLog:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "disableProxy"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->afDebugLog:Z

    .line 7
    iput v3, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventParameterName:I

    .line 8
    iput-boolean v3, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFLogger:Z

    return-void
.end method

.method private declared-synchronized AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string v1, "sdk_version"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_1

    .line 2
    :try_start_1
    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x17

    if-lez p1, :cond_0

    const/16 p1, 0x52

    goto :goto_0

    :cond_0
    const/16 p1, 0x17

    :goto_0
    if-eq p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string v0, "devkey"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 5
    :try_start_3
    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6
    :try_start_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string p2, "originalAppsFlyerId"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_5

    .line 8
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-lez p1, :cond_5

    .line 9
    :try_start_5
    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 p2, 0x1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/16 p1, 0x10

    :goto_2
    if-eq p1, p2, :cond_4

    .line 10
    :try_start_6
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string p2, "uid"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string p2, "uid"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x13

    div-int/lit8 p1, p1, 0x0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :goto_3
    monitor-exit p0

    throw p1

    :cond_5
    :goto_4
    monitor-exit p0

    return-void

    .line 11
    :catchall_1
    monitor-exit p0

    return-void
.end method

.method public static AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4f

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x4f

    :goto_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 2
    sget-object v0, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1pSDK;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/appsflyer/internal/AFb1pSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1pSDK;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1pSDK;

    .line 4
    :cond_1
    sget-object v0, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1pSDK;

    .line 5
    sget v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x2e

    if-eqz v1, :cond_2

    const/16 v1, 0x2e

    goto :goto_1

    :cond_2
    const/16 v1, 0x20

    :goto_1
    if-eq v1, v3, :cond_3

    return-object v0

    :cond_3
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_4
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 6
    throw v0
.end method

.method private declared-synchronized AFLogger()Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string v1, "data"

    iget-object v2, p0, Lcom/appsflyer/internal/AFb1pSDK;->values:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1pSDK;->afInfoLog()V

    .line 4
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    sget v1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized afInfoLog()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->values:Ljava/util/List;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventParameterName:I

    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x5e

    if-nez v0, :cond_0

    const/16 v0, 0x54

    goto :goto_0

    :cond_0
    const/16 v0, 0x5e

    :goto_0
    if-ne v0, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private afRDLog()Z
    .locals 4

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->afDebugLog:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper:Z

    if-nez v0, :cond_3

    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFLogger:Z

    const/16 v3, 0x9

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x40

    if-eqz v0, :cond_1

    const/16 v0, 0x2f

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    :goto_1
    if-eq v0, v3, :cond_6

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFLogger:Z

    if-eqz v0, :cond_6

    :cond_3
    :goto_2
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x28

    if-nez v0, :cond_4

    const/16 v0, 0x28

    goto :goto_3

    :cond_4
    const/16 v0, 0x1e

    :goto_3
    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    :cond_6
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xf

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto :goto_4

    :cond_7
    const/16 v0, 0x39

    :goto_4
    if-eq v0, v1, :cond_8

    return v2

    :cond_8
    const/16 v0, 0x20

    :try_start_2
    div-int/2addr v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v2

    :catchall_2
    move-exception v0

    throw v0
.end method

.method private declared-synchronized valueOf(Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/appsflyer/internal/AFd1lSDK;)V
    .locals 6

    monitor-enter p0

    .line 34
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "remote_debug_static_data"

    .line 36
    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    iget-object v4, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v4, 0x20

    .line 38
    :try_start_1
    div-int/2addr v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 39
    :try_start_2
    throw p1

    .line 40
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "remote_debug_static_data"

    .line 41
    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    iget-object v4, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v3, :cond_2

    .line 43
    :goto_1
    :try_start_3
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/appsflyer/internal/AFa1lSDK;->AFInAppEventParameterName(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 44
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v3

    const-string v4, "advertiserId"

    .line 45
    invoke-virtual {v0, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    iget-object p3, p3, Lcom/appsflyer/internal/AFd1lSDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 47
    iget-object v5, v3, Lcom/appsflyer/internal/AFa1aSDK;->afErrorLog:Ljava/lang/String;

    .line 48
    invoke-direct {p0, v4, p3, v5}, Lcom/appsflyer/internal/AFb1pSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "6.9.0."

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/appsflyer/internal/AFa1aSDK;->values:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 50
    invoke-virtual {v3}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/appsflyer/internal/AFc1ySDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v3

    .line 51
    iget-object v3, v3, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/lang/String;

    const-string v4, "KSAppsFlyerId"

    .line 52
    invoke-virtual {v0, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uid"

    .line 53
    invoke-virtual {v0, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-direct {p0, p3, v3, v4, v5}, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 55
    :try_start_5
    invoke-virtual {p2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string p3, "channel"

    .line 56
    invoke-virtual {v0, p3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "preInstallName"

    .line 57
    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/appsflyer/internal/AFb1pSDK;->values(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 59
    :catchall_1
    :try_start_6
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :catchall_2
    :goto_2
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string p2, "launch_counter"

    iget-object p3, p0, Lcom/appsflyer/internal/AFb1pSDK;->afRDLog:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string/jumbo v1, "\u37d8\u3df1\u23a9\u297f\u1f3a"

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    cmpl-float v2, v3, v2

    add-int/lit16 v2, v2, 0xa39

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFb1pSDK;->values(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string v1, "platform"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string v1, "platform_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 9
    :try_start_1
    sget v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 10
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string v2, "advertiserId"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    :try_start_3
    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_4
    throw v0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    if-eqz p2, :cond_5

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v1, 0x63

    if-lez p1, :cond_2

    const/16 p1, 0x63

    goto :goto_1

    :cond_2
    const/16 p1, 0x61

    :goto_1
    if-eq p1, v1, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    :try_start_5
    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_4

    .line 15
    :try_start_6
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string v0, "imei"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string p3, "imei"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_5
    :goto_2
    const/4 p1, 0x1

    if-eqz p3, :cond_6

    const/4 p2, 0x0

    goto :goto_3

    :cond_6
    const/4 p2, 0x1

    :goto_3
    if-eq p2, p1, :cond_7

    .line 16
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-lez p1, :cond_7

    .line 17
    :try_start_7
    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 18
    :try_start_8
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string p2, "android_id"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    :goto_4
    monitor-exit p0

    throw p1

    :cond_7
    :goto_5
    monitor-exit p0

    return-void

    .line 19
    :catchall_1
    monitor-exit p0

    return-void
.end method

.method private varargs declared-synchronized valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 21
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2

    .line 22
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1pSDK;->afRDLog()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2

    .line 24
    iget v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventParameterName:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const v2, 0x18000

    if-lt v0, v2, :cond_2

    .line 25
    :goto_1
    monitor-exit p0

    return-void

    .line 26
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, ", "

    .line 27
    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p1, :cond_3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " _/AppsFlyer_6.9.0 ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    sget p2, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 p2, p2, 0x33

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 p2, p2, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 30
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/AppsFlyer_6.9.0 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    :goto_2
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1pSDK;->values:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget p2, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventParameterName:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    shl-int/2addr p1, v1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventParameterName:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static valueOf(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;
    .locals 4

    .line 61
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 v1, v0, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eq v3, v2, :cond_3

    .line 62
    array-length v0, p1

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    .line 63
    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 64
    :goto_1
    array-length v3, p1

    if-ge p0, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    :goto_2
    if-eq v3, v2, :cond_2

    .line 65
    aget-object v3, p1, p0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    add-int/lit8 v0, v0, 0x13

    .line 66
    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_5

    new-array p1, v2, [Ljava/lang/String;

    aput-object p0, p1, v1

    return-object p1

    :cond_5
    new-array p1, v1, [Ljava/lang/String;

    .line 67
    aput-object p0, p1, v1

    return-object p1
.end method

.method private static values(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 21
    sget-object v0, Lcom/appsflyer/internal/AFf1zSDK;->AFInAppEventType:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    sput p1, Lcom/appsflyer/internal/AFf1zSDK;->values:I

    .line 23
    array-length p1, p0

    new-array p1, p1, [C

    const/4 v1, 0x0

    .line 24
    sput v1, Lcom/appsflyer/internal/AFf1zSDK;->valueOf:I

    :goto_0
    sget v1, Lcom/appsflyer/internal/AFf1zSDK;->valueOf:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 25
    aget-char v2, p0, v1

    sget v3, Lcom/appsflyer/internal/AFf1zSDK;->values:I

    mul-int v3, v3, v1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/appsflyer/internal/AFb1pSDK;->afInfoLog:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 26
    sget v1, Lcom/appsflyer/internal/AFf1zSDK;->valueOf:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/appsflyer/internal/AFf1zSDK;->valueOf:I

    goto :goto_0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized values(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 6
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x4c

    if-eqz p1, :cond_0

    const/16 v2, 0x63

    goto :goto_0

    :cond_0
    const/16 v2, 0x4c

    :goto_0
    if-eq v2, v0, :cond_2

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-lez v0, :cond_1

    const/16 v0, 0x29

    goto :goto_1

    :cond_1
    const/16 v0, 0x18

    :goto_1
    if-eq v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string v1, "app_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz p2, :cond_3

    .line 9
    :try_start_2
    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string v0, "app_version"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/16 p1, 0x36

    if-eqz p3, :cond_4

    const/16 p2, 0x55

    goto :goto_2

    :cond_4
    const/16 p2, 0x36

    :goto_2
    const/4 v0, 0x0

    if-eq p2, p1, :cond_6

    .line 12
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez p1, :cond_6

    .line 13
    :try_start_4
    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p1, :cond_5

    .line 14
    :try_start_5
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string p2, "channel"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x2f

    div-int/2addr p1, v0

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string p2, "channel"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    if-eqz p4, :cond_9

    .line 15
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_8

    goto :goto_5

    .line 16
    :cond_8
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    const-string p2, "preInstall"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 17
    :catchall_0
    monitor-exit p0

    return-void

    .line 18
    :cond_9
    :goto_5
    :try_start_6
    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 19
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method final declared-synchronized AFInAppEventParameterName()V
    .locals 3

    monitor-enter p0

    .line 13
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper:Z

    .line 15
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1pSDK;->afInfoLog()V

    sget v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x9

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    :goto_0
    if-eq v1, v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/16 v1, 0x5d

    :try_start_1
    div-int/2addr v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 12
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "server_request"

    invoke-direct {p0, p2, p1, v0}, Lcom/appsflyer/internal/AFb1pSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    const/16 p2, 0x25

    add-int/2addr p1, p2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x3b

    if-nez p1, :cond_0

    const/16 p2, 0x3b

    :cond_0
    if-eq p2, v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method final declared-synchronized AFInAppEventType()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFLogger:Z

    const-string v1, "r_debugging_on"

    .line 2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Lcom/appsflyer/internal/AFb1pSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget v1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-ne v3, v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final AFInAppEventType(Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/appsflyer/internal/AFc1ySDK;)V
    .locals 1

    .line 3
    :try_start_0
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFb1pSDK;->valueOf(Ljava/lang/String;Landroid/content/pm/PackageManager;Lcom/appsflyer/internal/AFd1lSDK;)V

    .line 4
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1pSDK;->AFLogger()Ljava/util/Map;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/appsflyer/internal/AFd1sSDK;

    invoke-direct {p2, p1, p3}, Lcom/appsflyer/internal/AFd1sSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/internal/AFc1ySDK;)V

    .line 6
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object p1

    .line 7
    iget-object p3, p1, Lcom/appsflyer/internal/AFc1mSDK;->valueOf:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/appsflyer/internal/AFc1mSDK$5;

    invoke-direct {v0, p1, p2}, Lcom/appsflyer/internal/AFc1mSDK$5;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1nSDK;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final AFInAppEventType(Ljava/lang/Throwable;)V
    .locals 5

    .line 9
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x9

    if-nez v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/16 v0, 0x4b

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x54

    .line 14
    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_2
    const/4 v4, 0x1

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eq v2, v4, :cond_4

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    goto :goto_3

    .line 16
    :cond_4
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 18
    :goto_3
    invoke-static {v3, p1}, Lcom/appsflyer/internal/AFb1pSDK;->valueOf(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "exception"

    .line 19
    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFb1pSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method final varargs AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 7
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "public_api_call"

    invoke-direct {p0, v0, p1, p2}, Lcom/appsflyer/internal/AFb1pSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x57

    if-nez p1, :cond_0

    const/16 p1, 0x57

    goto :goto_0

    :cond_0
    const/16 p1, 0x42

    :goto_0
    if-eq p1, p2, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method final afDebugLog()V
    .locals 4

    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 v1, v0, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/appsflyer/internal/AFb1pSDK;->afDebugLog:Z

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method final afErrorLog()Z
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFLogger:Z

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method final declared-synchronized valueOf()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "r_debugging_off"

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/appsflyer/internal/AFb1pSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    iput-boolean v2, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFLogger:Z

    .line 4
    iput-boolean v2, p0, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper:Z

    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized valueOf(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    iput-object p1, p0, Lcom/appsflyer/internal/AFb1pSDK;->afRDLog:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x36

    if-nez v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x36

    :goto_0
    if-eq v0, p1, :cond_1

    const/16 p1, 0x5e

    :try_start_1
    div-int/lit8 p1, p1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final valueOf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 20
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/appsflyer/internal/AFb1pSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method final declared-synchronized values()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    sput-object v3, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1pSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x30

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1pSDK;->valueOf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    sput-object v3, Lcom/appsflyer/internal/AFb1pSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1pSDK;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final values(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 20
    sget v0, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "server_response"

    invoke-direct {p0, p2, p1, v0}, Lcom/appsflyer/internal/AFb1pSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFb1pSDK;->init:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog:I

    rem-int/2addr p1, v1

    return-void
.end method
