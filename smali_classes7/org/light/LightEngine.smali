.class public Lorg/light/LightEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/LightEngine$SDKServiceRuntimeErrorCallback;,
        Lorg/light/LightEngine$SDKServiceCallback;
    }
.end annotation


# static fields
.field private static final SERVICE_CONNECTION_STATUS_BINDING_DIED:Ljava/lang/String; = "SERVICE_CONNECTION_STATUS_BINDING_DIED"

.field private static final SERVICE_CONNECTION_STATUS_CONNTECTED:Ljava/lang/String; = "SERVICE_CONNECTION_STATUS_CONNTECTED"

.field private static final SERVICE_CONNECTION_STATUS_DISCONNTECTED:Ljava/lang/String; = "SERVICE_CONNECTION_STATUS_DISCONNTECTED"

.field private static final SERVICE_CONNECTION_STATUS_NULL_BINDING:Ljava/lang/String; = "SERVICE_CONNECTION_STATUS_NULL_BINDING"

.field private static final TAG:Ljava/lang/String; = "LightEngine"

.field private static final WAIT_TIMEOUT:I = 0x1f4

.field private static appContext:Landroid/content/Context;

.field private static appEntry:Ljava/lang/String;

.field private static appID:Ljava/lang/String;

.field private static final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private static lightSDKPid:I

.field private static lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

.field private static final lightSDKServiceLock:Lorg/light/service/SingleLock;

.field public static lock:Ljava/lang/Object;

.field private static sdkVersion:Ljava/lang/String;

.field private static final serviceCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/light/LightEngine$SDKServiceRuntimeErrorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final serviceConnection:Landroid/content/ServiceConnection;

.field private static volatile serviceConnectionStatus:Ljava/lang/String;


# instance fields
.field private cameraControllerInstanceId:I

.field private cameraTextureTimestamp:J

.field private instanceId:I

.field private nativeContext:J

.field private selfCameraConfig:Lorg/light/CameraConfig;

.field private selfSurface:Lorg/light/LightSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/light/LightEngine;->lock:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/light/LightEngine;->serviceCallbacks:Ljava/util/Set;

    .line 3
    new-instance v0, Lorg/light/service/SingleLock;

    invoke-direct {v0}, Lorg/light/service/SingleLock;-><init>()V

    sput-object v0, Lorg/light/LightEngine;->lightSDKServiceLock:Lorg/light/service/SingleLock;

    .line 4
    new-instance v0, Lorg/light/LightEngine$1;

    invoke-direct {v0}, Lorg/light/LightEngine$1;-><init>()V

    sput-object v0, Lorg/light/LightEngine;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const-string v0, "UNDEFINED"

    .line 5
    sput-object v0, Lorg/light/LightEngine;->serviceConnectionStatus:Ljava/lang/String;

    .line 6
    new-instance v0, Lorg/light/LightEngine$2;

    invoke-direct {v0}, Lorg/light/LightEngine$2;-><init>()V

    sput-object v0, Lorg/light/LightEngine;->serviceConnection:Landroid/content/ServiceConnection;

    .line 7
    :try_start_0
    invoke-static {}, Lorg/light/LightEngine;->nativeInit()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/light/LightEngine;->nativeContext:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/light/LightEngine;->instanceId:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/light/LightEngine;->selfSurface:Lorg/light/LightSurface;

    .line 5
    iput-object v1, p0, Lorg/light/LightEngine;->selfCameraConfig:Lorg/light/CameraConfig;

    .line 6
    iput v0, p0, Lorg/light/LightEngine;->cameraControllerInstanceId:I

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lorg/light/LightEngine;->cameraTextureTimestamp:J

    return-void
.end method

.method static synthetic access$000()Lorg/light/ILightSDKServiceInterface;
    .locals 1

    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lorg/light/LightEngine;->serviceConnectionStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/Set;
    .locals 1

    sget-object v0, Lorg/light/LightEngine;->serviceCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/IBinder$DeathRecipient;
    .locals 1

    sget-object v0, Lorg/light/LightEngine;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$400(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    invoke-static {p0}, Lorg/light/LightEngine;->setLightSDKServiceInterfaceForCoreClasses(Lorg/light/ILightSDKServiceInterface;)V

    return-void
.end method

.method static synthetic access$500()Lorg/light/service/SingleLock;
    .locals 1

    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceLock:Lorg/light/service/SingleLock;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Landroid/os/Bundle;Lorg/light/LightEngine$SDKServiceCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/light/LightEngine;->handleStartSdkService(Landroid/content/Context;Landroid/os/Bundle;Lorg/light/LightEngine$SDKServiceCallback;)V

    return-void
.end method

.method public static addSDKServiceRuntimeErrorCallback(Lorg/light/LightEngine$SDKServiceRuntimeErrorCallback;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lorg/light/LightEngine;->serviceCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static appEntry()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/light/LightEngine;->appEntry:Ljava/lang/String;

    return-object v0
.end method

.method public static appID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/light/LightEngine;->appID:Ljava/lang/String;

    return-object v0
.end method

.method private static native auth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static componentLevel()I
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->lightEngineComponentLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

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

    const-string v1, "LightEngine"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lorg/light/LightEngine;->nativeComponentLevel()I

    move-result v0

    return v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/light/LightEngine;->sdkVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/light/LightEngine;->version()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/light/LightEngine;->sdkVersion:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lorg/light/LightEngine;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method private static handleStartSdkService(Landroid/content/Context;Landroid/os/Bundle;Lorg/light/LightEngine$SDKServiceCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightEngine;->serviceConnectionStatus:Ljava/lang/String;

    const-string v1, "SERVICE_CONNECTION_STATUS_CONNTECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "LightEngine"

    const-string p1, "LightSDKService already connected"

    .line 2
    invoke-static {p0, p1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3
    sget p0, Lorg/light/LightEngine;->lightSDKPid:I

    invoke-interface {p2, p0}, Lorg/light/LightEngine$SDKServiceCallback;->onServiceStarted(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-nez p0, :cond_3

    if-eqz p2, :cond_2

    const-string p0, "startSDKService but context == null"

    .line 4
    invoke-interface {p2, p0, v0}, Lorg/light/LightEngine$SDKServiceCallback;->onServiceCreateError(Ljava/lang/String;Z)V

    const-string p1, "LightEngine"

    .line 5
    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 6
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/light/service/LightSDKService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    if-eqz p2, :cond_5

    .line 8
    sget-object p1, Lorg/light/LightEngine;->serviceCallbacks:Ljava/util/Set;

    monitor-enter p1

    .line 9
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_5
    :goto_0
    sget-object p1, Lorg/light/LightEngine;->serviceConnection:Landroid/content/ServiceConnection;

    const/16 v2, 0x41

    .line 12
    invoke-virtual {p0, v1, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 13
    invoke-static {p2}, Lorg/light/LightEngine;->waitBinderConnect(Lorg/light/LightEngine$SDKServiceCallback;)V

    goto :goto_1

    :cond_6
    const-string p0, "LightEngine"

    const-string p1, "bindService failed"

    .line 14
    invoke-static {p0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "bindService failed"

    if-eqz p2, :cond_7

    .line 15
    invoke-interface {p2, p0, v0}, Lorg/light/LightEngine$SDKServiceCallback;->onServiceCreateError(Ljava/lang/String;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static init()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->lightEngineInit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    const-string v1, "LightEngine"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lorg/light/LightSurface;->init()V

    .line 5
    invoke-static {}, Lorg/light/VideoOutput;->init()V

    :goto_0
    return-void
.end method

.method public static initAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    sput-object p0, Lorg/light/LightEngine;->appContext:Landroid/content/Context;

    .line 2
    sput-object p2, Lorg/light/LightEngine;->appID:Ljava/lang/String;

    .line 3
    sput-object p3, Lorg/light/LightEngine;->appEntry:Ljava/lang/String;

    .line 4
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lorg/light/ILightSDKServiceInterface;->lightEngineInitAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException:\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LightEngine"

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x7d0

    return p0

    :cond_0
    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    .line 8
    :goto_0
    invoke-static {p0, p3, p1, p2}, Lorg/light/LightEngine;->auth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static initContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lorg/light/LightEngine;->appContext:Landroid/content/Context;

    return-void
.end method

.method public static initDeviceConfig(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, v0}, Lorg/light/LightEngine;->initDeviceConfig(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initDeviceConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p0, p1}, Lorg/light/ILightSDKServiceInterface;->lightEngineInitDeviceConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LightEngine"

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lorg/light/LightEngine;->nativeInitDeviceConfig(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static isDeviceAbilitySupported(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->lightEngineIsDeviceAbilitySupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LightEngine"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/light/LightEngine;->nativeIsDeviceAbilitySupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadLibraryForSDKService(Landroid/os/Bundle;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {p0}, Lorg/light/DeviceSupportUtil;->checkCrossProcessModeAvailable(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Lorg/light/service/LightSDKService;->loadSo(Landroid/os/Bundle;)Lorg/light/service/LightSDKService$LoadSOResult;

    move-result-object v0

    .line 4
    sget-object v2, Lorg/light/service/LightSDKService$LoadSOResult;->LoadFailed:Lorg/light/service/LightSDKService$LoadSOResult;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->setSoLoadSuccess(Z)V

    .line 5
    :cond_1
    invoke-static {}, Lorg/light/DeviceSupportUtil;->isSoLoadSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "LightEngine"

    const-string v0, "loadLibraryForSDKService failed"

    .line 6
    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_2
    :try_start_0
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->lightEngineLoadLibraryForSDKService(Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    return v1
.end method

.method public static make(Lorg/light/VideoOutputConfig;Lorg/light/AudioOutputConfig;Lorg/light/RendererConfig;)Lorg/light/LightEngine;
    .locals 6

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "LightEngine:%x init success"

    const/4 v4, 0x0

    const-string v5, "LightEngine"

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lorg/light/ILightSDKServiceInterface;->lightEngineMake(Lorg/light/VideoOutputConfig;Lorg/light/AudioOutputConfig;Lorg/light/RendererConfig;)Lorg/light/service/InstanceId;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    new-instance p1, Lorg/light/LightEngine;

    invoke-direct {p1}, Lorg/light/LightEngine;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    iget p0, p0, Lorg/light/service/InstanceId;->id:I

    invoke-virtual {p1, p0}, Lorg/light/LightEngine;->setInstanceId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, p1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v4, p1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException:\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    new-array p0, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 7
    :cond_1
    sget-object v0, Lorg/light/LightEngine;->appContext:Landroid/content/Context;

    if-nez v0, :cond_2

    return-object v4

    .line 8
    :cond_2
    invoke-static {p0, p1, p2}, Lorg/light/LightEngine;->makeEngine(Lorg/light/VideoOutputConfig;Lorg/light/AudioOutputConfig;Lorg/light/RendererConfig;)Lorg/light/LightEngine;

    move-result-object p0

    .line 9
    new-instance p1, Lorg/light/LightEngine$3;

    invoke-direct {p1}, Lorg/light/LightEngine$3;-><init>()V

    invoke-static {p1}, Lorg/light/utils/ThreadUtils;->executeTask(Ljava/lang/Runnable;)V

    new-array p1, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static native makeEngine(Lorg/light/VideoOutputConfig;Lorg/light/AudioOutputConfig;Lorg/light/RendererConfig;)Lorg/light/LightEngine;
.end method

.method private native nativeAudioOutput()Lorg/light/AudioOutput;
.end method

.method private static native nativeComponentLevel()I
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetOriginTexture()I
.end method

.method private native nativeGetResultTexture()I
.end method

.method private static native nativeInit()V
.end method

.method private static native nativeInitDeviceConfig(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeIsDeviceAbilitySupported(Ljava/lang/String;)Z
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetAssetForCamera(Lorg/light/LightAsset;)Lorg/light/CameraController;
.end method

.method private native nativeSetAssetForMovie(Lorg/light/LightAsset;)Lorg/light/MovieController;
.end method

.method private native nativeSetSurface(Lorg/light/LightSurface;)Z
.end method

.method private native nativeSetTemplateAssets([Lorg/light/TemplateClip;)[Lorg/light/Controller;
.end method

.method private static native nativeVersion()Ljava/lang/String;
.end method

.method private native nativeVideoOutput()Lorg/light/VideoOutput;
.end method

.method public static removeSDKServiceRuntimeErrorCallback(Lorg/light/LightEngine$SDKServiceRuntimeErrorCallback;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lorg/light/LightEngine;->serviceCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static setAppEntry(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/light/LightEngine;->appEntry:Ljava/lang/String;

    return-void
.end method

.method public static setCrossProcessModeEnabled(Z)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    sget-object p0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-nez p0, :cond_0

    .line 2
    const-class p0, Lorg/light/LightEngine;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "enable cross process mode but lightSDKServiceInterface == null, please call startSDKService() first"

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lorg/light/LightEngine;->setLightSDKServiceInterfaceForCoreClasses(Lorg/light/ILightSDKServiceInterface;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 4
    invoke-static {p0}, Lorg/light/LightEngine;->setLightSDKServiceInterfaceForCoreClasses(Lorg/light/ILightSDKServiceInterface;)V

    :goto_0
    return-void
.end method

.method public static setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V
    .locals 3

    const-string v0, "LightEngine"

    .line 1
    sput-object p0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lorg/light/ILightSDKServiceInterface;->lightServicePid()I

    move-result p0

    sput p0, Lorg/light/LightEngine;->lightSDKPid:I

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lightSDKPid:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/light/LightEngine;->lightSDKPid:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    sput p0, Lorg/light/LightEngine;->lightSDKPid:I

    :goto_0
    return-void
.end method

.method private static setLightSDKServiceInterfaceForCoreClasses(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/light/LightEngine;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 2
    invoke-static {p0}, Lorg/light/LightSurface;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 3
    invoke-static {p0}, Lorg/light/LightAsset;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 4
    invoke-static {p0}, Lorg/light/Config;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 5
    invoke-static {p0}, Lorg/light/Controller;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 6
    invoke-static {p0}, Lorg/light/VideoOutput;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 7
    invoke-static {p0}, Lorg/light/AudioOutput;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 8
    invoke-static {p0}, Lorg/light/PerformanceMonitor;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 9
    invoke-static {p0}, Lorg/light/report/LightReportManager;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 10
    invoke-static {p0}, Lorg/light/utils/LightLogUtil;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 11
    invoke-static {p0}, Lorg/light/DebugUtils;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 12
    invoke-static {p0}, Lorg/light/bean/WMElement;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 13
    invoke-static {p0}, Lorg/light/lightAssetKit/LightAssetDataContext;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    .line 14
    invoke-static {p0}, Lorg/light/NativeBuffer;->setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V

    return-void
.end method

.method public static startSDKService(Landroid/content/Context;Landroid/os/Bundle;Lorg/light/LightEngine$SDKServiceCallback;)V
    .locals 2

    const-string v0, "LightEngine"

    const-string v1, "startSDKService"

    .line 1
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SDKServiceStartHT"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    new-instance v0, Lorg/light/LightEngine$4;

    invoke-direct {v0, p1, p2, p0, v1}, Lorg/light/LightEngine$4;-><init>(Landroid/os/Bundle;Lorg/light/LightEngine$SDKServiceCallback;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static stopSDKService(Landroid/content/Context;)V
    .locals 3

    const-string v0, "LightEngine"

    const-string v1, "stopSDKService"

    .line 1
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lorg/light/LightEngine;->serviceCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    sget-object v0, Lorg/light/LightEngine;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "LightEngine"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSDKService failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string p0, "SERVICE_CONNECTION_STATUS_DISCONNTECTED"

    .line 8
    sput-object p0, Lorg/light/LightEngine;->serviceConnectionStatus:Ljava/lang/String;

    return-void

    :catchall_1
    move-exception p0

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static version()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->lightEngineVersion()Ljava/lang/String;

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

    const-string v1, "LightEngine"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lorg/light/LightEngine;->nativeVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static waitBinderConnect(Lorg/light/LightEngine$SDKServiceCallback;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    sget-object v1, Lorg/light/LightEngine;->lightSDKServiceLock:Lorg/light/service/SingleLock;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    sget-object v2, Lorg/light/LightEngine;->serviceConnectionStatus:Ljava/lang/String;

    const-string v3, "SERVICE_CONNECTION_STATUS_CONNTECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lorg/light/service/SingleLock;->acquire()V

    .line 4
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 5
    :try_start_2
    sget-object v1, Lorg/light/LightEngine;->serviceConnectionStatus:Ljava/lang/String;

    const-string v2, "SERVICE_CONNECTION_STATUS_CONNTECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget v1, Lorg/light/LightEngine;->lightSDKPid:I

    invoke-interface {p0, v1}, Lorg/light/LightEngine$SDKServiceCallback;->onServiceStarted(I)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lorg/light/LightEngine;->serviceConnectionStatus:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Lorg/light/LightEngine$SDKServiceCallback;->onServiceCreateError(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lightSDKServiceLock acquire failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightEngine"

    .line 10
    invoke-static {v2, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 11
    invoke-interface {p0, v1, v0}, Lorg/light/LightEngine$SDKServiceCallback;->onServiceCreateError(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public audioOutput()Lorg/light/AudioOutput;
    .locals 5

    const-string v0, "LightEngine"

    .line 1
    sget-object v1, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget v3, p0, Lorg/light/LightEngine;->instanceId:I

    invoke-interface {v1, v3}, Lorg/light/ILightSDKServiceInterface;->lightEngineAudioOutput(I)Lorg/light/service/InstanceId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v3, Lorg/light/AudioOutput;

    invoke-direct {v3}, Lorg/light/AudioOutput;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    iget v1, v1, Lorg/light/service/InstanceId;->id:I

    invoke-virtual {v3, v1}, Lorg/light/AudioOutput;->setInstanceId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v1

    .line 5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "audioOutput:%x init success"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 7
    :cond_1
    invoke-direct {p0}, Lorg/light/LightEngine;->nativeAudioOutput()Lorg/light/AudioOutput;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    iget v0, p0, Lorg/light/LightEngine;->instanceId:I

    if-eqz v0, :cond_0

    sget-object v1, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v1, v0}, Lorg/light/ILightSDKServiceInterface;->removeSdkInstance(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v0, p0, Lorg/light/LightEngine;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 6
    invoke-direct {p0}, Lorg/light/LightEngine;->nativeFinalize()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCameraConfig()Lorg/light/CameraConfig;
    .locals 1

    iget-object v0, p0, Lorg/light/LightEngine;->selfCameraConfig:Lorg/light/CameraConfig;

    return-object v0
.end method

.method public getCameraControllerInstanceId()I
    .locals 1

    iget v0, p0, Lorg/light/LightEngine;->cameraControllerInstanceId:I

    return v0
.end method

.method public getCameraTextureTimestamp()J
    .locals 2

    iget-wide v0, p0, Lorg/light/LightEngine;->cameraTextureTimestamp:J

    return-wide v0
.end method

.method public getLightSurface()Lorg/light/LightSurface;
    .locals 1

    iget-object v0, p0, Lorg/light/LightEngine;->selfSurface:Lorg/light/LightSurface;

    return-object v0
.end method

.method public getOriginTexture()I
    .locals 4

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lorg/light/LightEngine;->selfCameraConfig:Lorg/light/CameraConfig;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/light/Config;->getInstanceId()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/light/ILightSDKServiceInterface;->lightEngineGetOriginTexture(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LightEngine"

    invoke-static {v2, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_1
    invoke-direct {p0}, Lorg/light/LightEngine;->nativeGetOriginTexture()I

    move-result v0

    return v0
.end method

.method public getResultTexture()I
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/LightEngine;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightEngineGetResultTexture(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

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

    const-string v1, "LightEngine"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/LightEngine;->nativeGetResultTexture()I

    move-result v0

    return v0
.end method

.method public native nativeSetConfig(Lorg/light/Config;)V
.end method

.method public final release()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/LightEngine;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightEngineRelease(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    const-string v1, "LightEngine"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/LightEngine;->nativeRelease()V

    :goto_0
    return-void
.end method

.method public setAssetForCamera(Lorg/light/LightAsset;)Lorg/light/CameraController;
    .locals 5

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    const/4 v1, 0x0

    const-string v2, "LightEngine"

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 2
    :try_start_0
    iget v4, p0, Lorg/light/LightEngine;->instanceId:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/light/LightAsset;->getInstanceId()I

    move-result p1

    .line 4
    :goto_0
    invoke-interface {v0, v4, p1}, Lorg/light/ILightSDKServiceInterface;->lightEngineSetAssetForCamera(II)Lorg/light/service/InstanceId;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    new-instance v0, Lorg/light/CameraController;

    invoke-direct {v0}, Lorg/light/CameraController;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    iget p1, p1, Lorg/light/service/InstanceId;->id:I

    invoke-virtual {v0, p1}, Lorg/light/Controller;->setInstanceId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, v0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/LightEngine;->nativeSetAssetForCamera(Lorg/light/LightAsset;)Lorg/light/CameraController;

    move-result-object v3

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lorg/light/Controller;->setLightEngine(Ljava/lang/ref/WeakReference;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "cameraController:%x init success"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v3
.end method

.method public setAssetForMovie(Lorg/light/LightAsset;)Lorg/light/MovieController;
    .locals 5

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    const/4 v1, 0x0

    const-string v2, "LightEngine"

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    .line 2
    :try_start_0
    iget v4, p0, Lorg/light/LightEngine;->instanceId:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/light/LightAsset;->getInstanceId()I

    move-result p1

    .line 4
    :goto_0
    invoke-interface {v0, v4, p1}, Lorg/light/ILightSDKServiceInterface;->lightEngineSetAssetForMovie(II)Lorg/light/service/InstanceId;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    new-instance v0, Lorg/light/MovieController;

    invoke-direct {v0}, Lorg/light/MovieController;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    iget p1, p1, Lorg/light/service/InstanceId;->id:I

    invoke-virtual {v0, p1}, Lorg/light/Controller;->setInstanceId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, v0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/LightEngine;->nativeSetAssetForMovie(Lorg/light/LightAsset;)Lorg/light/MovieController;

    move-result-object v3

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lorg/light/Controller;->setLightEngine(Ljava/lang/ref/WeakReference;)V

    :cond_3
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "movieController:%x init success"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public setCameraTextureTimestamp(IJ)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/light/LightEngine;->cameraControllerInstanceId:I

    .line 2
    iput-wide p2, p0, Lorg/light/LightEngine;->cameraTextureTimestamp:J

    return-void
.end method

.method public setCameraTextureTimestamp(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lorg/light/LightEngine;->cameraTextureTimestamp:J

    return-void
.end method

.method public setConfig(Lorg/light/Config;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/light/Config;->setLightEngine(Ljava/lang/ref/WeakReference;)V

    .line 3
    instance-of v0, p1, Lorg/light/CameraConfig;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lorg/light/CameraConfig;

    iput-object v0, p0, Lorg/light/LightEngine;->selfCameraConfig:Lorg/light/CameraConfig;

    .line 5
    :cond_1
    :try_start_0
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    iget v1, p0, Lorg/light/LightEngine;->instanceId:I

    invoke-virtual {p1}, Lorg/light/Config;->getInstanceId()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->lightEngineSetConfig(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightEngine"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lorg/light/LightEngine;->nativeSetConfig(Lorg/light/Config;)V

    :goto_0
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0

    iput p1, p0, Lorg/light/LightEngine;->instanceId:I

    return-void
.end method

.method public setSurface(Lorg/light/LightSurface;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lorg/light/LightEngine;->selfSurface:Lorg/light/LightSurface;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget v2, p0, Lorg/light/LightEngine;->instanceId:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/light/LightSurface;->getInstanceId()I

    move-result p1

    .line 5
    :goto_0
    invoke-interface {v0, v2, p1}, Lorg/light/ILightSDKServiceInterface;->lightEngineSetSurface(II)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightEngine"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/LightEngine;->nativeSetSurface(Lorg/light/LightSurface;)Z

    move-result p1

    return p1
.end method

.method public setTemplateAssets([Lorg/light/TemplateClip;)[Lorg/light/Controller;
    .locals 5

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget v2, p0, Lorg/light/LightEngine;->instanceId:I

    invoke-interface {v0, v2, p1}, Lorg/light/ILightSDKServiceInterface;->lightEngineSetTemplateAssets(I[Lorg/light/TemplateClip;)[I

    move-result-object p1

    .line 3
    array-length v0, p1

    new-array v1, v0, [Lorg/light/Controller;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    new-instance v3, Lorg/light/MovieController;

    invoke-direct {v3}, Lorg/light/MovieController;-><init>()V

    aput-object v3, v1, v2

    .line 5
    aget-object v3, v1, v2

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Lorg/light/Controller;->setInstanceId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightEngine"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/LightEngine;->nativeSetTemplateAssets([Lorg/light/TemplateClip;)[Lorg/light/Controller;

    move-result-object p1

    return-object p1
.end method

.method public videoOutput()Lorg/light/VideoOutput;
    .locals 5

    .line 1
    sget-object v0, Lorg/light/LightEngine;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    const-string v1, "LightEngine"

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget v3, p0, Lorg/light/LightEngine;->instanceId:I

    invoke-interface {v0, v3}, Lorg/light/ILightSDKServiceInterface;->lightEngineVideoOutput(I)Lorg/light/service/InstanceId;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v3, Lorg/light/VideoOutput;

    invoke-direct {v3}, Lorg/light/VideoOutput;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    iget v0, v0, Lorg/light/service/InstanceId;->id:I

    invoke-virtual {v3, v0}, Lorg/light/VideoOutput;->setInstanceId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-direct {p0}, Lorg/light/LightEngine;->nativeVideoOutput()Lorg/light/VideoOutput;

    move-result-object v2

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lorg/light/VideoOutput;->setLightEngine(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 8
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "videoOutput:%x init success"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method
