.class Lorg/light/lightAssetKit/LazyChangeContextWrapper;
.super Lorg/light/lightAssetKit/BaseContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;
    }
.end annotation


# instance fields
.field private final componentCommand:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lorg/light/lightAssetKit/BaseContext;

.field private final lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/light/lightAssetKit/BaseContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/BaseContext;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->componentCommand:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->lock:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->context:Lorg/light/lightAssetKit/BaseContext;

    return-void
.end method

.method private getComponentCommand(I)Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->componentCommand:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->componentCommand:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;

    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    new-instance v1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;

    invoke-direct {v1}, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;-><init>()V

    .line 5
    iget-object v2, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->componentCommand:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->componentCommand:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method emit()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->componentCommand:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;

    iget-object v3, v3, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->addComponentCommand:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonObject;

    .line 4
    iget-object v5, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->context:Lorg/light/lightAssetKit/BaseContext;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lorg/light/lightAssetKit/BaseContext;->onAddComponent(ILcom/google/gson/JsonObject;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;

    iget-object v3, v3, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->updateComponentCommand:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonObject;

    .line 6
    iget-object v5, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->context:Lorg/light/lightAssetKit/BaseContext;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "type"

    invoke-virtual {v4, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lorg/light/lightAssetKit/BaseContext;->onUpdateComponent(ILjava/lang/String;Lcom/google/gson/JsonObject;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;

    iget-object v3, v3, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->removeComponentCommand:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    iget-object v5, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->context:Lorg/light/lightAssetKit/BaseContext;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Lorg/light/lightAssetKit/BaseContext;->onRemoveComponent(ILjava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object v1, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->componentCommand:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onAddComponent(ILcom/google/gson/JsonObject;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->getComponentCommand(I)Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;

    move-result-object p1

    const-string v0, "type"

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->addComponentCommand:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object p1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->addComponentCommand:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->updateComponentCommand:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    monitor-exit v1

    return-void

    .line 8
    :cond_1
    iget-object v2, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->removeComponentCommand:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->removeComponentCommand:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->updateComponentCommand:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->addComponentCommand:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onAddEntity(IILorg/light/lightAssetKit/Entity;)V
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->context:Lorg/light/lightAssetKit/BaseContext;

    invoke-virtual {v0, p1, p2, p3}, Lorg/light/lightAssetKit/BaseContext;->onAddEntity(IILorg/light/lightAssetKit/Entity;)V

    return-void
.end method

.method onRegisterComponentUpdateMonitor(Lorg/light/lightAssetKit/components/Component;)V
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->context:Lorg/light/lightAssetKit/BaseContext;

    invoke-virtual {v0, p1}, Lorg/light/lightAssetKit/BaseContext;->onRegisterComponentUpdateMonitor(Lorg/light/lightAssetKit/components/Component;)V

    return-void
.end method

.method onRemoveComponent(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->getComponentCommand(I)Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->addComponentCommand:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->addComponentCommand:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->updateComponentCommand:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object p1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->updateComponentCommand:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->removeComponentCommand:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_2
    iget-object p1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->removeComponentCommand:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onRemoveEntity(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->componentCommand:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->context:Lorg/light/lightAssetKit/BaseContext;

    invoke-virtual {v0, p1}, Lorg/light/lightAssetKit/BaseContext;->onRemoveEntity(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method onUnregisterComponentUpdateMonitor(Lorg/light/lightAssetKit/components/Component;)V
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->context:Lorg/light/lightAssetKit/BaseContext;

    invoke-virtual {v0, p1}, Lorg/light/lightAssetKit/BaseContext;->onUnregisterComponentUpdateMonitor(Lorg/light/lightAssetKit/components/Component;)V

    return-void
.end method

.method onUpdateComponent(ILjava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->getComponentCommand(I)Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->addComponentCommand:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->addComponentCommand:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    .line 5
    invoke-virtual {p3}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/gson/JsonElement;

    invoke-virtual {p1, v1, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->updateComponentCommand:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object p1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->updateComponentCommand:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    .line 9
    invoke-virtual {p3}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/gson/JsonElement;

    invoke-virtual {p1, v1, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->removeComponentCommand:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_2
    iget-object p1, p1, Lorg/light/lightAssetKit/LazyChangeContextWrapper$ComponentChangeCommand;->updateComponentCommand:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
