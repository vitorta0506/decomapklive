.class public abstract Lorg/light/lightAssetKit/ComponentBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/lightAssetKit/ComponentBase$ComponentUpdateListener;
    }
.end annotation


# static fields
.field private static __gson:Lcom/google/gson/Gson;


# instance fields
.field protected transient __componentUpdateListener:Lorg/light/lightAssetKit/ComponentBase$ComponentUpdateListener;

.field private transient __extraInfo:Ljava/lang/Object;

.field protected transient __propertyChangeListener:Lorg/light/lightAssetKit/Entity;

.field protected transient __registerComponentListener:Lorg/light/lightAssetKit/Entity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/ComponentBase;->__extraInfo:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/ComponentBase;->__propertyChangeListener:Lorg/light/lightAssetKit/Entity;

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/ComponentBase;->__componentUpdateListener:Lorg/light/lightAssetKit/ComponentBase$ComponentUpdateListener;

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/ComponentBase;->__registerComponentListener:Lorg/light/lightAssetKit/Entity;

    return-void
.end method

.method protected static gson()Lcom/google/gson/Gson;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Enum;

    sget-object v1, Lorg/light/lightAssetKit/ComponentBase;->__gson:Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v2, Lorg/light/lightAssetKit/ComponentBase$2;

    invoke-direct {v2}, Lorg/light/lightAssetKit/ComponentBase$2;-><init>()V

    .line 3
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    new-instance v2, Lorg/light/lightAssetKit/ComponentBase$1;

    invoke-direct {v2}, Lorg/light/lightAssetKit/ComponentBase$1;-><init>()V

    .line 4
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/GsonBuilder;->registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lorg/light/lightAssetKit/ComponentBase;->__gson:Lcom/google/gson/Gson;

    .line 6
    :cond_0
    sget-object v0, Lorg/light/lightAssetKit/ComponentBase;->__gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static makeFromJson(Lcom/google/gson/JsonObject;)Lorg/light/lightAssetKit/ComponentBase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 1
    const-class v0, Lorg/light/lightAssetKit/ComponentBase;

    :try_start_0
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org.light.lightAssetKit.components."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-static {}, Lorg/light/lightAssetKit/ComponentBase;->gson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/lightAssetKit/ComponentBase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    .line 4
    :catch_3
    :try_start_1
    const-class v1, Lorg/light/lightAssetKit/components/Component;

    .line 5
    invoke-static {}, Lorg/light/lightAssetKit/ComponentBase;->gson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/ComponentBase;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_4
    move-exception p0

    .line 6
    :goto_0
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static makeFromJson(Ljava/lang/String;)Lorg/light/lightAssetKit/ComponentBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    .line 8
    invoke-static {p0}, Lorg/light/lightAssetKit/ComponentBase;->makeFromJson(Lcom/google/gson/JsonObject;)Lorg/light/lightAssetKit/ComponentBase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/light/lightAssetKit/ComponentBase;->__componentUpdateListener:Lorg/light/lightAssetKit/ComponentBase$ComponentUpdateListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lorg/light/lightAssetKit/ComponentBase$ComponentUpdateListener;->onComponentUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    :cond_0
    return-void
.end method

.method public extraInfo()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/ComponentBase;->__extraInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public putExtraInfo(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/light/lightAssetKit/ComponentBase;->__extraInfo:Ljava/lang/Object;

    return-void
.end method

.method protected reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/ComponentBase;->__propertyChangeListener:Lorg/light/lightAssetKit/Entity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/light/lightAssetKit/ComponentBase;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lorg/light/lightAssetKit/Entity;->onPropertyChange(Lorg/light/lightAssetKit/ComponentBase;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_0
    return-void
.end method

.method public setComponentUpdateListener(Lorg/light/lightAssetKit/ComponentBase$ComponentUpdateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/ComponentBase;->__componentUpdateListener:Lorg/light/lightAssetKit/ComponentBase$ComponentUpdateListener;

    .line 2
    iget-object p1, p0, Lorg/light/lightAssetKit/ComponentBase;->__registerComponentListener:Lorg/light/lightAssetKit/Entity;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lorg/light/lightAssetKit/Entity;->onRegisterComponentChange(Lorg/light/lightAssetKit/ComponentBase;)V

    :cond_0
    return-void
.end method

.method protected setPropertyChangeListener(Lorg/light/lightAssetKit/Entity;)V
    .locals 0

    iput-object p1, p0, Lorg/light/lightAssetKit/ComponentBase;->__propertyChangeListener:Lorg/light/lightAssetKit/Entity;

    return-void
.end method

.method protected setRegisterComponentListener(Lorg/light/lightAssetKit/Entity;)V
    .locals 0

    iput-object p1, p0, Lorg/light/lightAssetKit/ComponentBase;->__registerComponentListener:Lorg/light/lightAssetKit/Entity;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/light/lightAssetKit/ComponentBase;->toJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonObject()Lcom/google/gson/JsonObject;
    .locals 4

    .line 1
    invoke-static {}, Lorg/light/lightAssetKit/ComponentBase;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 2
    invoke-virtual {p0}, Lorg/light/lightAssetKit/ComponentBase;->type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lorg/light/lightAssetKit/ComponentBase;->__extraInfo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lorg/light/lightAssetKit/ComponentBase;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lorg/light/lightAssetKit/ComponentBase;->__extraInfo:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 5
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/light/lightAssetKit/ComponentBase;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract type()Ljava/lang/String;
.end method

.method protected update(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/light/lightAssetKit/ComponentBase;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/light/lightAssetKit/ComponentBase;

    .line 2
    invoke-virtual {p0, p1}, Lorg/light/lightAssetKit/ComponentBase;->update(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method protected update(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/light/lightAssetKit/ComponentBase;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method
