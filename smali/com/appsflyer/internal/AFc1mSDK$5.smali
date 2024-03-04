.class public final Lcom/appsflyer/internal/AFc1mSDK$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFc1mSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

.field private synthetic values:Lcom/appsflyer/internal/AFc1mSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1nSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 2
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->afDebugLog:Ljava/util/NavigableSet;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 5
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1mSDK;->AFLogger:Ljava/util/Set;

    .line 6
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QUEUE: tried to add already running task: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 10
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1mSDK;->afDebugLog:Ljava/util/NavigableSet;

    .line 11
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-interface {v1, v2}, Ljava/util/NavigableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 12
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1mSDK;->afInfoLog:Ljava/util/NavigableSet;

    .line 13
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-interface {v1, v2}, Ljava/util/NavigableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFc1mSDK;->valueOf(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1nSDK;)V

    .line 15
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-static {v1, v2}, Lcom/appsflyer/internal/AFc1mSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1nSDK;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 17
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1mSDK;->afDebugLog:Ljava/util/NavigableSet;

    .line 18
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-interface {v1, v2}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 20
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1mSDK;->afInfoLog:Ljava/util/NavigableSet;

    .line 21
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-interface {v1, v2}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QUEUE: new task was blocked: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 23
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFc1nSDK;->valueOf()V

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 24
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 25
    iget-object v3, v2, Lcom/appsflyer/internal/AFc1mSDK;->afDebugLog:Ljava/util/NavigableSet;

    .line 26
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1mSDK;->afErrorLog:Ljava/util/List;

    .line 27
    invoke-interface {v3, v2}, Ljava/util/NavigableSet;->addAll(Ljava/util/Collection;)Z

    .line 28
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 29
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1mSDK;->afErrorLog:Ljava/util/List;

    .line 30
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 31
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QUEUE: task not added, it\'s already in the queue: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 33
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 34
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->AFKeystoreWrapper:Ljava/util/Set;

    .line 35
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    .line 36
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1nSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1lSDK;

    .line 37
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QUEUE: new task added: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 40
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/List;

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 43
    iget-object v1, v0, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventType:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 44
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->values:Lcom/appsflyer/internal/AFc1mSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFc1mSDK;)V

    return-void

    .line 45
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QUEUE: tried to add already pending task: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_7
    :goto_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QUEUE: tried to add already scheduled task: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$5;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 47
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0

    throw v1
.end method
