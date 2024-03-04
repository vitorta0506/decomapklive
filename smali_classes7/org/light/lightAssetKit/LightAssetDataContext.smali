.class public Lorg/light/lightAssetKit/LightAssetDataContext;
.super Lorg/light/lightAssetKit/BaseContext;
.source "SourceFile"

# interfaces
.implements Lorg/light/callback/ComponentUpdateCallback;
.implements Lorg/light/callback/WillReadSampleCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "LightAssetDataContext"

.field protected static lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;


# instance fields
.field protected addInputSources:Lcom/google/gson/JsonObject;

.field protected final componentUpdateListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/light/lightAssetKit/ComponentBase;",
            ">;"
        }
    .end annotation
.end field

.field protected controller:Lorg/light/Controller;

.field protected inputSources:Lcom/google/gson/JsonObject;

.field protected instanceId:I

.field protected lazyChangeContextWrapper:Lorg/light/lightAssetKit/LazyChangeContextWrapper;

.field protected nativeHandle:J

.field protected properties:Lcom/google/gson/JsonObject;

.field protected rootEntity:Lorg/light/lightAssetKit/Entity;

.field protected type:Lorg/light/lightAssetKit/LightAssetDataType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/BaseContext;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->nativeHandle:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->instanceId:I

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->componentUpdateListenerMap:Ljava/util/Map;

    .line 5
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->inputSources:Lcom/google/gson/JsonObject;

    .line 6
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->addInputSources:Lcom/google/gson/JsonObject;

    .line 7
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->properties:Lcom/google/gson/JsonObject;

    .line 8
    sget-object v0, Lorg/light/lightAssetKit/LightAssetDataContext;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lorg/light/lightAssetKit/LazyChangeContextWrapper;

    invoke-direct {v0, p0}, Lorg/light/lightAssetKit/LazyChangeContextWrapper;-><init>(Lorg/light/lightAssetKit/BaseContext;)V

    iput-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->lazyChangeContextWrapper:Lorg/light/lightAssetKit/LazyChangeContextWrapper;

    :cond_0
    return-void
.end method

.method private doAddInputSource()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->controller:Lorg/light/Controller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->addInputSources:Lcom/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->controller:Lorg/light/Controller;

    iget-object v1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->addInputSources:Lcom/google/gson/JsonObject;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/light/Controller;->updateResource(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->addInputSources:Lcom/google/gson/JsonObject;

    :cond_1
    :goto_0
    return-void
.end method

.method public static make(Lorg/light/LightAsset;)Lorg/light/lightAssetKit/LightAssetDataContext;
    .locals 1

    .line 1
    sget-object v0, Lorg/light/lightAssetKit/LightAssetDataType;->Json:Lorg/light/lightAssetKit/LightAssetDataType;

    invoke-static {p0, v0}, Lorg/light/lightAssetKit/LightAssetDataContext;->make(Lorg/light/LightAsset;Lorg/light/lightAssetKit/LightAssetDataType;)Lorg/light/lightAssetKit/LightAssetDataContext;

    move-result-object p0

    return-object p0
.end method

.method public static make(Lorg/light/LightAsset;Lorg/light/lightAssetKit/LightAssetDataType;)Lorg/light/lightAssetKit/LightAssetDataContext;
    .locals 3

    .line 2
    sget-object v0, Lorg/light/lightAssetKit/LightAssetDataContext;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/light/LightAsset;->getInstanceId()I

    move-result p0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 4
    invoke-interface {v0, p0, v2}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextMake(II)Lorg/light/service/InstanceId;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    new-instance v0, Lorg/light/lightAssetKit/LightAssetDataContext;

    invoke-direct {v0}, Lorg/light/lightAssetKit/LightAssetDataContext;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    iget p0, p0, Lorg/light/service/InstanceId;->id:I

    invoke-virtual {v0, p0}, Lorg/light/lightAssetKit/LightAssetDataContext;->setInstanceId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LightAssetDataContext"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p0, v0}, Lorg/light/lightAssetKit/LightAssetDataContext;->nativeMake(Lorg/light/LightAsset;I)Lorg/light/lightAssetKit/LightAssetDataContext;

    move-result-object v1

    :cond_2
    :goto_2
    if-eqz v1, :cond_6

    .line 9
    sget-object p0, Lorg/light/lightAssetKit/LightAssetDataType;->EntityTree:Lorg/light/lightAssetKit/LightAssetDataType;

    if-ne p1, p0, :cond_5

    .line 10
    invoke-virtual {v1}, Lorg/light/lightAssetKit/LightAssetDataContext;->exportEntityTreeJsonString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-static {p0}, Lorg/light/lightAssetKit/Entity;->makeFromJson(Ljava/lang/String;)Lorg/light/lightAssetKit/Entity;

    move-result-object p0

    .line 13
    invoke-direct {v1, p0}, Lorg/light/lightAssetKit/LightAssetDataContext;->setRootEntity(Lorg/light/lightAssetKit/Entity;)V

    .line 14
    :cond_3
    invoke-virtual {v1}, Lorg/light/lightAssetKit/LightAssetDataContext;->exportInputSourcesJsonString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    .line 17
    invoke-direct {v1, p0}, Lorg/light/lightAssetKit/LightAssetDataContext;->setInputSources(Lcom/google/gson/JsonObject;)V

    .line 18
    :cond_4
    invoke-virtual {v1}, Lorg/light/lightAssetKit/LightAssetDataContext;->exportPropertiesJsonString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    .line 21
    invoke-direct {v1, p0}, Lorg/light/lightAssetKit/LightAssetDataContext;->setProperties(Lcom/google/gson/JsonObject;)V

    .line 22
    :cond_5
    iput-object p1, v1, Lorg/light/lightAssetKit/LightAssetDataContext;->type:Lorg/light/lightAssetKit/LightAssetDataType;

    :cond_6
    return-object v1
.end method

.method private native nativeAddLightAsset(Lorg/light/LightAsset;I)Ljava/lang/Boolean;
.end method

.method private native nativeComponentSupportDynamicallyUpdate(Ljava/lang/String;)Z
.end method

.method private native nativeExportEntityTreeJsonString()Ljava/lang/String;
.end method

.method private native nativeExportInputSourcesJsonString()Ljava/lang/String;
.end method

.method private native nativeExportLightAsset()Lorg/light/LightAsset;
.end method

.method private native nativeExportPropertiesJsonString()Ljava/lang/String;
.end method

.method private static native nativeMake(Lorg/light/LightAsset;I)Lorg/light/lightAssetKit/LightAssetDataContext;
.end method

.method private native nativeReplaceEntityTreeJsonString(Ljava/lang/String;)V
.end method

.method private native nativeReplaceInputSourcesJsonString(Ljava/lang/String;)V
.end method

.method private native nativeReplacePropertiesJsonString(Ljava/lang/String;)V
.end method

.method private setInputSources(Lcom/google/gson/JsonObject;)V
    .locals 0

    iput-object p1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->inputSources:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public static setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    sput-object p0, Lorg/light/lightAssetKit/LightAssetDataContext;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    return-void
.end method

.method private setProperties(Lcom/google/gson/JsonObject;)V
    .locals 0

    iput-object p1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->properties:Lcom/google/gson/JsonObject;

    return-void
.end method

.method private setRootEntity(Lorg/light/lightAssetKit/Entity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->lazyChangeContextWrapper:Lorg/light/lightAssetKit/LazyChangeContextWrapper;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lorg/light/lightAssetKit/Entity;->bindContext(Lorg/light/lightAssetKit/BaseContext;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Lorg/light/lightAssetKit/Entity;->bindContext(Lorg/light/lightAssetKit/BaseContext;)V

    .line 4
    :goto_0
    iput-object p1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->rootEntity:Lorg/light/lightAssetKit/Entity;

    return-void
.end method


# virtual methods
.method public addLightAsset(Lorg/light/LightAsset;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lorg/light/lightAssetKit/LightAssetDataMergeType;->Back:Lorg/light/lightAssetKit/LightAssetDataMergeType;

    invoke-virtual {p0, p1, v0}, Lorg/light/lightAssetKit/LightAssetDataContext;->addLightAsset(Lorg/light/LightAsset;Lorg/light/lightAssetKit/LightAssetDataMergeType;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public addLightAsset(Lorg/light/LightAsset;Lorg/light/lightAssetKit/LightAssetDataMergeType;)Ljava/lang/Boolean;
    .locals 2

    .line 2
    sget-object v0, Lorg/light/lightAssetKit/LightAssetDataContext;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget v1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->instanceId:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/light/LightAsset;->getInstanceId()I

    move-result p1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    .line 5
    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextAddLightAsset(III)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LightAssetDataContext"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/light/lightAssetKit/LightAssetDataContext;->nativeAddLightAsset(Lorg/light/LightAsset;I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public beforeReadSample()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->lazyChangeContextWrapper:Lorg/light/lightAssetKit/LazyChangeContextWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->emit()V

    :cond_0
    return-void
.end method

.method public bindController(Lorg/light/Controller;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->controller:Lorg/light/Controller;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p0}, Lorg/light/Controller;->setWillReadSampleCallback(Lorg/light/callback/WillReadSampleCallback;)V

    .line 3
    invoke-virtual {p1, p0}, Lorg/light/Controller;->setComponentUpdateCallback(Lorg/light/callback/ComponentUpdateCallback;)V

    .line 4
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->componentUpdateListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5
    invoke-virtual {p1, v1}, Lorg/light/Controller;->addComponentUpdateMonitor(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lorg/light/lightAssetKit/LightAssetDataContext;->doAddInputSource()V

    return-void
.end method

.method public callNativeReplaceEntityTreeJsonString(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/lightAssetKit/LightAssetDataContext;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextReplaceEntityTreeJsonString(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightAssetDataContext"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/LightAssetDataContext;->nativeReplaceEntityTreeJsonString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public callNativeReplaceInputSourcesJsonString(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/lightAssetKit/LightAssetDataContext;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextReplaceInputSourcesJsonString(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightAssetDataContext"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/LightAssetDataContext;->nativeReplaceInputSourcesJsonString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public callNativeReplacePropertiesJsonString(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/lightAssetKit/LightAssetDataContext;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextReplacePropertiesJsonString(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightAssetDataContext"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/LightAssetDataContext;->nativeReplacePropertiesJsonString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public componentSupportDynamicallyUpdate(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lorg/light/lightAssetKit/components/Component;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lorg/light/lightAssetKit/LightAssetDataContext;->nativeComponentSupportDynamicallyUpdate(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public doExportLightAsset()Lorg/light/LightAsset;
    .locals 4

    .line 1
    sget-object v0, Lorg/light/lightAssetKit/LightAssetDataContext;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget v2, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->instanceId:I

    invoke-interface {v0, v2}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextExportLightAsset(I)Lorg/light/service/InstanceId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Lorg/light/LightAsset;

    invoke-direct {v2}, Lorg/light/LightAsset;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    iget v0, v0, Lorg/light/service/InstanceId;->id:I

    invoke-virtual {v2, v0}, Lorg/light/LightAsset;->setInstanceId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LightAssetDataContext"

    invoke-static {v2, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v1

    .line 6
    :cond_1
    invoke-direct {p0}, Lorg/light/lightAssetKit/LightAssetDataContext;->nativeExportLightAsset()Lorg/light/LightAsset;

    move-result-object v0

    return-object v0
.end method

.method public exportEntityTreeJsonString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/lightAssetKit/LightAssetDataContext;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextExportEntityTreeJsonString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightAssetDataContext"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/lightAssetKit/LightAssetDataContext;->nativeExportEntityTreeJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exportInputSourcesJsonString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/lightAssetKit/LightAssetDataContext;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextExportInputSourcesJsonString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightAssetDataContext"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/lightAssetKit/LightAssetDataContext;->nativeExportInputSourcesJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exportLightAsset()Lorg/light/LightAsset;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->type:Lorg/light/lightAssetKit/LightAssetDataType;

    sget-object v1, Lorg/light/lightAssetKit/LightAssetDataType;->EntityTree:Lorg/light/lightAssetKit/LightAssetDataType;

    if-ne v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->lazyChangeContextWrapper:Lorg/light/lightAssetKit/LazyChangeContextWrapper;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/light/lightAssetKit/LazyChangeContextWrapper;->clear()V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->rootEntity:Lorg/light/lightAssetKit/Entity;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lorg/light/lightAssetKit/Entity;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/light/lightAssetKit/LightAssetDataContext;->callNativeReplaceEntityTreeJsonString(Ljava/lang/String;)V

    .line 6
    :cond_1
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->addInputSources:Lcom/google/gson/JsonObject;

    .line 7
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->inputSources:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/light/lightAssetKit/LightAssetDataContext;->callNativeReplaceInputSourcesJsonString(Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->properties:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/light/lightAssetKit/LightAssetDataContext;->callNativeReplacePropertiesJsonString(Ljava/lang/String;)V

    .line 11
    :cond_3
    invoke-virtual {p0}, Lorg/light/lightAssetKit/LightAssetDataContext;->doExportLightAsset()Lorg/light/LightAsset;

    move-result-object v0

    return-object v0
.end method

.method public exportPropertiesJsonString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/lightAssetKit/LightAssetDataContext;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightAssetDataContextExportPropertiesJsonString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightAssetDataContext"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/lightAssetKit/LightAssetDataContext;->nativeExportPropertiesJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCameraEntity()Lorg/light/lightAssetKit/Entity;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->rootEntity:Lorg/light/lightAssetKit/Entity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    const-class v2, Lorg/light/lightAssetKit/components/Camera;

    invoke-virtual {v0, v2}, Lorg/light/lightAssetKit/Entity;->getEntitiesWithComponent(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/lightAssetKit/Entity;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getInputSources()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->inputSources:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->instanceId:I

    return v0
.end method

.method public getProperties()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->properties:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getRootEntity()Lorg/light/lightAssetKit/Entity;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->rootEntity:Lorg/light/lightAssetKit/Entity;

    return-object v0
.end method

.method onAddComponent(ILcom/google/gson/JsonObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->controller:Lorg/light/Controller;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/light/Controller;->addComponent(ILjava/lang/String;)V

    return-void
.end method

.method onAddEntity(IILorg/light/lightAssetKit/Entity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->controller:Lorg/light/Controller;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p3}, Lorg/light/lightAssetKit/Entity;->toJson()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lorg/light/Controller;->addEntity(IILjava/lang/String;)V

    return-void
.end method

.method public onComponentUpdated(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/light/lightAssetKit/Entity;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lorg/light/lightAssetKit/LightAssetDataContext$1;

    invoke-direct {v1, p0}, Lorg/light/lightAssetKit/LightAssetDataContext$1;-><init>(Lorg/light/lightAssetKit/LightAssetDataContext;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/lightAssetKit/ComponentBase;

    .line 3
    instance-of v1, v0, Lorg/light/lightAssetKit/components/Component;

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    check-cast v0, Lorg/light/lightAssetKit/components/Component;

    .line 5
    iget-object v1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->componentUpdateListenerMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/light/lightAssetKit/components/Component;->getComponentID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->componentUpdateListenerMap:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/light/lightAssetKit/components/Component;->getComponentID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/lightAssetKit/ComponentBase;

    iget-object v1, v1, Lorg/light/lightAssetKit/ComponentBase;->__componentUpdateListener:Lorg/light/lightAssetKit/ComponentBase$ComponentUpdateListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, v0}, Lorg/light/lightAssetKit/ComponentBase$ComponentUpdateListener;->onComponentUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method onRegisterComponentUpdateMonitor(Lorg/light/lightAssetKit/components/Component;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->componentUpdateListenerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/light/lightAssetKit/components/Component;->getComponentID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->controller:Lorg/light/Controller;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/light/lightAssetKit/components/Component;->getComponentID()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/light/Controller;->addComponentUpdateMonitor(I)V

    :cond_1
    return-void
.end method

.method onRemoveComponent(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->controller:Lorg/light/Controller;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/light/Controller;->removeComponent(ILjava/lang/String;)V

    return-void
.end method

.method onRemoveEntity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->controller:Lorg/light/Controller;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lorg/light/Controller;->removeEntity(I)V

    return-void
.end method

.method onUnregisterComponentUpdateMonitor(Lorg/light/lightAssetKit/components/Component;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->componentUpdateListenerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/light/lightAssetKit/components/Component;->getComponentID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->componentUpdateListenerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/light/lightAssetKit/components/Component;->getComponentID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->controller:Lorg/light/Controller;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/light/lightAssetKit/components/Component;->getComponentID()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/light/Controller;->removeComponentUpdateMonitor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method onUpdateComponent(ILjava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->controller:Lorg/light/Controller;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/light/Controller;->updateComponent(ILjava/lang/String;)V

    return-void
.end method

.method public setInstanceId(I)V
    .locals 0

    iput p1, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->instanceId:I

    return-void
.end method

.method public updateInputSource(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->addInputSources:Lcom/google/gson/JsonObject;

    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 3
    iget-object p2, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->inputSources:Lcom/google/gson/JsonObject;

    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->inputSources:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->inputSources:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->addInputSources:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 7
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->inputSources:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8
    invoke-direct {p0}, Lorg/light/lightAssetKit/LightAssetDataContext;->doAddInputSource()V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateProperty(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->properties:Lcom/google/gson/JsonObject;

    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/light/lightAssetKit/LightAssetDataContext;->properties:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_2
    :goto_0
    return-void
.end method
