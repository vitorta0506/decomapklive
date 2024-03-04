.class final Lcom/appsflyer/internal/AFd1lSDK$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/internal/AFd1jSDK$AFa1wSDK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

.field private synthetic valueOf:J


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFd1lSDK;J)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    iput-wide p2, p0, Lcom/appsflyer/internal/AFd1lSDK$3;->valueOf:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/appsflyer/internal/AFd1lSDK;->values:Ljava/util/Map;

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 4
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->values:Ljava/util/Map;

    const-string v1, "signedData"

    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 7
    iget-object p1, p1, Lcom/appsflyer/internal/AFd1lSDK;->values:Ljava/util/Map;

    const-string v0, "signature"

    .line 8
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/appsflyer/internal/AFd1lSDK$3;->valueOf:J

    sub-long/2addr p1, v0

    .line 10
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 11
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->values:Ljava/util/Map;

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "ttr"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Successfully retrieved Google LVL data."

    .line 13
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-void
.end method

.method public final AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/appsflyer/internal/AFd1lSDK;->values:Ljava/util/Map;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1lSDK$3;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1lSDK;

    .line 5
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->values:Ljava/util/Map;

    const-string v2, "error"

    .line 6
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 7
    invoke-static {p1, p2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method
