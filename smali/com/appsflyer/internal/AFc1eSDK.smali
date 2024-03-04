.class public abstract Lcom/appsflyer/internal/AFc1eSDK;
.super Lcom/appsflyer/internal/AFc1hSDK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFc1hSDK<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final AFLogger$LogLevel:Ljava/util/Map;
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

.field private final afRDLog:Lcom/appsflyer/internal/AFb1cSDK;

.field private final afWarnLog:Lcom/appsflyer/internal/AFd1oSDK;

.field private final init:Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1lSDK;[Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1ySDK;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;)V
    .locals 2
    .param p1    # Lcom/appsflyer/internal/AFc1lSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/appsflyer/internal/AFc1lSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/appsflyer/internal/AFc1ySDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFc1lSDK;",
            "[",
            "Lcom/appsflyer/internal/AFc1lSDK;",
            "Lcom/appsflyer/internal/AFc1ySDK;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/internal/AFc1hSDK;-><init>(Lcom/appsflyer/internal/AFc1lSDK;[Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1ySDK;Ljava/lang/String;)V

    .line 2
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->valueOf()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1eSDK;->afRDLog:Lcom/appsflyer/internal/AFb1cSDK;

    .line 3
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->afRDLog()Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object p2

    iput-object p2, p0, Lcom/appsflyer/internal/AFc1eSDK;->afWarnLog:Lcom/appsflyer/internal/AFd1oSDK;

    .line 4
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 5
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    iget-object p3, p1, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 7
    iget-object p3, p3, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 8
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string p5, "app_id"

    .line 9
    invoke-interface {p4, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/appsflyer/internal/AFb1cSDK;->valueOf()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string p5, "cuid"

    .line 11
    invoke-interface {p4, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    iget-object p3, p1, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 13
    iget-object p3, p3, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 14
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    .line 15
    invoke-static {p3, p5}, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "app_version_name"

    .line 16
    invoke-interface {p4, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 18
    iget-object p5, p1, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 19
    iget-object p5, p5, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p5, v0}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/AFa1qSDK;

    move-result-object p5

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    .line 21
    iget-object p5, p5, Lcom/appsflyer/internal/AFa1qSDK;->valueOf:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p5, v0

    .line 22
    :goto_0
    invoke-static {p5}, Lcom/appsflyer/internal/AFb1nSDK;->values(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "advertising_id"

    .line 23
    invoke-interface {p3, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_2
    iget-object p5, p1, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 25
    iget-object p5, p5, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 26
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    invoke-static {p5}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1qSDK;

    move-result-object p5

    if-eqz p5, :cond_3

    .line 27
    iget-object p5, p5, Lcom/appsflyer/internal/AFa1qSDK;->valueOf:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p5, v0

    .line 28
    :goto_1
    invoke-static {p5}, Lcom/appsflyer/internal/AFb1nSDK;->values(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "oaid"

    .line 29
    invoke-interface {p3, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_4
    iget-object p5, p1, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 31
    iget-object p5, p5, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 32
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    invoke-static {p5}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1qSDK;

    move-result-object p5

    if-eqz p5, :cond_5

    .line 33
    iget-object v0, p5, Lcom/appsflyer/internal/AFa1qSDK;->valueOf:Ljava/lang/String;

    .line 34
    :cond_5
    invoke-static {v0}, Lcom/appsflyer/internal/AFb1nSDK;->values(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_6

    const-string p5, "amazon_aid"

    .line 35
    invoke-interface {p3, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_6
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p5

    const/4 v0, 0x0

    const-string v1, "deviceTrackingDisabled"

    .line 37
    invoke-virtual {p5, v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-nez p5, :cond_7

    .line 38
    iget-object p5, p0, Lcom/appsflyer/internal/AFc1hSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1lSDK;

    invoke-virtual {p5, p2}, Lcom/appsflyer/internal/AFd1lSDK;->values(Lcom/appsflyer/internal/AFd1oSDK;)Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-static {p2}, Lcom/appsflyer/internal/AFb1nSDK;->values(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_7

    const-string p5, "imei"

    .line 40
    invoke-interface {p3, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_7
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 42
    iget-object p1, p1, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 43
    iget-object p1, p1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 44
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/appsflyer/internal/AFb1uSDK;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "appsflyer_id"

    .line 45
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "os_version"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object p1, Lcom/appsflyer/internal/AFa1aSDK;->valueOf:Ljava/lang/String;

    const-string p2, "sdk_version"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device_data"

    .line 48
    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iput-object p4, p0, Lcom/appsflyer/internal/AFc1eSDK;->AFLogger$LogLevel:Ljava/util/Map;

    .line 50
    iput-object p6, p0, Lcom/appsflyer/internal/AFc1eSDK;->init:Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/appsflyer/internal/AFc1hSDK;->AFInAppEventParameterName()V

    .line 2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1nSDK;->afInfoLog()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1eSDK;->init:Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1pSDK;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1eSDK;->init:Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, v0}, Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;->onResponse(Lcom/appsflyer/internal/components/network/http/ResponseNetwork;)V

    :cond_1
    return-void
.end method

.method protected final afErrorLog()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final afRDLog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final init()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1eSDK;->AFLogger$LogLevel:Ljava/util/Map;

    return-object v0
.end method
