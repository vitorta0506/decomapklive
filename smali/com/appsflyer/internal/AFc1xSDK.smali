.class public final Lcom/appsflyer/internal/AFc1xSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static AFInAppEventParameterName:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static AFInAppEventType:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static AFKeystoreWrapper:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static AFLogger$LogLevel:I = 0x1

.field private static afDebugLog:I

.field private static afRDLog:[I

.field private static valueOf:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static values:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final AFLogger:Lcom/appsflyer/internal/AFb1cSDK;

.field private final afErrorLog:Lcom/appsflyer/internal/AFb1xSDK;

.field private final afInfoLog:Lcom/appsflyer/AppsFlyerProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventType()V

    const-string v0, "https://%smonitorsdk.%s/remote-debug?app_id="

    .line 1
    sput-object v0, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const-string v0, "https://cdn-settings.%s/android/v1/%s/settings"

    .line 2
    sput-object v0, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventType:Ljava/lang/String;

    const-string v0, "https://cdn-testsettings.%s/android/v1/%s/settings"

    .line 3
    sput-object v0, Lcom/appsflyer/internal/AFc1xSDK;->AFKeystoreWrapper:Ljava/lang/String;

    const-string v0, "https://%sgcdsdk.%s/install_data/v4.0/"

    .line 4
    sput-object v0, Lcom/appsflyer/internal/AFc1xSDK;->valueOf:Ljava/lang/String;

    const-string v0, "https://%sonelink.%s/shortlink-sdk/v2"

    .line 5
    sput-object v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Ljava/lang/String;

    sget v0, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x48

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFb1cSDK;Lcom/appsflyer/AppsFlyerProperties;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1xSDK;->afErrorLog:Lcom/appsflyer/internal/AFb1xSDK;

    .line 3
    iput-object p2, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger:Lcom/appsflyer/internal/AFb1cSDK;

    .line 4
    iput-object p3, p0, Lcom/appsflyer/internal/AFc1xSDK;->afInfoLog:Lcom/appsflyer/AppsFlyerProperties;

    return-void
.end method

.method private AFInAppEventParameterName()Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
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

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "build_number"

    const-string v2, "6.9.0"

    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger:Lcom/appsflyer/internal/AFb1cSDK;

    .line 16
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1oSDK;

    const-string v2, "appsFlyerCount"

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventType(Ljava/lang/String;)I

    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "counter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 19
    fill-array-data v1, :array_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x5

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFc1xSDK;->values([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger:Lcom/appsflyer/internal/AFb1cSDK;

    .line 22
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 23
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_version_name"

    .line 26
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger:Lcom/appsflyer/internal/AFb1cSDK;

    .line 28
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 29
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    .line 31
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Lcom/appsflyer/internal/AFb1vSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFb1vSDK;-><init>()V

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1vSDK;->values()Ljava/lang/String;

    move-result-object v1

    const-string v2, "platformextension"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget v1, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/16 v1, 0x32

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :array_0
    .array-data 4
        0x3fa12238
        0x6143e3df
        0x489d68e5
        0x25d3ef19
    .end array-data
.end method

.method static AFInAppEventType()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFc1xSDK;->afRDLog:[I

    return-void

    :array_0
    .array-data 4
        0x76441cfa
        -0x6f2683d8
        -0x28038c11
        -0x5acd94e1
        0x1643ed76
        0x63248539
        0x72900b
        -0x1bda3d42
        -0x1f68c44f
        -0x76344e1f
        0x39015146
        0x5f803e9e
        -0x23137dd8
        0x3db75383
        0x5af7c6b6
        0x73baa7bc
        -0x15a84fbd
        -0x63750d8b
    .end array-data
.end method

.method private static varargs AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x1

    const-string v1, "v2"

    .line 75
    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 76
    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1rSDK;->AFInAppEventType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p2, p0}, Lcom/appsflyer/internal/AFb1rSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method private static AFKeystoreWrapper(ZLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 79
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appsflyer.com"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x2

    if-eq v1, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 81
    :cond_1
    sget v1, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    rem-int/2addr v1, v4

    const/4 v1, 0x1

    :goto_1
    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    const/4 p0, 0x1

    :goto_2
    if-eqz p0, :cond_3

    .line 82
    sget-object p0, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventType:Ljava/lang/String;

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/appsflyer/internal/AFc1xSDK;->AFKeystoreWrapper:Ljava/lang/String;

    :goto_3
    new-array v5, v4, [Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 83
    sget v1, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v6, v1, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    rem-int/2addr v1, v4

    goto :goto_4

    :cond_4
    const-string v0, "appsflyersdk.com"

    :goto_4
    aput-object v0, v5, v2

    aput-object p1, v5, v3

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    rem-int/2addr p1, v4

    const/16 v0, 0xf

    if-eqz p1, :cond_5

    const/16 p1, 0x63

    goto :goto_5

    :cond_5
    const/16 p1, 0xf

    :goto_5
    if-ne p1, v0, :cond_6

    return-object p0

    :cond_6
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private valueOf(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;Z)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appsflyer/internal/AFb1wSDK;",
            "Lcom/appsflyer/internal/AFc1rSDK<",
            "TT;>;Z)",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "TT;>;"
        }
    .end annotation

    .line 16
    iput-boolean p3, p1, Lcom/appsflyer/internal/AFb1wSDK;->values:Z

    .line 17
    iget-object p3, p0, Lcom/appsflyer/internal/AFc1xSDK;->afErrorLog:Lcom/appsflyer/internal/AFb1xSDK;

    .line 18
    new-instance v0, Lcom/appsflyer/internal/AFb1aSDK;

    iget-object p3, p3, Lcom/appsflyer/internal/AFb1xSDK;->values:Lcom/appsflyer/internal/AFc1vSDK;

    invoke-direct {v0, p1, p3, p2}, Lcom/appsflyer/internal/AFb1aSDK;-><init>(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1vSDK;Lcom/appsflyer/internal/AFc1rSDK;)V

    sget p1, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method private valueOf()Z
    .locals 3

    .line 15
    sget v0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1xSDK;->afInfoLog:Lcom/appsflyer/AppsFlyerProperties;

    const-string v1, "http_cache"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_0

    const/16 v0, 0x15

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_0
    if-eq v0, v1, :cond_3

    sget v0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x12

    if-eqz v0, :cond_1

    const/16 v2, 0x12

    :cond_1
    const/4 v0, 0x0

    if-eq v2, v1, :cond_2

    return v0

    :cond_2
    const/16 v1, 0x26

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    sget v0, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    rem-int/lit8 v0, v0, 0x2

    return v2
.end method

.method private values(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/appsflyer/internal/AFb1wSDK;",
            "Lcom/appsflyer/internal/AFc1rSDK<",
            "TT;>;)",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1xSDK;->valueOf()Z

    move-result v0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFc1xSDK;->valueOf(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;Z)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1xSDK;->valueOf()Z

    move-result v0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFc1xSDK;->valueOf(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;Z)Lcom/appsflyer/internal/AFb1aSDK;

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method private static values([II)Ljava/lang/String;
    .locals 12

    .line 6
    sget-object v0, Lcom/appsflyer/internal/AFf1xSDK;->AFKeystoreWrapper:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [C

    .line 7
    array-length v2, p0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [C

    .line 8
    sget-object v4, Lcom/appsflyer/internal/AFc1xSDK;->afRDLog:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    .line 9
    sput v5, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventType:I

    :goto_0
    sget v6, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventType:I

    array-length v7, p0

    if-ge v6, v7, :cond_1

    .line 10
    aget v7, p0, v6

    const/16 v8, 0x10

    shr-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    .line 11
    aget v7, p0, v6

    int-to-char v7, v7

    aput-char v7, v1, v3

    add-int/lit8 v7, v6, 0x1

    .line 12
    aget v7, p0, v7

    shr-int/2addr v7, v8

    int-to-char v7, v7

    const/4 v9, 0x2

    aput-char v7, v1, v9

    add-int/lit8 v6, v6, 0x1

    .line 13
    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v7, 0x3

    aput-char v6, v1, v7

    aget-char v6, v1, v5

    shl-int/2addr v6, v8

    aget-char v10, v1, v3

    add-int/2addr v6, v10

    .line 14
    sput v6, Lcom/appsflyer/internal/AFf1xSDK;->values:I

    aget-char v6, v1, v9

    shl-int/2addr v6, v8

    aget-char v10, v1, v7

    add-int/2addr v6, v10

    .line 15
    sput v6, Lcom/appsflyer/internal/AFf1xSDK;->valueOf:I

    .line 16
    invoke-static {v4}, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventType([I)V

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_0

    .line 17
    sget v10, Lcom/appsflyer/internal/AFf1xSDK;->values:I

    aget v11, v4, v6

    xor-int/2addr v10, v11

    .line 18
    sput v10, Lcom/appsflyer/internal/AFf1xSDK;->values:I

    invoke-static {v10}, Lcom/appsflyer/internal/AFf1xSDK;->AFKeystoreWrapper(I)I

    move-result v10

    sget v11, Lcom/appsflyer/internal/AFf1xSDK;->valueOf:I

    xor-int/2addr v10, v11

    sput v10, Lcom/appsflyer/internal/AFf1xSDK;->valueOf:I

    .line 19
    sget v10, Lcom/appsflyer/internal/AFf1xSDK;->values:I

    .line 20
    sget v11, Lcom/appsflyer/internal/AFf1xSDK;->valueOf:I

    sput v11, Lcom/appsflyer/internal/AFf1xSDK;->values:I

    .line 21
    sput v10, Lcom/appsflyer/internal/AFf1xSDK;->valueOf:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 22
    :cond_0
    sget v6, Lcom/appsflyer/internal/AFf1xSDK;->values:I

    .line 23
    sget v10, Lcom/appsflyer/internal/AFf1xSDK;->valueOf:I

    sput v10, Lcom/appsflyer/internal/AFf1xSDK;->values:I

    .line 24
    sput v6, Lcom/appsflyer/internal/AFf1xSDK;->valueOf:I

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/appsflyer/internal/AFf1xSDK;->valueOf:I

    .line 25
    sget v6, Lcom/appsflyer/internal/AFf1xSDK;->values:I

    const/16 v8, 0x11

    aget v8, v4, v8

    xor-int/2addr v6, v8

    sput v6, Lcom/appsflyer/internal/AFf1xSDK;->values:I

    .line 26
    sget v6, Lcom/appsflyer/internal/AFf1xSDK;->valueOf:I

    .line 27
    sget v6, Lcom/appsflyer/internal/AFf1xSDK;->values:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v5

    int-to-char v6, v6

    aput-char v6, v1, v3

    .line 28
    sget v6, Lcom/appsflyer/internal/AFf1xSDK;->valueOf:I

    ushr-int/lit8 v8, v6, 0x10

    int-to-char v8, v8

    aput-char v8, v1, v9

    int-to-char v6, v6

    aput-char v6, v1, v7

    .line 29
    invoke-static {v4}, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventType([I)V

    .line 30
    sget v6, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventType:I

    shl-int/lit8 v8, v6, 0x1

    aget-char v10, v1, v5

    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v3

    aget-char v10, v1, v3

    .line 31
    aput-char v10, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v9

    aget-char v9, v1, v9

    .line 32
    aput-char v9, v2, v8

    shl-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v7

    aget-char v7, v1, v7

    .line 33
    aput-char v7, v2, v8

    add-int/lit8 v6, v6, 0x2

    .line 34
    sput v6, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventType:I

    goto/16 :goto_0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v5, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final AFInAppEventParameterName(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "https://%sviap.%s/api/v1/android/validate_purchase?app_id="

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger:Lcom/appsflyer/internal/AFb1cSDK;

    .line 4
    iget-object v2, v2, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 5
    iget-object v2, v2, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v5

    aput-object p1, v0, v4

    const p1, 0xf5c0

    .line 8
    invoke-static {v4, v4}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    add-int/2addr p2, p1

    int-to-char p1, p2

    invoke-static {v4, v4}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x3e

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    invoke-static {p1, p2, v2}, Lcom/appsflyer/internal/AFa1ySDK;->values(CII)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string p2, "AFInAppEventParameterName"

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/Map;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance p1, Lcom/appsflyer/internal/AFb1wSDK;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x1

    const-string v9, "POST"

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 11
    new-instance p2, Lcom/appsflyer/internal/AFc1uSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFc1uSDK;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFc1xSDK;->values(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    add-int/lit8 p2, p2, 0x33

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    rem-int/2addr p2, v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    throw p2

    :cond_0
    throw p1
.end method

.method public final AFInAppEventType(Lcom/appsflyer/internal/AFa1tSDK;Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1tSDK;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const v3, 0xf5c0

    .line 1
    invoke-static {p2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {p2, v5, v5}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    cmpl-float v4, v4, v5

    add-int/lit8 v4, v4, 0x3e

    invoke-static {p2, p2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1f

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFa1ySDK;->values(CII)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v4, "AFInAppEventParameterName"

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Lcom/appsflyer/internal/AFa1tSDK;

    aput-object v6, v5, p2

    const-class p2, Ljava/lang/String;

    aput-object p2, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance p2, Lcom/appsflyer/internal/AFb1wSDK;

    .line 3
    iget-object v2, p1, Lcom/appsflyer/internal/AFa1tSDK;->afInfoLog:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 5
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->valueOf()Z

    move-result v6

    const-string v4, "POST"

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 6
    new-instance p1, Lcom/appsflyer/internal/AFc1uSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFc1uSDK;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFc1xSDK;->values(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    add-int/lit8 p2, p2, 0x79

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    rem-int/2addr p2, v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    throw p2

    :cond_0
    throw p1
.end method

.method public final AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appsflyer/internal/AFc1xSDK;->valueOf:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 25
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger:Lcom/appsflyer/internal/AFb1cSDK;

    .line 27
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 28
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?devkey="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&device_id="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger:Lcom/appsflyer/internal/AFb1cSDK;

    .line 31
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 32
    iget-object p1, p1, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 33
    iget-object p1, p1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 34
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1uSDK;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 36
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string p1, "Connection"

    const-string p2, "close"

    .line 37
    invoke-interface {v7, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance p1, Lcom/appsflyer/internal/AFb1wSDK;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-string v6, "GET"

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    const/16 p2, 0x2710

    .line 39
    iput p2, p1, Lcom/appsflyer/internal/AFb1wSDK;->AFLogger:I

    .line 40
    new-instance p2, Lcom/appsflyer/internal/AFc1zSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFc1zSDK;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFc1xSDK;->values(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    add-int/lit8 p2, p2, 0x23

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    rem-int/2addr p2, v2

    return-object p1
.end method

.method public final AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v3, "GET"

    .line 58
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appsflyer/internal/AFc1xSDK;->values:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 60
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object v2

    const-string v4, "build_number"

    .line 63
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 64
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 65
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v9, "Af-UUID"

    invoke-interface {v5, v9, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Af-Meta-Sdk-Ver"

    .line 66
    invoke-interface {v5, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "counter"

    .line 67
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v9, "Af-Meta-Counter"

    invoke-interface {v5, v9, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "model"

    .line 68
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v9, "Af-Meta-Model"

    invoke-interface {v5, v9, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "platformextension"

    .line 69
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v9, "Af-Meta-Platform"

    invoke-interface {v5, v9, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "sdk"

    .line 70
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "Af-Meta-System-Version"

    invoke-interface {v5, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x6

    new-array p3, p3, [I

    .line 71
    fill-array-data p3, :array_0

    const-string v2, ""

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-static {p3, v2}, Lcom/appsflyer/internal/AFc1xSDK;->values([II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    aput-object p1, v2, v6

    const/4 p1, 0x3

    aput-object p2, v2, p1

    const/4 p1, 0x4

    aput-object v4, v2, p1

    invoke-static {p4, v0, v2}, Lcom/appsflyer/internal/AFc1xSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance p1, Lcom/appsflyer/internal/AFb1wSDK;

    const/4 v2, 0x0

    const/4 p2, 0x0

    move-object v0, p1

    move-object v4, v5

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 73
    new-instance p2, Lcom/appsflyer/internal/AFc1tSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFc1tSDK;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFc1xSDK;->values(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    add-int/lit8 p2, p2, 0xf

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    rem-int/2addr p2, v6

    const/16 p3, 0x37

    if-eqz p2, :cond_0

    const/16 p2, 0x37

    goto :goto_0

    :cond_0
    const/16 p2, 0x9

    :goto_0
    if-eq p2, p3, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :array_0
    .array-data 4
        -0xe62a9fe
        -0x22acd88d
        0x7ae82f42
        0x281b0849
        -0x49a3b7a3
        0x4dc1087b    # 4.048198E8f
    .end array-data
.end method

.method public final AFKeystoreWrapper(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ttl"

    const-string v2, "-1"

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uuid"

    .line 44
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 45
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName()Ljava/util/Map;

    move-result-object p2

    const-string v1, "meta"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 47
    sget v2, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    rem-int/2addr v2, v3

    const-string v2, "brand_domain"

    .line 48
    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget p3, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    add-int/lit8 p3, p3, 0x27

    rem-int/lit16 v2, p3, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    rem-int/2addr p3, v3

    .line 50
    :cond_1
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1lSDK;->AFInAppEventType(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v7, "POST"

    .line 51
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 52
    fill-array-data v0, :array_0

    invoke-static {v1, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0xc

    invoke-static {v0, v2}, Lcom/appsflyer/internal/AFc1xSDK;->values([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    aput-object v7, v2, v1

    aput-object p3, v2, p2

    invoke-static {p5, p4, v2}, Lcom/appsflyer/internal/AFc1xSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v8, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance p4, Lcom/appsflyer/internal/AFb1wSDK;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/appsflyer/internal/AFc1xSDK;->values:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    .line 54
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, p2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p1, "UTF-8"

    .line 56
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const/4 v9, 0x0

    move-object v4, p4

    invoke-direct/range {v4 .. v9}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 57
    new-instance p1, Lcom/appsflyer/internal/AFc1uSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFc1uSDK;-><init>()V

    invoke-direct {p0, p4, p1, p2}, Lcom/appsflyer/internal/AFc1xSDK;->valueOf(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;Z)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        -0xe62a9fe
        -0x22acd88d
        0x7ae82f42
        0x281b0849
        -0x49a3b7a3
        0x4dc1087b    # 4.048198E8f
    .end array-data
.end method

.method public final AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appsflyer/internal/AFc1xSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger:Lcom/appsflyer/internal/AFb1cSDK;

    .line 16
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 17
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 21
    new-instance p1, Lcom/appsflyer/internal/AFb1wSDK;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x0

    const-string v9, "POST"

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 23
    new-instance v0, Lcom/appsflyer/internal/AFc1uSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFc1uSDK;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFc1xSDK;->values(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    rem-int/2addr v0, v2

    const/16 v1, 0x54

    if-eqz v0, :cond_0

    const/16 v0, 0x54

    goto :goto_0

    :cond_0
    const/16 v0, 0x35

    :goto_0
    if-eq v0, v1, :cond_1

    return-object p1

    :cond_1
    const/16 v0, 0x8

    :try_start_0
    div-int/2addr v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final AFKeystoreWrapper(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "https://%sars.%s/api/v2/android/validate_subscription?app_id="

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger:Lcom/appsflyer/internal/AFb1cSDK;

    .line 4
    iget-object v2, v2, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 5
    iget-object v2, v2, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v5

    aput-object p1, v0, v4

    const p1, 0xf5c0

    .line 8
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    add-int/2addr p2, p1

    int-to-char p1, p2

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    add-int/lit8 p2, p2, 0x3e

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    invoke-static {p1, p2, v2}, Lcom/appsflyer/internal/AFa1ySDK;->values(CII)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-string p2, "AFInAppEventParameterName"

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/Map;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance p1, Lcom/appsflyer/internal/AFb1wSDK;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x1

    const-string v9, "POST"

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 11
    new-instance p2, Lcom/appsflyer/internal/AFc1uSDK;

    invoke-direct {p2}, Lcom/appsflyer/internal/AFc1uSDK;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFc1xSDK;->values(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    add-int/lit8 p2, p2, 0x51

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    rem-int/2addr p2, v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    throw p2

    :cond_0
    throw p1
.end method

.method public final valueOf(Lcom/appsflyer/internal/AFe1vSDK;)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1vSDK;",
            ")",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->values()[B

    move-result-object v2

    .line 6
    new-instance v6, Lcom/appsflyer/internal/AFb1wSDK;

    .line 7
    iget-object v1, p1, Lcom/appsflyer/internal/AFa1tSDK;->afInfoLog:Ljava/lang/String;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x1

    const-string v3, "POST"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    .line 9
    new-instance p1, Lcom/appsflyer/internal/AFc1uSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFc1uSDK;-><init>()V

    invoke-direct {p0, v6, p1}, Lcom/appsflyer/internal/AFc1xSDK;->values(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method public final valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v6, Lcom/appsflyer/internal/AFb1wSDK;

    const/4 v2, 0x0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const-string v3, "GET"

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Z)V

    const/16 p1, 0x2710

    .line 12
    iput p1, v6, Lcom/appsflyer/internal/AFb1wSDK;->AFLogger:I

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, v6, Lcom/appsflyer/internal/AFb1wSDK;->AFKeystoreWrapper:Z

    .line 14
    new-instance p1, Lcom/appsflyer/internal/AFc1uSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFc1uSDK;-><init>()V

    invoke-direct {p0, v6, p1}, Lcom/appsflyer/internal/AFc1xSDK;->values(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5b

    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x5b

    :goto_0
    if-ne v0, v1, :cond_1

    return-object p1

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

.method public final valueOf(ZLjava/lang/String;I)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "I)",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "Lcom/appsflyer/internal/AFb1sSDK;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFc1xSDK;->AFKeystoreWrapper(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/appsflyer/internal/AFb1wSDK;

    const-string p3, "GET"

    invoke-direct {p2, p1, p3}, Lcom/appsflyer/internal/AFb1wSDK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x5dc

    .line 3
    iput p1, p2, Lcom/appsflyer/internal/AFb1wSDK;->AFLogger:I

    .line 4
    new-instance p1, Lcom/appsflyer/internal/AFc1sSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFc1sSDK;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/appsflyer/internal/AFc1xSDK;->values(Lcom/appsflyer/internal/AFb1wSDK;Lcom/appsflyer/internal/AFc1rSDK;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    sget p2, Lcom/appsflyer/internal/AFc1xSDK;->AFLogger$LogLevel:I

    add-int/lit8 p2, p2, 0x39

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/appsflyer/internal/AFc1xSDK;->afDebugLog:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1
.end method
