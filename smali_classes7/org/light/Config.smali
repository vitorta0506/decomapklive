.class public Lorg/light/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/Config$ConfigKeys;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_SET_MODEL_LEVEL_IS_EMPTY:I = 0x2

.field public static final ERROR_CODE_SET_MODEL_LEVEL_NOT_EXIST:I = 0x1

.field private static final ML_AND_MIDDLE:Ljava/lang/String; = "middle"

.field private static final ML_AND_SMALL:Ljava/lang/String; = "low"

.field private static final ML_HIGH:Ljava/lang/String; = "high"

.field private static final ML_LOW:Ljava/lang/String; = "low"

.field private static final ML_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final ML_VERY_HIGH:Ljava/lang/String; = "veryhigh"

.field private static final ML_VERY_LOW:Ljava/lang/String; = "verylow"

.field private static final TAG:Ljava/lang/String; = "Config"

.field private static appContext:Landroid/content/Context; = null

.field private static degradeAsset:Z = false

.field protected static lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;


# instance fields
.field protected instanceId:I

.field protected nativeHandle:J

.field protected weakEngine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/light/LightEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/light/Config;->nativeHandle:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/light/Config;->instanceId:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/light/Config;->weakEngine:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static cleanFileCacheFromRoot(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/light/Config;->nativeCleanFileCacheFromRoot(Ljava/lang/String;)V

    return-void
.end method

.method public static deviceLevelEnumToLevelName(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x5

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "veryhigh"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "high"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "middle"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "low"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "verylow"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-le p0, v1, :cond_0

    const/4 p0, 0x5

    .line 7
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, "unknown"

    return-object p0
.end method

.method public static getAgentBundleInfoByAgentName(Ljava/lang/String;)Lorg/light/bean/LightAgentBundleInfo;
    .locals 0

    invoke-static {p0}, Lorg/light/Config;->nativeGetAgentBundleInfoByAgentName(Ljava/lang/String;)Lorg/light/bean/LightAgentBundleInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getAssetDegradeFlag()Z
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->configGetAssetDegradeFlag()Z

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

    const-string v1, "Config"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    sget-boolean v0, Lorg/light/Config;->degradeAsset:Z

    return v0
.end method

.method public static getPhonePrefLevel()I
    .locals 5

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    const/4 v1, 0x0

    const-string v2, "Config"

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->configGetPhonePrefLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_0
    :try_start_1
    sget-object v0, Lorg/light/Config;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "android.app.ActivityThread"

    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "currentApplication"

    new-array v1, v1, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 7
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/light/Config;->appContext:Landroid/content/Context;

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config phoneLevel LEVEL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/light/Config;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/light/device/LightDeviceUtils;->getPhonePerfLevel(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lorg/light/Config;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/light/device/LightDeviceUtils;->getPhonePerfLevel(Landroid/content/Context;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    .line 10
    invoke-static {v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x3

    return v0
.end method

.method public static getPhonePrefLevelName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/light/Config;->getPhonePrefLevel()I

    move-result v0

    invoke-static {v0}, Lorg/light/Config;->deviceLevelEnumToLevelName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceBundleLevelNameByAgentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "BG_SEG_AGENT"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "huawei"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "honor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const-string p0, "low"

    return-object p0

    .line 4
    :cond_2
    invoke-static {}, Lorg/light/Config;->getPhonePrefLevelName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceBundleLevelNameByAgentNameWithCV(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/light/Config;->getResourceBundleLevelNameByAgentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "BODY3D_POINT_AGENT"

    .line 2
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3
    invoke-static {}, Lorg/light/Config;->getPhonePrefLevel()I

    move-result p0

    const/4 v1, 0x5

    if-le p0, v1, :cond_0

    const/4 p0, 0x5

    :cond_0
    const/4 v1, 0x1

    if-ge p0, v1, :cond_1

    const/4 p0, 0x3

    :cond_1
    rsub-int/lit8 p0, p0, 0x6

    .line 4
    new-instance v1, Lcom/gyailib/library/GYAIDeviceQuery;

    invoke-direct {v1}, Lcom/gyailib/library/GYAIDeviceQuery;-><init>()V

    .line 5
    invoke-virtual {v1, p0}, Lcom/gyailib/library/GYAIDeviceQuery;->getBundleNameFromLevel(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get LightCV Bundle Level Exception:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Config"

    invoke-static {v1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private native nativeAddExternalRenderCallback(Ljava/lang/String;Lorg/light/callback/ExternalRenderCallback;)V
.end method

.method private native nativeCleanFileCacheForKey(Ljava/lang/String;)V
.end method

.method public static native nativeCleanFileCacheFromRoot(Ljava/lang/String;)V
.end method

.method private native nativeClearAICachedData()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeFreeCache()V
.end method

.method private native nativeGetAIData([Ljava/lang/String;I)Lorg/light/bean/LightAIDataWrapper;
.end method

.method private native nativeGetAbnormalFrameDetectResult()Ljava/lang/String;
.end method

.method public static native nativeGetAgentBundleInfoByAgentName(Ljava/lang/String;)Lorg/light/bean/LightAgentBundleInfo;
.end method

.method private native nativeGetConfigData()Ljava/lang/String;
.end method

.method private native nativeGetDisableRendererFlag()Z
.end method

.method private native nativeGetFaceData()Lorg/light/bean/LightFaceData;
.end method

.method private native nativeGetFaceFeature()[Lorg/light/bean/LightFaceFeature;
.end method

.method private native nativeGetPerformanceData()Lorg/light/PerformanceData;
.end method

.method private static native nativeGetResourceBundleLevelNameByAgentName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeOnPause()V
.end method

.method private native nativeOnResume()V
.end method

.method private static native nativeRegisterFont(Lorg/light/FontAsset;Ljava/lang/String;)V
.end method

.method private native nativeRemoveExternalRenderCallback(Ljava/lang/String;)V
.end method

.method private native nativeReplaceAIData(Lorg/light/bean/LightAIDataWrapper;)V
.end method

.method private native nativeSetAIDataListener(Lorg/light/listener/OnAIDataListener;)V
.end method

.method private native nativeSetAbnormalFrameDetectFrequency(I)V
.end method

.method private native nativeSetBGMusicHidden(Z)V
.end method

.method private native nativeSetDefaultBeautyVersion(Ljava/lang/String;)V
.end method

.method private native nativeSetDelegateAgentRequestListener(Lorg/light/listener/OnDelegateAgentRequestListener;)V
.end method

.method private native nativeSetDelegateAgentResult(Lorg/light/bean/LightDelegateAgentRequest;ZLjava/lang/String;)V
.end method

.method private native nativeSetDetectShorterEdgeLength(ILjava/lang/String;)V
.end method

.method private native nativeSetDisableRendererFlag(Z)V
.end method

.method private native nativeSetDowngradeStrategy(Ljava/lang/String;I)V
.end method

.method private native nativeSetExternalFaceData(Lorg/light/bean/LightFaceData;)V
    .param p1    # Lorg/light/bean/LightFaceData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private native nativeSetExternalRenderCallback(Lorg/light/callback/ExternalRenderCallback;)V
.end method

.method private native nativeSetHorizontalFov(F)V
.end method

.method private native nativeSetLightAIModelPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetLoadAssetListener(Lorg/light/listener/OnLoadAssetListener;)V
.end method

.method private native nativeSetOnClickWatermarkListener(Lorg/light/listener/OnClickWatermarkListener;)V
.end method

.method private native nativeSetPreInitAgents([Ljava/lang/String;)V
.end method

.method private native nativeSetPredictNextFrame(Z)V
.end method

.method private native nativeSetPredictNextTime(J)V
.end method

.method private native nativeSetSyncInitFlag(ZLjava/lang/String;)V
.end method

.method private native nativeSetSyncMode(Z)V
.end method

.method private native nativeSetTipsStatusListener(Lorg/light/listener/OnTipsStatusListener;)V
.end method

.method private native nativeSetWatermarkDataListener(Ljava/lang/String;Lorg/light/listener/OnWatermarkDataListener;)V
.end method

.method public static registerFont(Lorg/light/FontAsset;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p0, p1}, Lorg/light/ILightSDKServiceInterface;->configRegisterFont(Lorg/light/FontAsset;Ljava/lang/String;)V
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

    const-string p1, "Config"

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lorg/light/Config;->nativeRegisterFont(Lorg/light/FontAsset;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setAssetDowngradeFlag(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->configSetAssetDowngradeFlag(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    const-string v0, "Config"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sput-boolean p0, Lorg/light/Config;->degradeAsset:Z

    :goto_0
    return-void
.end method

.method private native setConfigData(Ljava/lang/String;)V
.end method

.method public static setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    sput-object p0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    return-void
.end method


# virtual methods
.method public CleanFileCacheForKey(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configCleanFileCacheForKey(ILjava/lang/String;)V
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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeCleanFileCacheForKey(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public addExternalRenderCallback(Ljava/lang/String;Lorg/light/callback/ExternalRenderCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/light/Config$2;

    invoke-direct {v2, p0, p2}, Lorg/light/Config$2;-><init>(Lorg/light/Config;Lorg/light/callback/ExternalRenderCallback;)V

    move-object p2, v2

    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->configAddExternalRenderCallback(ILjava/lang/String;Lorg/light/callback/AIDLExternalRenderCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/light/Config;->nativeAddExternalRenderCallback(Ljava/lang/String;Lorg/light/callback/ExternalRenderCallback;)V

    :goto_1
    return-void
.end method

.method public clearAICachedData()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->configClearAICachedData(I)V
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

    const-string v1, "Config"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/Config;->nativeClearAICachedData()V

    :goto_0
    return-void
.end method

.method public deviceLevelNameToLevelEnum(Ljava/lang/String;)I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x5

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "veryhigh"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "high"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "middle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "low"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "verylow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public freeCache()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->configFreeCache(I)V
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

    const-string v1, "Config"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/Config;->nativeFreeCache()V

    :goto_0
    return-void
.end method

.method public getAIData([Ljava/lang/String;I)Lorg/light/bean/LightAIDataWrapper;
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->configGetAIData(I[Ljava/lang/String;I)Lorg/light/bean/LightAIDataWrapper;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/light/Config;->nativeGetAIData([Ljava/lang/String;I)Lorg/light/bean/LightAIDataWrapper;

    move-result-object p1

    return-object p1
.end method

.method public getAbnormalFrameDetectResult()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraConfigGetAbnormalFrameDetectResult(I)Ljava/lang/String;

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

    const-string v1, "Config"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/Config;->nativeGetAbnormalFrameDetectResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigData()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    iget v2, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v1, v2}, Lorg/light/ILightSDKServiceInterface;->configGetConfigData(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lorg/light/utils/LightDataUtils;->bundle2HashMap(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Config"

    invoke-static {v2, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-direct {p0}, Lorg/light/Config;->nativeGetConfigData()Ljava/lang/String;

    move-result-object v1

    .line 6
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 11
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getDisableRendererFlag()Z
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->configGetDisableRendererFlag(I)Z

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

    const-string v1, "Config"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/Config;->nativeGetDisableRendererFlag()Z

    move-result v0

    return v0
.end method

.method public getFaceData()Lorg/light/bean/LightFaceData;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->configGetFaceData(I)Lorg/light/bean/LightFaceData;

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

    const-string v1, "Config"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/Config;->nativeGetFaceData()Lorg/light/bean/LightFaceData;

    move-result-object v0

    return-object v0
.end method

.method public getFaceFeature()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/light/bean/LightFaceFeature;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->configGetFaceFeature(I)Ljava/util/List;

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

    const-string v1, "Config"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-direct {p0}, Lorg/light/Config;->nativeGetFaceFeature()[Lorg/light/bean/LightFaceFeature;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    iget v0, p0, Lorg/light/Config;->instanceId:I

    return v0
.end method

.method public getPerformanceData()Lorg/light/PerformanceData;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->configGetPerformanceData(I)Lorg/light/PerformanceData;

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

    const-string v1, "Config"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/Config;->nativeGetPerformanceData()Lorg/light/PerformanceData;

    move-result-object v0

    return-object v0
.end method

.method public native nativeSetLightAIModelPathInfo(Ljava/lang/String;Lorg/light/bean/LightAgentBundleInfo;)V
.end method

.method public native nativeSetRenderSize(II)V
.end method

.method public onPause()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->configOnPause(I)V
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

    const-string v1, "Config"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/Config;->nativeOnPause()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->configOnResume(I)V
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

    const-string v1, "Config"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/Config;->nativeOnResume()V

    :goto_0
    return-void
.end method

.method public performFinalize()V
    .locals 5

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->configPerformFinalize(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v0, p0, Lorg/light/Config;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 5
    invoke-direct {p0}, Lorg/light/Config;->nativeFinalize()V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/light/FontAsset;

    invoke-direct {v0, p1, p2}, Lorg/light/FontAsset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p3}, Lorg/light/Config;->registerFont(Lorg/light/FontAsset;Ljava/lang/String;)V

    return-void
.end method

.method public removeExternalRenderCallback(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configRemoveExternalRenderCallback(ILjava/lang/String;)V
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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeRemoveExternalRenderCallback(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public replaceAIData(Lorg/light/bean/LightAIDataWrapper;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configReplaceAIData(ILorg/light/bean/LightAIDataWrapper;)V
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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeReplaceAIData(Lorg/light/bean/LightAIDataWrapper;)V

    :goto_0
    return-void
.end method

.method public setAIDataListener(Lorg/light/listener/OnAIDataListener;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/light/Config$7;

    invoke-direct {v2, p0, p1}, Lorg/light/Config$7;-><init>(Lorg/light/Config;Lorg/light/listener/OnAIDataListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetAIDataListener(ILorg/light/listener/AIDLOnAIDataListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetAIDataListener(Lorg/light/listener/OnAIDataListener;)V

    :goto_1
    return-void
.end method

.method public setAbnormalFrameDetectFrequency(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraConfigSetAbnormalFrameDetectFrequency(II)V
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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetAbnormalFrameDetectFrequency(I)V

    :goto_0
    return-void
.end method

.method public setBGMusicHidden(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetBGMusicHidden(IZ)V
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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetBGMusicHidden(Z)V

    :goto_0
    return-void
.end method

.method public setConfigData(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-static {p1}, Lorg/light/utils/LightDataUtils;->map2Bundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetConfigData(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Config"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 7
    monitor-enter p1

    .line 8
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v6

    .line 10
    :try_start_3
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 11
    :cond_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 13
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 15
    invoke-direct {p0, v2}, Lorg/light/Config;->setConfigData(Ljava/lang/String;)V

    const-string v2, "Config"

    .line 16
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setConfigData, json data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string p1, "Config"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[performance] setConfigData cost time:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v9, v0

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "\n[performance]setConfigData new JSONObject cost time:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n[performance]setConfigData entryset cost time:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v5, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n[performance]setConfigData json2string cost time:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v7, v5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n[performance]setConfigData  nativeSetConfigData cost time:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 19
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public setDefaultBeautyVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetDefaultBeautyVersion(ILjava/lang/String;)V
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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetDefaultBeautyVersion(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDelegateAgentRequestListener(Lorg/light/listener/OnDelegateAgentRequestListener;)V
    .locals 5

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    const-string v2, "Config"

    if-ge v0, v1, :cond_0

    const-string p1, "Android 8.1\u4ee5\u4e0b\u6682\u4e0d\u652f\u6301\u5171\u4eab\u5185\u5b58, \u8de8\u8fdb\u7a0b\u6a21\u5f0f\u4e0b\u65e0\u6cd5\u4f20\u8f93\u5927\u6570\u636eAgentResult"

    .line 3
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5
    :try_start_0
    sget-object v1, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    iget v3, p0, Lorg/light/Config;->instanceId:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/light/Config$8;

    invoke-direct {v4, p0, v0, p1}, Lorg/light/Config$8;-><init>(Lorg/light/Config;Landroid/os/Handler;Lorg/light/listener/OnDelegateAgentRequestListener;)V

    move-object p1, v4

    :goto_0
    invoke-interface {v1, v3, p1}, Lorg/light/ILightSDKServiceInterface;->configSetDelegateAgentRequestListener(ILorg/light/listener/AIDLOnDelegateAgentRequestListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    invoke-static {v2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetDelegateAgentRequestListener(Lorg/light/listener/OnDelegateAgentRequestListener;)V

    :goto_1
    return-void
.end method

.method public setDelegateAgentResult(Lorg/light/bean/LightDelegateAgentRequest;ZLjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    const-string p1, "Config"

    const-string p2, "Android 8.1\u4ee5\u4e0b\u6682\u4e0d\u652f\u6301\u5171\u4eab\u5185\u5b58, \u8de8\u8fdb\u7a0b\u6a21\u5f0f\u4e0b\u65e0\u6cd5\u4f20\u8f93\u5927\u6570\u636eAgentResult"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/light/bean/LightDelegateAgentRequest;->putDataToSharedMemory()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_data_:[B

    .line 6
    :try_start_0
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/light/ILightSDKServiceInterface;->configSetDelegateAgentResult(ILorg/light/bean/LightDelegateAgentRequest;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/light/Config;->nativeSetDelegateAgentResult(Lorg/light/bean/LightDelegateAgentRequest;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDetectShorterEdgeLength(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->configSetDetectShorterEdgeLength(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/light/Config;->nativeSetDetectShorterEdgeLength(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDisableRendererFlag(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetDisableRendererFlag(IZ)V
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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetDisableRendererFlag(Z)V

    :goto_0
    return-void
.end method

.method public setDowngradeStrategy(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->configSetDowngradeStrategy(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/light/Config;->nativeSetDowngradeStrategy(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setExternalFaceData(Lorg/light/bean/LightFaceData;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetExternalFaceData(ILorg/light/bean/LightFaceData;)V
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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetExternalFaceData(Lorg/light/bean/LightFaceData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExternalRenderCallback(Lorg/light/callback/ExternalRenderCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/light/Config$1;

    invoke-direct {v2, p0, p1}, Lorg/light/Config$1;-><init>(Lorg/light/Config;Lorg/light/callback/ExternalRenderCallback;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetExternalRenderCallback(ILorg/light/callback/AIDLExternalRenderCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetExternalRenderCallback(Lorg/light/callback/ExternalRenderCallback;)V

    :goto_1
    return-void
.end method

.method public setHorizontalFov(F)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetHorizontalFov(IF)V
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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetHorizontalFov(F)V

    :goto_0
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0

    iput p1, p0, Lorg/light/Config;->instanceId:I

    return-void
.end method

.method public setLightAIModelPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->configSetLightAIModelPath(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p2}, Lorg/light/Config;->getResourceBundleLevelNameByAgentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p0, p1, v0, p2}, Lorg/light/Config;->setLightAIModelPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLightAIModelPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 11
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 12
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/light/ILightSDKServiceInterface;->configSetLightAIModelPathWithLevel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/light/Config;->nativeSetLightAIModelPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLightAIModelPath(Ljava/lang/String;Lorg/light/bean/LightAgentBundleInfo;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Lorg/light/bean/LightAgentBundleInfo;->notValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->configSetLightAIModelPathByAgentInfo(ILjava/lang/String;Lorg/light/bean/LightAgentBundleInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/light/Config;->nativeSetLightAIModelPathInfo(Ljava/lang/String;Lorg/light/bean/LightAgentBundleInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLightEngine(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/light/LightEngine;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/light/Config;->weakEngine:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setLoadAssetListener(Lorg/light/listener/OnLoadAssetListener;)V
    .locals 4

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    sget-object v1, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    iget v2, p0, Lorg/light/Config;->instanceId:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/light/Config$6;

    invoke-direct {v3, p0, v0, p1}, Lorg/light/Config$6;-><init>(Lorg/light/Config;Landroid/os/Handler;Lorg/light/listener/OnLoadAssetListener;)V

    move-object p1, v3

    :goto_0
    invoke-interface {v1, v2, p1}, Lorg/light/ILightSDKServiceInterface;->configSetLoadAssetListener(ILorg/light/listener/AIDLOnLoadAssetListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetLoadAssetListener(Lorg/light/listener/OnLoadAssetListener;)V

    :goto_1
    return-void
.end method

.method public setOnClickWatermarkListener(Lorg/light/listener/OnClickWatermarkListener;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/light/Config$3;

    invoke-direct {v2, p0, p1}, Lorg/light/Config$3;-><init>(Lorg/light/Config;Lorg/light/listener/OnClickWatermarkListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetOnClickWatermarkListener(ILorg/light/listener/AIDLOnClickWatermarkListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetOnClickWatermarkListener(Lorg/light/listener/OnClickWatermarkListener;)V

    :goto_1
    return-void
.end method

.method public setPreInitAgents([Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetPreInitAgents(I[Ljava/lang/String;)V
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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetPreInitAgents([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setPredictNextFrame(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetPredictNextFrame(IZ)V
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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetPredictNextFrame(Z)V

    :goto_0
    return-void
.end method

.method public setPredictNextTime(J)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->configSetPredictNextTime(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/light/Config;->nativeSetPredictNextTime(J)V

    :goto_0
    return-void
.end method

.method public setRenderSize(II)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->configSetRenderSize(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/light/Config;->nativeSetRenderSize(II)V

    :goto_0
    return-void
.end method

.method public native setScriptOutputListener(Lorg/light/listener/OnScriptOutputListener;)V
.end method

.method public setSyncInitFlag(ZLjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->configSetSyncInitFlag(IZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/light/Config;->nativeSetSyncInitFlag(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSyncMode(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetSyncMode(IZ)V
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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetSyncMode(Z)V

    :goto_0
    return-void
.end method

.method public setTipsStatusListener(Lorg/light/listener/OnTipsStatusListener;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/light/Config$5;

    invoke-direct {v2, p0, p1}, Lorg/light/Config$5;-><init>(Lorg/light/Config;Lorg/light/listener/OnTipsStatusListener;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->configSetTipsStatusListener(ILorg/light/listener/AIDLOnTipsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    const-string v0, "Config"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/Config;->nativeSetTipsStatusListener(Lorg/light/listener/OnTipsStatusListener;)V

    :goto_1
    return-void
.end method

.method public setWatermarkDataListener(Ljava/lang/String;Lorg/light/listener/OnWatermarkDataListener;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/light/Config$4;

    invoke-direct {v2, p0, p2}, Lorg/light/Config$4;-><init>(Lorg/light/Config;Lorg/light/listener/OnWatermarkDataListener;)V

    move-object p2, v2

    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->configSetWatermarkDataListener(ILjava/lang/String;Lorg/light/listener/AIDLOnWatermarkDataListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Config"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/light/Config;->nativeSetWatermarkDataListener(Ljava/lang/String;Lorg/light/listener/OnWatermarkDataListener;)V

    :goto_1
    return-void
.end method

.method public native setYTDataListener(Lorg/light/listener/YTDataListener;)V
.end method
