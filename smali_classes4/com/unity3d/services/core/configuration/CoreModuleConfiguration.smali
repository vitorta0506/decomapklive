.class public Lcom/unity3d/services/core/configuration/CoreModuleConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/services/core/configuration/IModuleConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWebAppApiClassList()[Ljava/lang/Class;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/unity3d/services/core/api/Broadcast;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/unity3d/services/core/api/Cache;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/unity3d/services/core/api/Connectivity;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/unity3d/services/core/api/DeviceInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/unity3d/services/core/api/ClassDetection;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/unity3d/services/core/api/Storage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/unity3d/services/core/api/Sdk;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/unity3d/services/core/api/Request;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/unity3d/services/core/api/Resolve;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/unity3d/services/core/api/Intent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/unity3d/services/core/api/Lifecycle;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/unity3d/services/core/api/Preferences;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/unity3d/services/core/api/SensorInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/unity3d/services/core/api/Permissions;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public initCompleteState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/unity3d/services/core/request/metrics/SDKMetrics;->setConfiguration(Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 2
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getMetricTags()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;->setMetricTags(Ljava/util/Map;)V

    .line 3
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->triggerOnSdkInitialized()V

    .line 4
    new-instance p1, Lcom/unity3d/services/core/configuration/CoreModuleConfiguration$2;

    invoke-direct {p1, p0}, Lcom/unity3d/services/core/configuration/CoreModuleConfiguration$2;-><init>(Lcom/unity3d/services/core/configuration/CoreModuleConfiguration;)V

    invoke-static {p1}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public initErrorState(Lcom/unity3d/services/core/configuration/Configuration;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/unity3d/services/core/request/metrics/SDKMetrics;->setConfiguration(Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 2
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getMetricTags()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;->setMetricTags(Ljava/util/Map;)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "create webapp"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "init modules"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    const-string p3, "Unity Ads failed to initialize due to internal error"

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;->AD_BLOCKER_DETECTED:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    .line 7
    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->triggerOnSdkInitializationFailed(Ljava/lang/String;I)V

    .line 8
    new-instance p2, Lcom/unity3d/services/core/configuration/CoreModuleConfiguration$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/unity3d/services/core/configuration/CoreModuleConfiguration$1;-><init>(Lcom/unity3d/services/core/configuration/CoreModuleConfiguration;Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/unity3d/services/core/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public initModuleState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/unity3d/services/core/request/metrics/SDKMetrics;->setConfiguration(Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 2
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getMetricTags()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;->setMetricTags(Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method

.method public resetState(Lcom/unity3d/services/core/configuration/Configuration;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/unity3d/services/core/request/metrics/SDKMetrics;->setConfiguration(Lcom/unity3d/services/core/configuration/Configuration;)V

    .line 2
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializeEventsMetricSender;->getInstance()Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getMetricTags()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/unity3d/services/core/configuration/IInitializeEventsMetricSender;->setMetricTags(Ljava/util/Map;)V

    .line 3
    invoke-static {}, Lcom/unity3d/services/core/broadcast/BroadcastMonitor;->removeAllBroadcastListeners()V

    .line 4
    invoke-static {}, Lcom/unity3d/services/core/cache/CacheThread;->cancel()V

    .line 5
    invoke-static {}, Lcom/unity3d/services/core/request/WebRequestThread;->cancel()V

    .line 6
    invoke-static {}, Lcom/unity3d/services/core/connectivity/ConnectivityMonitor;->stopAll()V

    .line 7
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/device/StorageManager;->init(Landroid/content/Context;)Z

    .line 8
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/device/AdvertisingId;->init(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/device/OpenAdvertisingId;->init(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lcom/unity3d/services/core/device/VolumeChange;->clearAllListeners()V

    const/4 p1, 0x1

    return p1
.end method
