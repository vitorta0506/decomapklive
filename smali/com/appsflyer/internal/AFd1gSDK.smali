.class public final Lcom/appsflyer/internal/AFd1gSDK;
.super Lcom/appsflyer/internal/AFc1nSDK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFc1nSDK<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final afDebugLog:Lcom/appsflyer/internal/AFc1pSDK;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appsflyer/internal/AFc1pSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final afErrorLog:Lcom/appsflyer/internal/AFd1oSDK;

.field private final afInfoLog:Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1wSDK;Lcom/appsflyer/internal/AFd1oSDK;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFc1lSDK;->afInfoLog:Lcom/appsflyer/internal/AFc1lSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFc1lSDK;

    sget-object v2, Lcom/appsflyer/internal/AFc1lSDK;->values:Lcom/appsflyer/internal/AFc1lSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GCD-CHECK"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFc1nSDK;-><init>(Lcom/appsflyer/internal/AFc1lSDK;[Lcom/appsflyer/internal/AFc1lSDK;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFc1nSDK;->afInfoLog()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFd1gSDK;->afInfoLog:Ljava/lang/Throwable;

    .line 3
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1pSDK;

    .line 4
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1gSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1pSDK;

    .line 5
    iput-object p2, p0, Lcom/appsflyer/internal/AFd1gSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1oSDK;

    return-void
.end method

.method private afRDLog()Ljava/util/Map;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
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

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1gSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1oSDK;

    const-string v1, "attributionId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 2
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/appsflyer/internal/AFc1zSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[GCD] Failed to parse GCD response: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method


# virtual methods
.method public final AFInAppEventType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final AFKeystoreWrapper()Lcom/appsflyer/internal/AFc1qSDK;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "is_first_launch"

    .line 1
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1gSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1oSDK;

    const-string v2, "appsFlyerCount"

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventType(Ljava/lang/String;)I

    move-result v1

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[GCD-A01] Loading conversion data. Counter: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1gSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1oSDK;

    const-string v2, "appsflyerConversionDataCacheExpiration"

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFd1oSDK;->values(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    const-wide v3, 0x134fd9000L

    cmp-long v1, v7, v3

    if-lez v1, :cond_0

    const-string v1, "[GCD-E02] Cached conversion data expired"

    .line 5
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1gSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1oSDK;

    const/4 v3, 0x1

    const-string v4, "sixtyDayConversionData"

    invoke-interface {v1, v4, v3}, Lcom/appsflyer/internal/AFd1oSDK;->values(Ljava/lang/String;Z)V

    .line 7
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1gSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1oSDK;

    const/4 v3, 0x0

    const-string v4, "attributionId"

    invoke-interface {v1, v4, v3}, Lcom/appsflyer/internal/AFd1oSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1gSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1oSDK;

    invoke-interface {v1, v2, v5, v6}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1gSDK;->afRDLog()Ljava/util/Map;

    move-result-object v1

    const-string v2, "[GCD] Error executing conversion data callback: "

    if-eqz v1, :cond_2

    .line 10
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 11
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    invoke-static {v1}, Lcom/appsflyer/internal/AFd1hSDK;->AFInAppEventType(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    sget-object v0, Lcom/appsflyer/internal/AFc1qSDK;->valueOf:Lcom/appsflyer/internal/AFc1qSDK;

    return-object v0

    .line 15
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1gSDK;->afInfoLog:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1gSDK;->afInfoLog:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFd1hSDK;->values(Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/appsflyer/internal/AFc1qSDK;->valueOf:Lcom/appsflyer/internal/AFc1qSDK;

    return-object v0

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1gSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1pSDK;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1pSDK;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch status code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1gSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1pSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1pSDK;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFd1hSDK;->values(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/appsflyer/internal/AFc1qSDK;->valueOf:Lcom/appsflyer/internal/AFc1qSDK;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_4
    sget-object v0, Lcom/appsflyer/internal/AFc1qSDK;->values:Lcom/appsflyer/internal/AFc1qSDK;

    return-object v0
.end method

.method public final values()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method
