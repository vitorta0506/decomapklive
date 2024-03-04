.class public final Lcom/appsflyer/internal/AFb1bSDK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/internal/AFc1ySDK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFb1bSDK$AFa1xSDK;
    }
.end annotation


# instance fields
.field private AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

.field private AFInAppEventType:Ljava/util/concurrent/ExecutorService;

.field private AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;

.field private AFLogger:Lcom/appsflyer/internal/AFb1xSDK;

.field private AFVersionDeclaration:Lcom/appsflyer/internal/AFd1lSDK;

.field private afDebugLog:Lcom/appsflyer/PurchaseHandler;

.field private afErrorLog:Lcom/appsflyer/internal/AFd1dSDK;

.field private afInfoLog:Lcom/appsflyer/CreateOneLinkHttpTask;

.field private afRDLog:Lcom/appsflyer/internal/AFb1cSDK;

.field private afWarnLog:Lcom/appsflyer/internal/AFa1lSDK;

.field private getLevel:Lcom/appsflyer/internal/AFc1mSDK;

.field private init:Lcom/appsflyer/internal/AFe1fSDK;

.field private final valueOf:I

.field public final values:Lcom/appsflyer/internal/AFb1dSDK;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/appsflyer/internal/AFb1bSDK;->valueOf:I

    .line 3
    new-instance v0, Lcom/appsflyer/internal/AFb1dSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1dSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    return-void
.end method

.method private static synthetic AFInAppEventType(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventType(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method private declared-synchronized onInstallConversionDataLoadedNative()Lcom/appsflyer/internal/AFb1xSDK;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger:Lcom/appsflyer/internal/AFb1xSDK;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/appsflyer/internal/AFb1xSDK;

    .line 3
    new-instance v1, Lcom/appsflyer/internal/AFc1vSDK;

    iget v2, p0, Lcom/appsflyer/internal/AFb1bSDK;->valueOf:I

    invoke-direct {v1, v2}, Lcom/appsflyer/internal/AFc1vSDK;-><init>(I)V

    .line 4
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventType()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFb1xSDK;-><init>(Lcom/appsflyer/internal/AFc1vSDK;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger:Lcom/appsflyer/internal/AFb1xSDK;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger:Lcom/appsflyer/internal/AFb1xSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized AFInAppEventParameterName()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventParameterName:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFInAppEventType()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final AFKeystoreWrapper()Lcom/appsflyer/internal/AFc1xSDK;
    .locals 4

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFc1xSDK;

    .line 2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1bSDK;->onInstallConversionDataLoadedNative()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1bSDK;->valueOf()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/internal/AFc1xSDK;-><init>(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFb1cSDK;Lcom/appsflyer/AppsFlyerProperties;)V

    return-object v0
.end method

.method public final declared-synchronized AFLogger()Lcom/appsflyer/PurchaseHandler;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afDebugLog:Lcom/appsflyer/PurchaseHandler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/appsflyer/PurchaseHandler;

    invoke-direct {v0, p0}, Lcom/appsflyer/PurchaseHandler;-><init>(Lcom/appsflyer/internal/AFc1ySDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afDebugLog:Lcom/appsflyer/PurchaseHandler;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afDebugLog:Lcom/appsflyer/PurchaseHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFd1lSDK;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/appsflyer/internal/AFd1lSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1bSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFb1dSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFd1jSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFd1jSDK;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFd1lSDK;-><init>(Lcom/appsflyer/internal/AFb1dSDK;Lcom/appsflyer/internal/AFd1jSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFd1lSDK;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFd1lSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFVersionDeclaration()Lcom/appsflyer/internal/AFb1dSDK;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized afDebugLog()Lcom/appsflyer/internal/AFd1dSDK;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1dSDK;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/appsflyer/internal/AFd1dSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1bSDK;->afRDLog()Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFd1dSDK;-><init>(Lcom/appsflyer/internal/AFd1oSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1dSDK;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afErrorLog:Lcom/appsflyer/internal/AFd1dSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->getLevel:Lcom/appsflyer/internal/AFc1mSDK;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x6

    const-wide/16 v4, 0x12c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/appsflyer/internal/AFb1bSDK$4;

    invoke-direct {v7}, Lcom/appsflyer/internal/AFb1bSDK$4;-><init>()V

    new-instance v8, Lcom/appsflyer/internal/AFb1bSDK$AFa1xSDK;

    invoke-direct {v8}, Lcom/appsflyer/internal/AFb1bSDK$AFa1xSDK;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 3
    sget-object v1, Lcom/appsflyer/internal/d;->a:Lcom/appsflyer/internal/d;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 4
    new-instance v1, Lcom/appsflyer/internal/AFc1mSDK;

    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFc1mSDK;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lcom/appsflyer/internal/AFb1bSDK;->getLevel:Lcom/appsflyer/internal/AFc1mSDK;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->getLevel:Lcom/appsflyer/internal/AFc1mSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized afInfoLog()Lcom/appsflyer/CreateOneLinkHttpTask;
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afInfoLog:Lcom/appsflyer/CreateOneLinkHttpTask;

    if-nez v0, :cond_0

    .line 2
    new-instance v5, Lcom/appsflyer/internal/AFd1qSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1bSDK;->afRDLog()Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/appsflyer/internal/AFd1qSDK;-><init>(Lcom/appsflyer/internal/AFd1oSDK;)V

    .line 3
    new-instance v7, Lcom/appsflyer/internal/AFd1mSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1bSDK;->valueOf()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    invoke-direct {v7, v0, v5}, Lcom/appsflyer/internal/AFd1mSDK;-><init>(Lcom/appsflyer/internal/AFb1cSDK;Lcom/appsflyer/internal/AFd1qSDK;)V

    .line 4
    new-instance v0, Lcom/appsflyer/CreateOneLinkHttpTask;

    new-instance v2, Lcom/appsflyer/internal/AFd1rSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFd1rSDK;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1bSDK;->valueOf()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v4

    .line 7
    new-instance v6, Lcom/appsflyer/internal/AFc1xSDK;

    .line 8
    invoke-direct {p0}, Lcom/appsflyer/internal/AFb1bSDK;->onInstallConversionDataLoadedNative()Lcom/appsflyer/internal/AFb1xSDK;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1bSDK;->valueOf()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v8

    .line 10
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v9

    invoke-direct {v6, v1, v8, v9}, Lcom/appsflyer/internal/AFc1xSDK;-><init>(Lcom/appsflyer/internal/AFb1xSDK;Lcom/appsflyer/internal/AFb1cSDK;Lcom/appsflyer/AppsFlyerProperties;)V

    .line 11
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1bSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/appsflyer/CreateOneLinkHttpTask;-><init>(Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFb1cSDK;Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1qSDK;Lcom/appsflyer/internal/AFc1xSDK;Lcom/appsflyer/internal/AFd1mSDK;Lcom/appsflyer/internal/AFc1mSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afInfoLog:Lcom/appsflyer/CreateOneLinkHttpTask;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afInfoLog:Lcom/appsflyer/CreateOneLinkHttpTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final afRDLog()Lcom/appsflyer/internal/AFd1oSDK;
    .locals 2

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFb1eSDK;

    .line 2
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    .line 3
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFb1eSDK;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized afWarnLog()Lcom/appsflyer/internal/AFb1pSDK;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLevel()Lcom/appsflyer/internal/AFe1fSDK;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->init:Lcom/appsflyer/internal/AFe1fSDK;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/appsflyer/internal/AFe1fSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1fSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->init:Lcom/appsflyer/internal/AFe1fSDK;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->init:Lcom/appsflyer/internal/AFe1fSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized init()Lcom/appsflyer/internal/AFa1lSDK;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afWarnLog:Lcom/appsflyer/internal/AFa1lSDK;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/appsflyer/internal/AFa1lSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1bSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFb1dSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFa1lSDK;-><init>(Lcom/appsflyer/internal/AFb1dSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afWarnLog:Lcom/appsflyer/internal/AFa1lSDK;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afWarnLog:Lcom/appsflyer/internal/AFa1lSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized valueOf()Lcom/appsflyer/internal/AFb1cSDK;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afRDLog:Lcom/appsflyer/internal/AFb1cSDK;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/appsflyer/internal/AFb1cSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1bSDK;->AFVersionDeclaration()Lcom/appsflyer/internal/AFb1dSDK;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/appsflyer/internal/AFb1eSDK;

    .line 4
    iget-object v3, p0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    .line 5
    iget-object v3, v3, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 6
    invoke-static {v3}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/appsflyer/internal/AFb1eSDK;-><init>(Landroid/content/SharedPreferences;)V

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFb1cSDK;-><init>(Lcom/appsflyer/internal/AFb1dSDK;Lcom/appsflyer/internal/AFd1oSDK;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afRDLog:Lcom/appsflyer/internal/AFb1cSDK;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context must be set via setContext method before calling this dependency."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->afRDLog:Lcom/appsflyer/internal/AFb1cSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized values()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventType:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventType:Ljava/util/concurrent/ExecutorService;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventType:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
