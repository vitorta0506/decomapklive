.class public Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final SCAR_ACTIVITY_CLASS_NAME:Ljava/lang/String;

.field private _adapterStatusBridge:Lcom/unity3d/services/ads/gmascar/bridges/AdapterStatusBridge;

.field private _gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

.field private _gmaInitializer:Lcom/unity3d/services/ads/gmascar/finder/GMAInitializer;

.field private _initializationListenerBridge:Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;

.field private _initializationStatusBridge:Lcom/unity3d/services/ads/gmascar/bridges/InitializationStatusBridge;

.field private _mobileAdsBridge:Lcom/unity3d/services/ads/gmascar/bridges/MobileAdsBridge;

.field private _presenceDetector:Lcom/unity3d/services/ads/gmascar/finder/PresenceDetector;

.field private _scarAdapter:Lcom/unity3d/scar/adapter/common/IScarAdapter;

.field private _scarAdapterFactory:Lcom/unity3d/services/ads/gmascar/adapters/ScarAdapterFactory;

.field private _scarVersionFinder:Lcom/unity3d/services/ads/gmascar/finder/ScarVersionFinder;

.field private _webViewErrorHandler:Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.gms.ads.AdActivity"

    .line 2
    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->SCAR_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/unity3d/services/ads/gmascar/bridges/MobileAdsBridge;

    invoke-direct {v0}, Lcom/unity3d/services/ads/gmascar/bridges/MobileAdsBridge;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_mobileAdsBridge:Lcom/unity3d/services/ads/gmascar/bridges/MobileAdsBridge;

    .line 4
    new-instance v0, Lcom/unity3d/services/ads/gmascar/bridges/InitializationStatusBridge;

    invoke-direct {v0}, Lcom/unity3d/services/ads/gmascar/bridges/InitializationStatusBridge;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_initializationStatusBridge:Lcom/unity3d/services/ads/gmascar/bridges/InitializationStatusBridge;

    .line 5
    new-instance v0, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;

    invoke-direct {v0}, Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_initializationListenerBridge:Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;

    .line 6
    new-instance v0, Lcom/unity3d/services/ads/gmascar/bridges/AdapterStatusBridge;

    invoke-direct {v0}, Lcom/unity3d/services/ads/gmascar/bridges/AdapterStatusBridge;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_adapterStatusBridge:Lcom/unity3d/services/ads/gmascar/bridges/AdapterStatusBridge;

    .line 7
    new-instance v0, Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;

    invoke-direct {v0}, Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_webViewErrorHandler:Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;

    .line 8
    new-instance v0, Lcom/unity3d/services/ads/gmascar/adapters/ScarAdapterFactory;

    invoke-direct {v0}, Lcom/unity3d/services/ads/gmascar/adapters/ScarAdapterFactory;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarAdapterFactory:Lcom/unity3d/services/ads/gmascar/adapters/ScarAdapterFactory;

    .line 9
    new-instance v0, Lcom/unity3d/services/ads/gmascar/finder/PresenceDetector;

    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_mobileAdsBridge:Lcom/unity3d/services/ads/gmascar/bridges/MobileAdsBridge;

    iget-object v2, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_initializationListenerBridge:Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;

    iget-object v3, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_initializationStatusBridge:Lcom/unity3d/services/ads/gmascar/bridges/InitializationStatusBridge;

    iget-object v4, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_adapterStatusBridge:Lcom/unity3d/services/ads/gmascar/bridges/AdapterStatusBridge;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unity3d/services/ads/gmascar/finder/PresenceDetector;-><init>(Lcom/unity3d/services/ads/gmascar/bridges/MobileAdsBridge;Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;Lcom/unity3d/services/ads/gmascar/bridges/InitializationStatusBridge;Lcom/unity3d/services/ads/gmascar/bridges/AdapterStatusBridge;)V

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_presenceDetector:Lcom/unity3d/services/ads/gmascar/finder/PresenceDetector;

    .line 10
    new-instance v0, Lcom/unity3d/services/ads/gmascar/finder/GMAInitializer;

    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_mobileAdsBridge:Lcom/unity3d/services/ads/gmascar/bridges/MobileAdsBridge;

    iget-object v2, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_initializationListenerBridge:Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;

    iget-object v3, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_initializationStatusBridge:Lcom/unity3d/services/ads/gmascar/bridges/InitializationStatusBridge;

    iget-object v4, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_adapterStatusBridge:Lcom/unity3d/services/ads/gmascar/bridges/AdapterStatusBridge;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unity3d/services/ads/gmascar/finder/GMAInitializer;-><init>(Lcom/unity3d/services/ads/gmascar/bridges/MobileAdsBridge;Lcom/unity3d/services/ads/gmascar/bridges/InitializeListenerBridge;Lcom/unity3d/services/ads/gmascar/bridges/InitializationStatusBridge;Lcom/unity3d/services/ads/gmascar/bridges/AdapterStatusBridge;)V

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_gmaInitializer:Lcom/unity3d/services/ads/gmascar/finder/GMAInitializer;

    .line 11
    new-instance v1, Lcom/unity3d/services/ads/gmascar/finder/ScarVersionFinder;

    iget-object v2, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_mobileAdsBridge:Lcom/unity3d/services/ads/gmascar/bridges/MobileAdsBridge;

    iget-object v3, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_presenceDetector:Lcom/unity3d/services/ads/gmascar/finder/PresenceDetector;

    invoke-direct {v1, v2, v3, v0}, Lcom/unity3d/services/ads/gmascar/finder/ScarVersionFinder;-><init>(Lcom/unity3d/services/ads/gmascar/bridges/MobileAdsBridge;Lcom/unity3d/services/ads/gmascar/finder/PresenceDetector;Lcom/unity3d/services/ads/gmascar/finder/GMAInitializer;)V

    iput-object v1, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarVersionFinder:Lcom/unity3d/services/ads/gmascar/finder/ScarVersionFinder;

    .line 12
    new-instance v0, Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

    invoke-direct {v0}, Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

    return-void
.end method

.method private getScarAdapterObject()Lcom/unity3d/scar/adapter/common/IScarAdapter;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarAdapter:Lcom/unity3d/scar/adapter/common/IScarAdapter;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarVersionFinder:Lcom/unity3d/services/ads/gmascar/finder/ScarVersionFinder;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/gmascar/finder/ScarVersionFinder;->getGoogleSdkVersionCode()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarAdapterFactory:Lcom/unity3d/services/ads/gmascar/adapters/ScarAdapterFactory;

    iget-object v3, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_webViewErrorHandler:Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;

    invoke-virtual {v2, v0, v1, v3}, Lcom/unity3d/services/ads/gmascar/adapters/ScarAdapterFactory;->createScarAdapter(JLcom/unity3d/scar/adapter/common/IAdsErrorHandler;)Lcom/unity3d/scar/adapter/common/IScarAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarAdapter:Lcom/unity3d/scar/adapter/common/IScarAdapter;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarAdapter:Lcom/unity3d/scar/adapter/common/IScarAdapter;

    return-object v0
.end method

.method private getScarEventSubject(Ljava/lang/Integer;)Lcom/unity3d/services/core/misc/EventSubject;
    .locals 5

    new-instance v0, Lcom/unity3d/services/core/misc/EventSubject;

    new-instance v1, Ljava/util/ArrayDeque;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/unity3d/scar/adapter/common/GMAEvent;

    sget-object v3, Lcom/unity3d/scar/adapter/common/GMAEvent;->FIRST_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/unity3d/scar/adapter/common/GMAEvent;->MIDPOINT:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/unity3d/scar/adapter/common/GMAEvent;->THIRD_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Lcom/unity3d/scar/adapter/common/GMAEvent;->LAST_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/unity3d/services/core/timer/DefaultIntervalTimerFactory;

    invoke-direct {v2}, Lcom/unity3d/services/core/timer/DefaultIntervalTimerFactory;-><init>()V

    const-string v3, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v0, v3, v1, p1, v2}, Lcom/unity3d/services/core/misc/EventSubject;-><init>(Ljava/lang/String;Ljava/util/Queue;Ljava/lang/Integer;Lcom/unity3d/services/core/timer/IIntervalTimerFactory;)V

    return-object v0
.end method

.method private loadInterstitialAd(Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/unity3d/services/ads/gmascar/handlers/ScarInterstitialAdHandler;

    invoke-virtual {p1}, Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;->getVideoLengthMs()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->getScarEventSubject(Ljava/lang/Integer;)Lcom/unity3d/services/core/misc/EventSubject;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/unity3d/services/ads/gmascar/handlers/ScarInterstitialAdHandler;-><init>(Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/services/core/misc/EventSubject;)V

    .line 2
    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarAdapter:Lcom/unity3d/scar/adapter/common/IScarAdapter;

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/unity3d/scar/adapter/common/IScarAdapter;->loadInterstitialAd(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;)V

    return-void
.end method

.method private loadRewardedAd(Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/unity3d/services/ads/gmascar/handlers/ScarRewardedAdHandler;

    invoke-virtual {p1}, Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;->getVideoLengthMs()Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->getScarEventSubject(Ljava/lang/Integer;)Lcom/unity3d/services/core/misc/EventSubject;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/unity3d/services/ads/gmascar/handlers/ScarRewardedAdHandler;-><init>(Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/services/core/misc/EventSubject;)V

    .line 2
    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarAdapter:Lcom/unity3d/scar/adapter/common/IScarAdapter;

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/unity3d/scar/adapter/common/IScarAdapter;->loadRewardedAd(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;)V

    return-void
.end method


# virtual methods
.method public getSCARSignals([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->getScarAdapterObject()Lcom/unity3d/scar/adapter/common/IScarAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarAdapter:Lcom/unity3d/scar/adapter/common/IScarAdapter;

    .line 2
    new-instance v0, Lcom/unity3d/services/ads/gmascar/handlers/SignalsHandler;

    invoke-direct {v0}, Lcom/unity3d/services/ads/gmascar/handlers/SignalsHandler;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarAdapter:Lcom/unity3d/scar/adapter/common/IScarAdapter;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v0}, Lcom/unity3d/scar/adapter/common/IScarAdapter;->getSCARSignals(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/unity3d/scar/adapter/common/signals/ISignalCollectionListener;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_webViewErrorHandler:Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;

    const-string p2, "Could not create SCAR adapter object"

    invoke-static {p2}, Lcom/unity3d/scar/adapter/common/GMAAdsError;->InternalSignalsError(Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAAdsError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;->handleError(Lcom/unity3d/scar/adapter/common/WebViewAdsError;)V

    :goto_0
    return-void
.end method

.method public getVersion()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarVersionFinder:Lcom/unity3d/services/ads/gmascar/finder/ScarVersionFinder;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/gmascar/finder/ScarVersionFinder;->getVersion()V

    return-void
.end method

.method public initializeScar()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_presenceDetector:Lcom/unity3d/services/ads/gmascar/finder/PresenceDetector;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/gmascar/finder/PresenceDetector;->areGMAClassesPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

    sget-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->SCAR_PRESENT:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;->send(Lcom/unity3d/scar/adapter/common/GMAEvent;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_gmaInitializer:Lcom/unity3d/services/ads/gmascar/finder/GMAInitializer;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/gmascar/finder/GMAInitializer;->initializeGMA()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_webViewErrorHandler:Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;

    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAAdsError;

    sget-object v3, Lcom/unity3d/scar/adapter/common/GMAEvent;->SCAR_NOT_PRESENT:Lcom/unity3d/scar/adapter/common/GMAEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v2, v3, v1}, Lcom/unity3d/scar/adapter/common/GMAAdsError;-><init>(Lcom/unity3d/scar/adapter/common/GMAEvent;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;->handleError(Lcom/unity3d/scar/adapter/common/WebViewAdsError;)V

    :goto_0
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_gmaInitializer:Lcom/unity3d/services/ads/gmascar/finder/GMAInitializer;

    invoke-virtual {v0}, Lcom/unity3d/services/ads/gmascar/finder/GMAInitializer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public load(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2
    invoke-direct {p0}, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->getScarAdapterObject()Lcom/unity3d/scar/adapter/common/IScarAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarAdapter:Lcom/unity3d/scar/adapter/common/IScarAdapter;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, v6}, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->loadInterstitialAd(Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v6}, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->loadRewardedAd(Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_webViewErrorHandler:Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;

    const-string p2, "Scar Adapter object is null"

    invoke-static {v6, p2}, Lcom/unity3d/scar/adapter/common/GMAAdsError;->InternalLoadError(Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAAdsError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;->handleError(Lcom/unity3d/scar/adapter/common/WebViewAdsError;)V

    :goto_0
    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    new-instance p3, Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

    invoke-direct {p3, p1, p2}, Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->getScarAdapterObject()Lcom/unity3d/scar/adapter/common/IScarAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_scarAdapter:Lcom/unity3d/scar/adapter/common/IScarAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-interface {v0, p3, p2, p1}, Lcom/unity3d/scar/adapter/common/IScarAdapter;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/ads/gmascar/GMAScarAdapterBridge;->_webViewErrorHandler:Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;

    const-string p2, "Scar Adapter object is null"

    invoke-static {p3, p2}, Lcom/unity3d/scar/adapter/common/GMAAdsError;->InternalShowError(Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAAdsError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unity3d/services/ads/gmascar/handlers/WebViewErrorHandler;->handleError(Lcom/unity3d/scar/adapter/common/WebViewAdsError;)V

    :goto_0
    return-void
.end method
