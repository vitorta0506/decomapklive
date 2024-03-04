.class public Lorg/light/PerformanceMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceMonitor"

.field private static lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBenchData()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/light/PerformanceMonitor;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorGetBenchData()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lorg/light/PerformanceMonitor;->nativeGetBenchData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPerformanceData()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/light/PerformanceMonitor;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorGetPerformanceData()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lorg/light/PerformanceMonitor;->nativeGetPerformanceData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeGetBenchData()Ljava/lang/String;
.end method

.method private static native nativeGetPerformanceData()Ljava/lang/String;
.end method

.method private static native nativeSavePerformanceData()Z
.end method

.method private static native nativeSetBenchConfig(Ljava/lang/String;)V
.end method

.method private static native nativeSetBenchConfigWithThreshold(Ljava/lang/String;F)V
.end method

.method private static native nativeSetBenchEnable(Z)V
.end method

.method private static native nativeSetBenchEnableWithThreshold(ZF)V
.end method

.method private static native nativeSetPerfEnable(ZZZLjava/lang/String;)V
.end method

.method private static native nativeSetPerformanceRunMode(I)V
.end method

.method public static savePerformanceData()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/light/PerformanceMonitor;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSavePerformanceData()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lorg/light/PerformanceMonitor;->nativeSavePerformanceData()Z

    move-result v0

    return v0
.end method

.method public static setBenchConfig(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/PerformanceMonitor;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSetBenchConfig(Ljava/lang/String;)V
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

    const-string v0, "PerformanceMonitor"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/light/PerformanceMonitor;->nativeSetBenchConfig(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setBenchConfigWithThreshold(Ljava/lang/String;F)V
    .locals 1

    .line 1
    sget-object v0, Lorg/light/PerformanceMonitor;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0, p1}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSetBenchConfigWithThreshold(Ljava/lang/String;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PerformanceMonitor"

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lorg/light/PerformanceMonitor;->nativeSetBenchConfigWithThreshold(Ljava/lang/String;F)V

    :goto_0
    return-void
.end method

.method public static setBenchEnable(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/PerformanceMonitor;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSetBenchEnable(Z)V
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

    const-string v0, "PerformanceMonitor"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/light/PerformanceMonitor;->nativeSetBenchEnable(Z)V

    :goto_0
    return-void
.end method

.method public static setBenchEnableWithThreshold(ZF)V
    .locals 1

    .line 1
    sget-object v0, Lorg/light/PerformanceMonitor;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0, p1}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSetBenchEnableWithThreshold(ZF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PerformanceMonitor"

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lorg/light/PerformanceMonitor;->nativeSetBenchEnableWithThreshold(ZF)V

    :goto_0
    return-void
.end method

.method public static setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    sput-object p0, Lorg/light/PerformanceMonitor;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    return-void
.end method

.method public static setPerfEnable(ZZZLjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/light/PerformanceMonitor;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0, p1, p2, p3}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSetPerfEnable(ZZZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException:\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PerformanceMonitor"

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/light/PerformanceMonitor;->nativeSetPerfEnable(ZZZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setPerformanceRunMode(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/PerformanceMonitor;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->performanceMonitorSetPerformanceRunMode(I)V
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

    const-string v0, "PerformanceMonitor"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/light/PerformanceMonitor;->nativeSetPerformanceRunMode(I)V

    :goto_0
    return-void
.end method
