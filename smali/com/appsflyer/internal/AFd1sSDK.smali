.class public final Lcom/appsflyer/internal/AFd1sSDK;
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
.field private final afRDLog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/appsflyer/internal/AFc1ySDK;)V
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFc1ySDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFc1ySDK;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFc1lSDK;->onAppOpenAttributionNative:Lcom/appsflyer/internal/AFc1lSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFc1lSDK;

    sget-object v2, Lcom/appsflyer/internal/AFc1lSDK;->values:Lcom/appsflyer/internal/AFc1lSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-direct {p0, v0, v1, p2, v2}, Lcom/appsflyer/internal/AFc1hSDK;-><init>(Lcom/appsflyer/internal/AFc1lSDK;[Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1ySDK;Ljava/lang/String;)V

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/appsflyer/internal/AFd1sSDK;->afRDLog:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected final AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;
    .locals 1
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

    iget-object p1, p0, Lcom/appsflyer/internal/AFc1hSDK;->AFLogger:Lcom/appsflyer/internal/AFc1xSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFd1sSDK;->afRDLog:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFc1xSDK;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object p1

    return-object p1
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
