.class final Lcom/appsflyer/internal/AFe1kSDK$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/AFe1kSDK;->AFKeystoreWrapper(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/AFe1kSDK;

.field private synthetic AFKeystoreWrapper:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFe1kSDK;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFInAppEventType:Lcom/appsflyer/internal/AFe1kSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFKeystoreWrapper:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFInAppEventType:Lcom/appsflyer/internal/AFe1kSDK;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/appsflyer/internal/AFe1iSDK;->AFLogger:J

    .line 3
    sget-object v1, Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;->valueOf:Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;

    iput-object v1, v0, Lcom/appsflyer/internal/AFe1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;

    .line 4
    new-instance v1, Lcom/appsflyer/internal/AFe1iSDK$5;

    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFe1iSDK$5;-><init>(Lcom/appsflyer/internal/AFe1iSDK;)V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFInAppEventType:Lcom/appsflyer/internal/AFe1kSDK;

    .line 6
    iget-object v1, v1, Lcom/appsflyer/internal/AFe1kSDK;->values:Landroid/content/pm/ProviderInfo;

    .line 7
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/transaction_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 8
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFKeystoreWrapper:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "app_id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFKeystoreWrapper:Landroid/content/Context;

    .line 10
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 11
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "response"

    if-eqz v0, :cond_1

    const-string v2, "transaction_id"

    .line 12
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v0, "[Preinstall]: Wrong column name"

    .line 13
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFInAppEventType:Lcom/appsflyer/internal/AFe1kSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v2, "FEATURE_NOT_SUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_0
    iget-object v3, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFInAppEventType:Lcom/appsflyer/internal/AFe1kSDK;

    iget-object v3, v3, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v4, "OK"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFInAppEventType:Lcom/appsflyer/internal/AFe1kSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v2, "referrer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "[Preinstall]: ContentProvider query failed, got null Cursor"

    .line 21
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFInAppEventType:Lcom/appsflyer/internal/AFe1kSDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v2, "SERVICE_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFInAppEventType:Lcom/appsflyer/internal/AFe1kSDK;

    iget-object v1, v0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventParameterName:Ljava/util/Map;

    iget-object v2, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFKeystoreWrapper:Landroid/content/Context;

    .line 24
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1kSDK;->values:Landroid/content/pm/ProviderInfo;

    .line 25
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventType(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "api_ver"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFInAppEventType:Lcom/appsflyer/internal/AFe1kSDK;

    iget-object v1, v0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventParameterName:Ljava/util/Map;

    iget-object v2, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFKeystoreWrapper:Landroid/content/Context;

    .line 27
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1kSDK;->values:Landroid/content/pm/ProviderInfo;

    .line 28
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "api_ver_name"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1kSDK$2;->AFInAppEventType:Lcom/appsflyer/internal/AFe1kSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1iSDK;->valueOf()V

    return-void
.end method
