.class public abstract Lcom/appsflyer/internal/AFc1hSDK;
.super Lcom/appsflyer/internal/AFc1nSDK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/appsflyer/internal/AFc1nSDK<",
        "Lcom/appsflyer/internal/AFc1pSDK<",
        "TResult;>;>;"
    }
.end annotation


# instance fields
.field protected final AFLogger:Lcom/appsflyer/internal/AFc1xSDK;

.field public afDebugLog:Lcom/appsflyer/internal/AFc1pSDK;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appsflyer/internal/AFc1pSDK<",
            "TResult;>;"
        }
    .end annotation
.end field

.field public final afErrorLog:Lcom/appsflyer/internal/AFd1lSDK;

.field protected final afInfoLog:Lcom/appsflyer/internal/AFb1pSDK;

.field private afRDLog:Lcom/appsflyer/internal/AFa1lSDK;

.field private init:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/appsflyer/internal/AFc1lSDK;[Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1xSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFb1pSDK;Lcom/appsflyer/internal/AFa1lSDK;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/appsflyer/internal/AFc1lSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/appsflyer/internal/AFc1lSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/appsflyer/internal/AFc1xSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/appsflyer/internal/AFd1lSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/appsflyer/internal/AFb1pSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/appsflyer/internal/AFa1lSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p7}, Lcom/appsflyer/internal/AFc1nSDK;-><init>(Lcom/appsflyer/internal/AFc1lSDK;[Lcom/appsflyer/internal/AFc1lSDK;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/appsflyer/internal/AFc1hSDK;->AFLogger:Lcom/appsflyer/internal/AFc1xSDK;

    .line 3
    iput-object p4, p0, Lcom/appsflyer/internal/AFc1hSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1lSDK;

    .line 4
    iput-object p5, p0, Lcom/appsflyer/internal/AFc1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1pSDK;

    .line 5
    iput-object p6, p0, Lcom/appsflyer/internal/AFc1hSDK;->afRDLog:Lcom/appsflyer/internal/AFa1lSDK;

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1lSDK;[Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1ySDK;Ljava/lang/String;)V
    .locals 8
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

    .line 6
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFc1xSDK;

    move-result-object v3

    .line 7
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v4

    .line 8
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->afWarnLog()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v5

    .line 9
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->init()Lcom/appsflyer/internal/AFa1lSDK;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p4

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/appsflyer/internal/AFc1hSDK;-><init>(Lcom/appsflyer/internal/AFc1lSDK;[Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1xSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFb1pSDK;Lcom/appsflyer/internal/AFa1lSDK;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFc1lSDK;[Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1ySDK;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
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
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFc1xSDK;

    move-result-object v3

    .line 12
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v4

    .line 13
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->afWarnLog()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v5

    .line 14
    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->init()Lcom/appsflyer/internal/AFa1lSDK;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p4

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/appsflyer/internal/AFc1hSDK;-><init>(Lcom/appsflyer/internal/AFc1lSDK;[Lcom/appsflyer/internal/AFc1lSDK;Lcom/appsflyer/internal/AFc1xSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFb1pSDK;Lcom/appsflyer/internal/AFa1lSDK;Ljava/lang/String;)V

    .line 16
    iput-object p5, p0, Lcom/appsflyer/internal/AFc1hSDK;->init:Ljava/lang/String;

    return-void
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1wSDK;)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1hSDK;->init:Ljava/lang/String;

    .line 32
    new-instance v1, Lcom/appsflyer/internal/AFa1fSDK;

    .line 33
    iget-object v2, p1, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventType:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventType()[B

    move-result-object p1

    .line 35
    iget-object v3, p0, Lcom/appsflyer/internal/AFc1nSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1lSDK;

    const-string v4, "6.9.0"

    .line 36
    invoke-direct {v1, v2, p1, v4, v3}, Lcom/appsflyer/internal/AFa1fSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/appsflyer/internal/AFc1lSDK;)V

    .line 37
    iget-object p1, p0, Lcom/appsflyer/internal/AFc1hSDK;->afRDLog:Lcom/appsflyer/internal/AFa1lSDK;

    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/AFa1lSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1fSDK;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1hSDK;->init:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 38
    iget-object p1, p0, Lcom/appsflyer/internal/AFc1hSDK;->afRDLog:Lcom/appsflyer/internal/AFa1lSDK;

    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1lSDK;->valueOf(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public AFInAppEventParameterName()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1nSDK;->values:Lcom/appsflyer/internal/AFc1qSDK;

    .line 2
    sget-object v1, Lcom/appsflyer/internal/AFc1qSDK;->valueOf:Lcom/appsflyer/internal/AFc1qSDK;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1hSDK;->init:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1hSDK;->afRDLog:Lcom/appsflyer/internal/AFa1lSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFa1lSDK;->valueOf(Ljava/lang/String;)Z

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1hSDK;->AFInAppEventType()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1hSDK;->init:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1hSDK;->afRDLog:Lcom/appsflyer/internal/AFa1lSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFa1lSDK;->valueOf(Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public AFInAppEventType()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1nSDK;->afInfoLog()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/appsflyer/internal/AFc1jSDK;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1nSDK;->values:Lcom/appsflyer/internal/AFc1qSDK;

    .line 3
    sget-object v2, Lcom/appsflyer/internal/AFc1qSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1qSDK;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1nSDK;->afInfoLog()Ljava/lang/Throwable;

    move-result-object v0

    .line 5
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    instance-of v0, v0, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    if-nez v0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method protected abstract AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFb1aSDK<",
            "TResult;>;"
        }
    .end annotation
.end method

.method public AFKeystoreWrapper()Lcom/appsflyer/internal/AFc1qSDK;
    .locals 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1hSDK;->getLevel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFc1hSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1lSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1lSDK;->values()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1hSDK;->afErrorLog()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget v1, Lcom/appsflyer/attribution/RequestError;->STOP_TRACKING:I

    sget-object v2, Lcom/appsflyer/internal/AFb1fSDK;->valueOf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 4
    :cond_0
    new-instance v0, Lcom/appsflyer/internal/AFc1jSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFc1jSDK;-><init>()V

    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1hSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1lSDK;

    .line 6
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFc1hSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1hSDK;->afRDLog()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, v0, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1wSDK;

    .line 11
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFc1hSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1wSDK;)V

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFc1pSDK;

    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/appsflyer/internal/AFc1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFc1pSDK;

    .line 14
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1pSDK;->getBody()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/appsflyer/internal/AFc1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFb1pSDK;

    .line 16
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1wSDK;

    .line 17
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1wSDK;->AFInAppEventType:Ljava/lang/String;

    .line 18
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1pSDK;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v0, v4, v2}, Lcom/appsflyer/internal/AFb1pSDK;->values(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1hSDK;->afErrorLog()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1pSDK;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    invoke-interface {v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onSuccess()V

    goto :goto_0

    .line 22
    :cond_4
    sget v2, Lcom/appsflyer/attribution/RequestError;->RESPONSE_CODE_FAILURE:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/AFb1fSDK;->values:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1pSDK;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-interface {v0, v2, v3}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 25
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFc1pSDK;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    sget-object v0, Lcom/appsflyer/internal/AFc1qSDK;->valueOf:Lcom/appsflyer/internal/AFc1qSDK;

    return-object v0

    .line 27
    :cond_6
    sget-object v0, Lcom/appsflyer/internal/AFc1qSDK;->values:Lcom/appsflyer/internal/AFc1qSDK;

    return-object v0

    .line 28
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1hSDK;->afErrorLog()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 29
    sget v1, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v2, Lcom/appsflyer/internal/AFb1fSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 30
    :cond_8
    new-instance v0, Lcom/appsflyer/internal/AFc1kSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFc1kSDK;-><init>()V

    throw v0
.end method

.method protected abstract afErrorLog()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method protected abstract afRDLog()Z
.end method

.method protected getLevel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final valueOf()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/appsflyer/internal/AFc1nSDK;->valueOf()V

    .line 2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1hSDK;->afRDLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1hSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1lSDK;

    .line 4
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFc1hSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFb1aSDK;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1aSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1wSDK;

    .line 8
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFc1hSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFb1wSDK;)V

    :cond_0
    return-void
.end method

.method public final valueOf(Ljava/lang/Throwable;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while sending request to server: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 10
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFc1hSDK;->afErrorLog()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 12
    sget v1, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public values()J
    .locals 2

    const-wide/32 v0, 0xea60

    return-wide v0
.end method
