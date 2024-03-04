.class final Lcom/appsflyer/internal/AFc1mSDK$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFc1mSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/AFc1mSDK;

.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;

.field private synthetic valueOf:Lcom/appsflyer/internal/AFc1nSDK;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1nSDK;Lcom/appsflyer/internal/AFc1qSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFc1mSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->valueOf:Lcom/appsflyer/internal/AFc1nSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QUEUE: execution finished for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->valueOf:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFc1mSDK;

    .line 3
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->AFLogger:Ljava/util/Set;

    .line 4
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->valueOf:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFc1mSDK;

    .line 6
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFc1oSDK;

    .line 8
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->valueOf:Lcom/appsflyer/internal/AFc1nSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/internal/AFc1oSDK;->valueOf(Lcom/appsflyer/internal/AFc1nSDK;Lcom/appsflyer/internal/AFc1qSDK;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFc1qSDK;

    sget-object v1, Lcom/appsflyer/internal/AFc1qSDK;->valueOf:Lcom/appsflyer/internal/AFc1qSDK;

    if-ne v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFc1mSDK;

    .line 11
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->values:Ljava/util/Set;

    .line 12
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->valueOf:Lcom/appsflyer/internal/AFc1nSDK;

    .line 13
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1nSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1lSDK;

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFc1mSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFc1mSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFc1mSDK;)V

    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->valueOf:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1nSDK;->AFInAppEventType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFc1mSDK;

    .line 18
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->afDebugLog:Ljava/util/NavigableSet;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFc1mSDK;

    .line 21
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1mSDK;->afErrorLog:Ljava/util/List;

    .line 22
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->valueOf:Lcom/appsflyer/internal/AFc1nSDK;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFc1mSDK;

    .line 24
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/List;

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 26
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFc1mSDK;

    .line 28
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1mSDK;->values:Ljava/util/Set;

    .line 29
    iget-object v1, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->valueOf:Lcom/appsflyer/internal/AFc1nSDK;

    .line 30
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1nSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1lSDK;

    .line 31
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/appsflyer/internal/AFc1mSDK$1;->AFInAppEventType:Lcom/appsflyer/internal/AFc1mSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFc1mSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFc1mSDK;)V

    return-void
.end method
