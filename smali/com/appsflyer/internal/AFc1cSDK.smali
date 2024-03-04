.class public final Lcom/appsflyer/internal/AFc1cSDK;
.super Lcom/appsflyer/internal/AFc1nSDK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFc1nSDK<",
        "Lcom/appsflyer/deeplink/DeepLinkResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final afDebugLog:Lcom/appsflyer/internal/AFb1oSDK;

.field private afInfoLog:Lcom/appsflyer/deeplink/DeepLinkResult;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFb1oSDK;)V
    .locals 4
    .param p1    # Lcom/appsflyer/internal/AFb1oSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFc1lSDK;->afErrorLog:Lcom/appsflyer/internal/AFc1lSDK;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appsflyer/internal/AFc1lSDK;

    sget-object v2, Lcom/appsflyer/internal/AFc1lSDK;->values:Lcom/appsflyer/internal/AFc1lSDK;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "DdlSdk"

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFc1nSDK;-><init>(Lcom/appsflyer/internal/AFc1lSDK;[Lcom/appsflyer/internal/AFc1lSDK;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1cSDK;->afDebugLog:Lcom/appsflyer/internal/AFb1oSDK;

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final AFKeystoreWrapper()Lcom/appsflyer/internal/AFc1qSDK;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1cSDK;->afDebugLog:Lcom/appsflyer/internal/AFb1oSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1oSDK;->afRDLog()Lcom/appsflyer/deeplink/DeepLinkResult;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFc1cSDK;->afInfoLog:Lcom/appsflyer/deeplink/DeepLinkResult;

    .line 2
    sget-object v1, Lcom/appsflyer/internal/AFc1cSDK$5;->AFInAppEventParameterName:[I

    invoke-virtual {v0}, Lcom/appsflyer/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1cSDK;->afInfoLog:Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-virtual {v0}, Lcom/appsflyer/deeplink/DeepLinkResult;->getError()Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/appsflyer/internal/AFc1qSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1qSDK;

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFc1qSDK;->values:Lcom/appsflyer/internal/AFc1qSDK;

    return-object v0

    .line 6
    :cond_1
    sget-object v0, Lcom/appsflyer/internal/AFc1qSDK;->valueOf:Lcom/appsflyer/internal/AFc1qSDK;

    return-object v0
.end method

.method public final values()J
    .locals 2

    const-wide/32 v0, 0x15f90

    return-wide v0
.end method
