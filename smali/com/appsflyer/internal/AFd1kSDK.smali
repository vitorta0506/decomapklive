.class public final Lcom/appsflyer/internal/AFd1kSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static AFKeystoreWrapper:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final valueOf:Lcom/appsflyer/internal/AFd1oSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://%sregister.%s/api/v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFd1kSDK;->AFKeystoreWrapper:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1kSDK;->valueOf:Lcom/appsflyer/internal/AFd1oSDK;

    return-void
.end method

.method public static AFInAppEventParameterName(Landroid/content/Context;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "com.google.firebase.messaging.FirebaseMessagingService"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.firebase.MESSAGING_EVENT"

    const/4 v3, 0x0

    const-class v4, Lcom/appsflyer/FirebaseMessagingServiceListener;

    invoke-direct {v0, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-static {p0, v0}, Lcom/appsflyer/internal/AFb1wSDK;->values(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    const-string v0, "An error occurred while trying to verify manifest declarations: "

    .line 5
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    :cond_1
    return v1
.end method

.method public static AFInAppEventType(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/appsflyer/internal/AFd1xSDK;

    invoke-direct {v1, p0, v0}, Lcom/appsflyer/internal/AFd1xSDK;-><init>(Ljava/lang/String;Lcom/appsflyer/internal/AFc1ySDK;)V

    .line 3
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1ySDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object p0

    .line 4
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK;->valueOf:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/appsflyer/internal/AFc1mSDK$5;

    invoke-direct {v2, p0, v1}, Lcom/appsflyer/internal/AFc1mSDK$5;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1nSDK;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static valueOf(Landroid/content/SharedPreferences;)Z
    .locals 2
    .param p0    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "sentRegisterRequestToAF"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final values()Lcom/appsflyer/internal/AFb1tSDK;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1kSDK;->valueOf:Lcom/appsflyer/internal/AFd1oSDK;

    const-string v1, "afUninstallToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v3, p0, Lcom/appsflyer/internal/AFd1kSDK;->valueOf:Lcom/appsflyer/internal/AFd1oSDK;

    const-string v4, "afUninstallToken_received_time"

    invoke-interface {v3, v4}, Lcom/appsflyer/internal/AFd1oSDK;->values(Ljava/lang/String;)J

    move-result-wide v3

    .line 3
    iget-object v5, p0, Lcom/appsflyer/internal/AFd1kSDK;->valueOf:Lcom/appsflyer/internal/AFd1oSDK;

    const-string v6, "afUninstallToken_queued"

    invoke-interface {v5, v6}, Lcom/appsflyer/internal/AFd1oSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result v5

    .line 4
    iget-object v7, p0, Lcom/appsflyer/internal/AFd1kSDK;->valueOf:Lcom/appsflyer/internal/AFd1oSDK;

    const/4 v8, 0x0

    invoke-interface {v7, v6, v8}, Lcom/appsflyer/internal/AFd1oSDK;->values(Ljava/lang/String;Z)V

    const-string v6, ","

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 6
    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v0, v0, v7

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-nez v9, :cond_1

    .line 8
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 10
    array-length v6, v1

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 11
    :try_start_0
    array-length v6, v1

    sub-int/2addr v6, v7

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    new-instance v1, Lcom/appsflyer/internal/AFb1tSDK;

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/appsflyer/internal/AFb1tSDK;-><init>(Ljava/lang/String;JZ)V

    return-object v1

    :cond_2
    return-object v2
.end method
