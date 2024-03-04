.class public Lorg/light/DeviceSupportUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEVICE_ABILITY_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DeviceSupportUtil"

.field private static inited:Z = false

.field private static soLoadSuccess:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 29

    const-string v0, "3d.kapu"

    const-string v1, "ai.emotion"

    const-string v2, "ai.hand"

    const-string v3, "ai.3dmm"

    const-string v4, "ai"

    const-string v5, "ai.face3d"

    const-string v6, "OpenCL"

    const-string v7, "ai.gan"

    const-string v8, "ai.segment.gpu"

    const-string v9, "JavaScript"

    const-string v10, "ai.segment"

    const-string v11, "ai.segmentHair"

    const-string v12, "ai.body"

    const-string v13, "ai.catFace"

    const-string v14, "ai.faceStaticFeature"

    const-string v15, "ai.expression"

    const-string v16, "shareGLContextError"

    const-string v17, "render.shadow"

    const-string v18, "render.fxaa"

    const-string v19, "render.msaa"

    const-string v20, "render.ssao"

    const-string v21, "render.dither"

    const-string v22, "render.bloom"

    const-string v23, "render.vignette"

    const-string v24, "render.color_grading"

    const-string v25, "ai.InitSegmentHair"

    const-string v26, "imu.smooth.enable"

    const-string v27, "material.sticker3d"

    const-string v28, "fence"

    filled-new-array/range {v0 .. v28}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/light/DeviceSupportUtil;->DEVICE_ABILITY_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCrossProcessModeAvailable(Landroid/os/Bundle;)Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/light/DeviceSupportUtil;->isHardwareBufferAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-boolean v0, Lorg/light/DeviceSupportUtil;->soLoadSuccess:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 3
    invoke-static {p0}, Lorg/light/service/LightSDKService;->loadSo(Landroid/os/Bundle;)Lorg/light/service/LightSDKService$LoadSOResult;

    move-result-object p0

    .line 4
    sget-object v0, Lorg/light/service/LightSDKService$LoadSOResult;->LoadFailed:Lorg/light/service/LightSDKService$LoadSOResult;

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lorg/light/DeviceSupportUtil;->soLoadSuccess:Z

    .line 5
    :cond_2
    sget-boolean p0, Lorg/light/DeviceSupportUtil;->soLoadSuccess:Z

    const-string v0, "DeviceSupportUtil"

    if-nez p0, :cond_3

    const-string p0, "checkCrossProcessModeAvailable so load failed"

    .line 6
    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_3
    invoke-static {}, Lorg/light/NativeBuffer;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "checkCrossProcessModeAvailable NativeBuffer not Available"

    .line 8
    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    return v2
.end method

.method private static getDeviceAbilityKeys(Lorg/light/LightAsset;)[Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 2
    sget-object v2, Lorg/light/DeviceSupportUtil;->DEVICE_ABILITY_ARRAY:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 3
    invoke-virtual {p0, v5}, Lorg/light/LightAsset;->needRenderAbility(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 6
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static getDeviceSupportAbilities(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lorg/light/DeviceSupportUtil;->inited:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/light/DeviceSupportUtil;->init()V

    :cond_0
    const-string v0, "OpenGL"

    .line 3
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "3d.kapu"

    .line 4
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.emotion"

    .line 5
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.hand"

    .line 6
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.3dmm"

    .line 7
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai"

    .line 8
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "material.sticker3d"

    .line 9
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.face3d"

    .line 10
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OpenCL"

    .line 11
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.gan"

    .line 12
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.segment.gpu"

    .line 13
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "JavaScript"

    .line 14
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.segment"

    .line 15
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.segmentHair"

    .line 16
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.body"

    .line 17
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.catFace"

    .line 18
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.gender"

    .line 19
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.expression"

    .line 20
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shareGLContextError"

    .line 21
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "render.shadow"

    .line 22
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "render.fxaa"

    .line 23
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "render.msaa"

    .line 24
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "render.ssao"

    .line 25
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "render.ssao"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "render.dither"

    .line 26
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "render.dither"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "render.bloom"

    .line 27
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "render.bloom"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "render.vignette"

    .line 28
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "render.vignette"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "render.color_grading"

    .line 29
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "render.color_grading"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ace3d.flush"

    .line 30
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ace3d.flush"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ai.InitSegmentHair"

    .line 31
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ai.InitSegmentHair"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "imu.smooth.enable"

    .line 32
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "imu.smooth.enable"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fence"

    .line 33
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "fence"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static declared-synchronized init()V
    .locals 8

    const-class v0, Lorg/light/DeviceSupportUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lorg/light/DeviceSupportUtil;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 5
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 6
    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v3, v2}, Lorg/light/device/DeviceInstance;->initSettings(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Lorg/light/gles/GLCapabilities;->init(Z)V

    .line 8
    invoke-static {}, Lorg/light/device/GpuScopeAttrs;->getInstance()Lorg/light/device/GpuScopeAttrs;

    move-result-object v2

    invoke-virtual {v2}, Lorg/light/device/GpuScopeAttrs;->getDeviceModel()Lorg/light/device/GpuScopeAttrs$GpuBean$DeviceModel;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lorg/light/device/GpuScopeAttrs;->getInstance()Lorg/light/device/GpuScopeAttrs;

    move-result-object v2

    invoke-virtual {v2}, Lorg/light/device/GpuScopeAttrs;->getGPuModel()Lorg/light/device/GpuScopeAttrs$GpuBean$GpuModel;

    move-result-object v2

    if-nez v2, :cond_1

    .line 9
    invoke-static {}, Lorg/light/device/GpuScopeAttrs;->getInstance()Lorg/light/device/GpuScopeAttrs;

    move-result-object v2

    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {}, Lorg/light/gles/GLCapabilities;->getGPUInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v6

    invoke-virtual {v6}, Lorg/light/device/DeviceInstance;->getDeviceVersion()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 11
    invoke-virtual/range {v2 .. v7}, Lorg/light/device/GpuScopeAttrs;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DeviceSupportUtil"

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DeviceSupportUtil"

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/light/device/DeviceInstance;->getDeviceVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DeviceSupportUtil"

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPUInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/light/gles/GLCapabilities;->getGPUInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_1
    sput-boolean v1, Lorg/light/DeviceSupportUtil;->inited:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "DeviceSupportUtil"

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/light/utils/LightLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Ljava/lang/String;)V
    .locals 8

    const-class v0, Lorg/light/DeviceSupportUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 18
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 20
    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 21
    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v1

    invoke-virtual {v1, v3, p0}, Lorg/light/device/DeviceInstance;->initSettings(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 22
    invoke-static {v1}, Lorg/light/gles/GLCapabilities;->init(Z)V

    .line 23
    invoke-static {}, Lorg/light/device/GpuScopeAttrs;->getInstance()Lorg/light/device/GpuScopeAttrs;

    move-result-object v2

    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-static {}, Lorg/light/gles/GLCapabilities;->getGPUInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v6

    invoke-virtual {v6}, Lorg/light/device/DeviceInstance;->getDeviceVersion()Ljava/lang/String;

    move-result-object v6

    move-object v7, p0

    .line 25
    invoke-virtual/range {v2 .. v7}, Lorg/light/device/GpuScopeAttrs;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DeviceSupportUtil"

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/light/device/DeviceInstance;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DeviceSupportUtil"

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/light/device/DeviceInstance;->getInstance()Lorg/light/device/DeviceInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/light/device/DeviceInstance;->getDeviceVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DeviceSupportUtil"

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPUInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/light/gles/GLCapabilities;->getGPUInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sput-boolean v1, Lorg/light/DeviceSupportUtil;->inited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "DeviceSupportUtil"

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/light/utils/LightLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static isAbilitiesSupported([Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_2

    .line 1
    array-length v0, p0

    if-lez v0, :cond_2

    .line 2
    sget-boolean v0, Lorg/light/DeviceSupportUtil;->inited:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lorg/light/DeviceSupportUtil;->init()V

    .line 4
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 5
    invoke-static {v3}, Lorg/light/DeviceSupportUtil;->isAbilityDeviceSupport(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isAbilityDeviceSupport(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lorg/light/DeviceSupportUtil;->inited:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/light/DeviceSupportUtil;->init()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "shareGLContextError"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "JavaScript"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "imu.smooth.enable"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "ai.InitSegmentHair"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "3d.kapu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "ai.catFace"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "render.vignette"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "ace3d.flush"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "fence"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "material.sticker3d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "ai"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "ai.face3d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "ai.faceStaticFeature"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "glext.GL_EXT_shader_framebuffer_fetch"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "render.bloom"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "ai.expression"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "render.color_grading"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "ai.hand"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "ai.body"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "ai.3dmm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "render.shadow"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "ai.gan"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "ai.emotion"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "render.ssao"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "render.msaa"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_0

    :cond_19
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_19
    const-string v1, "render.fxaa"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1a
    const-string v1, "render.dither"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1b
    const-string v1, "ai.segmentHair"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1c
    const-string v1, "ai.segment.gpu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1d
    const-string v1, "OpenGL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_0

    :cond_1e
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1e
    const-string v1, "OpenCL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_0

    :cond_1f
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1f
    const-string v1, "ai.segment"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_0

    :cond_20
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAbilityDeviceSupport - key \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceSupportUtil"

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :pswitch_0
    invoke-static {}, Lorg/light/DeviceSupportUtil;->isShareGLContextError()Z

    move-result v2

    goto :goto_1

    .line 6
    :pswitch_1
    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportJavaScript()Z

    move-result v2

    goto :goto_1

    .line 7
    :pswitch_2
    invoke-static {}, Lorg/light/DeviceSupportUtil;->isImuSmoothEnable()Z

    move-result v2

    goto :goto_1

    .line 8
    :pswitch_3
    invoke-static {}, Lorg/light/DeviceSupportUtil;->isHairSegPreLoadSupportedDevice()Z

    move-result v2

    goto :goto_1

    .line 9
    :pswitch_4
    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportKapu()Z

    move-result v2

    goto :goto_1

    .line 10
    :pswitch_5
    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportAce3dFLush()Z

    move-result v2

    goto :goto_1

    .line 11
    :pswitch_6
    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportFence()Z

    move-result v2

    goto :goto_1

    .line 12
    :pswitch_7
    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportAceEngine()Z

    move-result v2

    goto :goto_1

    .line 13
    :pswitch_8
    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportAceEngine()Z

    move-result v2

    goto :goto_1

    .line 14
    :pswitch_9
    invoke-static {p0}, Lorg/light/DeviceSupportUtil;->supportGLExtension(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 15
    :pswitch_a
    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportAiAbility()Z

    move-result v2

    goto :goto_1

    .line 16
    :pswitch_b
    invoke-static {p0}, Lorg/light/DeviceSupportUtil;->supportFilamentFeature(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 17
    :pswitch_c
    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportOpenGL()Z

    move-result v2

    goto :goto_1

    .line 18
    :pswitch_d
    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportOpenCL()Z

    move-result v2

    goto :goto_1

    .line 19
    :pswitch_e
    invoke-static {}, Lorg/light/DeviceSupportUtil;->isShareGLContextError()Z

    move-result p0

    xor-int/2addr v2, p0

    :goto_1
    :pswitch_f
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fffec93 -> :sswitch_1f
        -0x72d74fad -> :sswitch_1e
        -0x72d74f31 -> :sswitch_1d
        -0x6e2af155 -> :sswitch_1c
        -0x6e1f3711 -> :sswitch_1b
        -0x6654e082 -> :sswitch_1a
        -0x63bb4e36 -> :sswitch_19
        -0x63b83262 -> :sswitch_18
        -0x63b5781a -> :sswitch_17
        -0x567c6b6b -> :sswitch_16
        -0x549bcff2 -> :sswitch_15
        -0x4cd2f788 -> :sswitch_14
        -0x3ef5c609 -> :sswitch_13
        -0x3ee04058 -> :sswitch_12
        -0x3eddb98b -> :sswitch_11
        -0x31d0fc60 -> :sswitch_10
        -0x226a03e2 -> :sswitch_f
        -0x13ec1455 -> :sswitch_e
        -0x10b42f2c -> :sswitch_d
        -0x45ce6fb -> :sswitch_c
        -0x1c429cc -> :sswitch_b
        0xc28 -> :sswitch_a
        0x2da6887 -> :sswitch_9
        0x5ccf031 -> :sswitch_8
        0x122882ea -> :sswitch_7
        0x135c0292 -> :sswitch_6
        0x2b6e638d -> :sswitch_5
        0x373cc318 -> :sswitch_4
        0x40dacc9f -> :sswitch_3
        0x44da8666 -> :sswitch_2
        0x4b7aa1ad -> :sswitch_1
        0x7408acbd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_f
        :pswitch_a
        :pswitch_b
        :pswitch_f
        :pswitch_b
        :pswitch_9
        :pswitch_f
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_b
        :pswitch_f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isDeviceSupportAsset(Lorg/light/LightAsset;)Z
    .locals 0

    invoke-static {p0}, Lorg/light/DeviceSupportUtil;->getDeviceAbilityKeys(Lorg/light/LightAsset;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/light/DeviceSupportUtil;->isAbilitiesSupported([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isHairSegPreLoadSupportedDevice()Z
    .locals 1

    invoke-static {}, Lorg/light/gles/GLCapabilities;->isDeviceSupportHairSegPreLoad()Z

    move-result v0

    return v0
.end method

.method public static isHardwareBufferAvailable()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isImuSmoothEnable()Z
    .locals 1

    invoke-static {}, Lorg/light/gles/GLCapabilities;->isImuSmoothEnable()Z

    move-result v0

    return v0
.end method

.method public static isMaterialDeviceSupport(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "DeviceSupportUtil"

    const-string v0, "isMaterialDeviceSupport"

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static isShareGLContextError()Z
    .locals 1

    invoke-static {}, Lorg/light/gles/GLCapabilities;->isShareGLContextError()Z

    move-result v0

    return v0
.end method

.method public static isSoLoadSuccess()Z
    .locals 1

    sget-boolean v0, Lorg/light/DeviceSupportUtil;->soLoadSuccess:Z

    return v0
.end method

.method public static setSoLoadSuccess(Z)V
    .locals 0

    sput-boolean p0, Lorg/light/DeviceSupportUtil;->soLoadSuccess:Z

    return-void
.end method

.method private static supportAce3dFLush()Z
    .locals 1

    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportAceEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/light/gles/GLCapabilities;->isDeviceSupportAce3dFlush()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static supportAceEngine()Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/light/gles/GLCapabilities;->getGlesVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/light/gles/GLCapabilities;->isFilamentShaderCompileSucceed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/light/gles/GLCapabilities;->isDeviceSupportAceEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static supportAiAbility()Z
    .locals 1

    invoke-static {}, Lorg/light/gles/GLCapabilities;->isDeviceSupportAiAbility()Z

    move-result v0

    return v0
.end method

.method public static supportFence()Z
    .locals 1

    invoke-static {}, Lorg/light/gles/GLCapabilities;->isDeviceSupportFence()Z

    move-result v0

    return v0
.end method

.method private static supportFilamentFeature(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportAceEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/light/gles/GLCapabilities;->isDeviceSupportFilamentFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static supportGLExtension(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportAceEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/light/gles/GLCapabilities;->isDeviceSupportGLExtension(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static supportJavaScript()Z
    .locals 1

    invoke-static {}, Lorg/light/device/ApiHelper;->hasLollipop()Z

    move-result v0

    return v0
.end method

.method private static supportKapu()Z
    .locals 1

    invoke-static {}, Lorg/light/DeviceSupportUtil;->supportAceEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/light/gles/GLCapabilities;->isDeviceSupportKapu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static supportOpenCL()Z
    .locals 1

    invoke-static {}, Lorg/light/device/ApiHelper;->hasMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/light/gles/GLCapabilities;->isDeviceSupportOpenCL()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static supportOpenGL()Z
    .locals 2

    invoke-static {}, Lorg/light/gles/GLCapabilities;->getGlesVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
