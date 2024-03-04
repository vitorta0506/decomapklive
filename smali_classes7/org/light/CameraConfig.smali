.class public Lorg/light/CameraConfig;
.super Lorg/light/Config;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/CameraConfig$DeviceCameraOrientation;,
        Lorg/light/CameraConfig$ImageOrigin;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraConfig"


# instance fields
.field private currentCameraTexture:I

.field private currentCameraTextureHeight:I

.field private currentCameraTextureWidth:I

.field private eps:F

.field private lastXAxis:F

.field private nativeBuffer:Lorg/light/NativeBuffer;

.field recognizedOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

.field private sdkInputRenderer:Lorg/light/utils/Renderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/Config;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 2
    iput v0, p0, Lorg/light/CameraConfig;->eps:F

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    .line 4
    iput-object v0, p0, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/light/CameraConfig;->currentCameraTexture:I

    .line 6
    iput v0, p0, Lorg/light/CameraConfig;->currentCameraTextureWidth:I

    .line 7
    iput v0, p0, Lorg/light/CameraConfig;->currentCameraTextureHeight:I

    return-void
.end method

.method public static make()Lorg/light/CameraConfig;
    .locals 5

    const-string v0, "CameraConfig"

    .line 1
    sget-object v1, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-interface {v1}, Lorg/light/ILightSDKServiceInterface;->cameraConfigMake()Lorg/light/service/InstanceId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v3, Lorg/light/CameraConfig;

    invoke-direct {v3}, Lorg/light/CameraConfig;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    iget v1, v1, Lorg/light/service/InstanceId;->id:I

    invoke-virtual {v3, v1}, Lorg/light/Config;->setInstanceId(I)V
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

    const-string v3, "CameraConfig:%x init success"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 7
    :cond_1
    invoke-static {}, Lorg/light/CameraConfig;->nativeMake()Lorg/light/CameraConfig;

    move-result-object v0

    return-object v0
.end method

.method private native nativeCameraSwitched(I)V
.end method

.method public static native nativeMake()Lorg/light/CameraConfig;
.end method

.method private native nativeSensorOrientationChanged(Lorg/light/CameraConfig$DeviceCameraOrientation;)V
.end method

.method private native nativeSetAutoTestMode(Z)V
.end method

.method private native nativeSetRawInputForAR([BIIJ)V
.end method

.method private restoreCameraTexture(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/light/utils/Renderer;->setForHardwareBuffer(Z)V

    .line 2
    iget-object v0, p0, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    iget-object v1, p0, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v1}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v1

    invoke-interface {v0, p1, v1, p2, p3}, Lorg/light/utils/Renderer;->draw(IIII)V

    .line 3
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 4
    invoke-static {p1}, Lorg/light/utils/LightGLUtils;->deleteTexture(I)V

    return-void
.end method

.method private saveCameraTexture(III)I
    .locals 3

    const/16 v0, 0xde1

    .line 1
    invoke-static {v0}, Lorg/light/utils/LightGLUtils;->createTexture(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/light/utils/Renderer;->setForHardwareBuffer(Z)V

    .line 3
    iget-object v1, p0, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    invoke-interface {v1, p1, v0, p2, p3}, Lorg/light/utils/Renderer;->draw(IIII)V

    .line 4
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return v0
.end method


# virtual methods
.method public cameraSwitched(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraConfigCameraSwitched(II)V
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

    const-string v0, "CameraConfig"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/CameraConfig;->nativeCameraSwitched(I)V

    :goto_0
    return-void
.end method

.method public native clearAIDataListener()V
.end method

.method public native clearTipsStatusListener()V
.end method

.method public native clearYTDataListener()V
.end method

.method public native nativeSetCameraTexture(IIILorg/light/CameraConfig$DeviceCameraOrientation;Lorg/light/CameraConfig$ImageOrigin;)V
.end method

.method public performFinalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/light/utils/Renderer;->release()V

    .line 3
    iput-object v1, p0, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v0

    invoke-static {v0}, Lorg/light/utils/LightGLUtils;->deleteTexture(I)V

    .line 6
    iget-object v0, p0, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v0}, Lorg/light/NativeBuffer;->release()V

    .line 7
    iput-object v1, p0, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    .line 8
    :cond_1
    invoke-super {p0}, Lorg/light/Config;->performFinalize()V

    return-void
.end method

.method public sensorOrientationChanged(II)V
    .locals 5

    .line 5
    sget-object v0, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_0:Lorg/light/CameraConfig$DeviceCameraOrientation;

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-le v1, v2, :cond_1

    if-le p2, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, v3, :cond_3

    .line 7
    sget-object v0, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_180:Lorg/light/CameraConfig$DeviceCameraOrientation;

    goto :goto_0

    :cond_1
    if-le p1, v4, :cond_2

    .line 8
    sget-object v0, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_90:Lorg/light/CameraConfig$DeviceCameraOrientation;

    goto :goto_0

    :cond_2
    if-ge p1, v3, :cond_3

    .line 9
    sget-object v0, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_270:Lorg/light/CameraConfig$DeviceCameraOrientation;

    .line 10
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/light/CameraConfig;->recognizedOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

    if-eq v1, v0, :cond_5

    int-to-float v1, p1

    .line 11
    iget v2, p0, Lorg/light/CameraConfig;->lastXAxis:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lorg/light/CameraConfig;->eps:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_4

    int-to-float p2, p2

    iget v2, p0, Lorg/light/CameraConfig;->lastXAxis:F

    sub-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v2, p0, Lorg/light/CameraConfig;->eps:F

    cmpl-float p2, p2, v2

    if-lez p2, :cond_5

    .line 12
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientation is changed from"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/light/CameraConfig;->recognizedOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", and current XAxis:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraConfig"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iput v1, p0, Lorg/light/CameraConfig;->lastXAxis:F

    .line 14
    iput-object v0, p0, Lorg/light/CameraConfig;->recognizedOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

    .line 15
    invoke-virtual {p0, v0}, Lorg/light/CameraConfig;->sensorOrientationChanged(Lorg/light/CameraConfig$DeviceCameraOrientation;)V

    :cond_5
    return-void
.end method

.method public sensorOrientationChanged(Lorg/light/CameraConfig$DeviceCameraOrientation;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraConfigSensorOrientationChanged(II)V
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

    const-string v0, "CameraConfig"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/CameraConfig;->nativeSensorOrientationChanged(Lorg/light/CameraConfig$DeviceCameraOrientation;)V

    :goto_0
    return-void
.end method

.method public setAutoTestMode(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraConfigSetAutoTestMode(IZ)V
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

    const-string v0, "CameraConfig"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/CameraConfig;->nativeSetAutoTestMode(Z)V

    :goto_0
    return-void
.end method

.method public setCameraTexture(III)V
    .locals 1

    .line 1
    sget-object v0, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_0:Lorg/light/CameraConfig$DeviceCameraOrientation;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/light/CameraConfig;->setCameraTexture(IIILorg/light/CameraConfig$DeviceCameraOrientation;)V

    return-void
.end method

.method public setCameraTexture(IIILorg/light/CameraConfig$DeviceCameraOrientation;)V
    .locals 6

    .line 2
    sget-object v5, Lorg/light/CameraConfig$ImageOrigin;->BottomLeft:Lorg/light/CameraConfig$ImageOrigin;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/light/CameraConfig;->setCameraTexture(IIILorg/light/CameraConfig$DeviceCameraOrientation;Lorg/light/CameraConfig$ImageOrigin;)V

    return-void
.end method

.method public setCameraTexture(IIILorg/light/CameraConfig$DeviceCameraOrientation;Lorg/light/CameraConfig$ImageOrigin;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-virtual/range {v0 .. v6}, Lorg/light/CameraConfig;->setCameraTexture(IIILorg/light/CameraConfig$DeviceCameraOrientation;Lorg/light/CameraConfig$ImageOrigin;Z)V

    return-void
.end method

.method public setCameraTexture(IIILorg/light/CameraConfig$DeviceCameraOrientation;Lorg/light/CameraConfig$ImageOrigin;Z)V
    .locals 15

    move-object v1, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    .line 4
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 5
    iget-object v2, v1, Lorg/light/Config;->weakEngine:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/light/LightEngine;

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Lorg/light/LightEngine;->getLightSurface()Lorg/light/LightSurface;

    move-result-object v0

    :cond_0
    move-object v12, v0

    const-string v13, "CameraConfig"

    if-nez v12, :cond_1

    const-string v0, "CameraConfig.setCameraTexture error: LightSurface not set"

    .line 8
    invoke-static {v13, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, v1, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    if-nez v0, :cond_4

    .line 10
    new-instance v0, Lorg/light/NativeBuffer;

    invoke-direct {v0, v10, v11}, Lorg/light/NativeBuffer;-><init>(II)V

    iput-object v0, v1, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    if-eqz p6, :cond_3

    .line 11
    iget-object v0, v1, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Lorg/light/utils/SimpleRenderer;

    invoke-direct {v0}, Lorg/light/utils/SimpleRenderer;-><init>()V

    iput-object v0, v1, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    .line 13
    :cond_2
    invoke-direct/range {p0 .. p3}, Lorg/light/CameraConfig;->saveCameraTexture(III)I

    move-result v0

    .line 14
    iget-object v2, v1, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v2, v9}, Lorg/light/NativeBuffer;->bindTexture(I)Z

    .line 15
    invoke-direct {p0, v0, v10, v11}, Lorg/light/CameraConfig;->restoreCameraTexture(III)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xde1

    .line 16
    invoke-static {v0}, Lorg/light/utils/LightGLUtils;->createTexture(I)I

    move-result v0

    .line 17
    iget-object v2, v1, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v2, v0}, Lorg/light/NativeBuffer;->bindTexture(I)Z

    .line 18
    :cond_4
    :goto_0
    iget v0, v1, Lorg/light/CameraConfig;->currentCameraTexture:I

    const-string v14, "RemoteException:\n"

    if-ne v0, v9, :cond_5

    iget v0, v1, Lorg/light/CameraConfig;->currentCameraTextureWidth:I

    if-ne v0, v10, :cond_5

    iget v0, v1, Lorg/light/CameraConfig;->currentCameraTextureHeight:I

    if-eq v0, v11, :cond_8

    .line 19
    :cond_5
    iput v9, v1, Lorg/light/CameraConfig;->currentCameraTexture:I

    .line 20
    iput v10, v1, Lorg/light/CameraConfig;->currentCameraTextureWidth:I

    .line 21
    iput v11, v1, Lorg/light/CameraConfig;->currentCameraTextureHeight:I

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    .line 22
    invoke-direct/range {p0 .. p3}, Lorg/light/CameraConfig;->saveCameraTexture(III)I

    move-result v0

    .line 23
    :cond_6
    iget-object v2, v1, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v2, v10, v11}, Lorg/light/NativeBuffer;->updateSize(II)Z

    if-eqz p6, :cond_7

    .line 24
    invoke-direct {p0, v0, v10, v11}, Lorg/light/CameraConfig;->restoreCameraTexture(III)V

    .line 25
    :cond_7
    :try_start_0
    sget-object v2, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    iget v3, v1, Lorg/light/Config;->instanceId:I

    invoke-virtual {v12}, Lorg/light/LightSurface;->getInstanceId()I

    move-result v4

    iget-object v0, v1, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v0}, Lorg/light/NativeBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p1

    invoke-interface/range {v2 .. v8}, Lorg/light/ILightSDKServiceInterface;->cameraConfigUpdateCameraTexture(IILandroid/hardware/HardwareBuffer;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    if-nez p6, :cond_a

    .line 27
    iget-object v0, v1, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    if-nez v0, :cond_9

    .line 28
    new-instance v0, Lorg/light/utils/SimpleRenderer;

    invoke-direct {v0}, Lorg/light/utils/SimpleRenderer;-><init>()V

    iput-object v0, v1, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    .line 29
    :cond_9
    iget-object v0, v1, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/light/utils/Renderer;->setForHardwareBuffer(Z)V

    .line 30
    iget-object v0, v1, Lorg/light/CameraConfig;->sdkInputRenderer:Lorg/light/utils/Renderer;

    iget-object v2, v1, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v2}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v2

    invoke-interface {v0, v9, v2, v10, v11}, Lorg/light/utils/Renderer;->draw(IIII)V

    .line 31
    :cond_a
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 32
    :try_start_1
    iget-object v0, v1, Lorg/light/CameraConfig;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v0}, Lorg/light/NativeBuffer;->createFence()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 33
    sget-object v2, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    iget v3, v1, Lorg/light/Config;->instanceId:I

    invoke-virtual {v12}, Lorg/light/LightSurface;->getInstanceId()I

    move-result v4

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Lorg/light/ILightSDKServiceInterface;->cameraConfigSetCameraTexture(IIIILandroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_c

    .line 34
    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 35
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetCameraTexture close fence FD Exception:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :cond_b
    invoke-virtual/range {p0 .. p5}, Lorg/light/CameraConfig;->nativeSetCameraTexture(IIILorg/light/CameraConfig$DeviceCameraOrientation;Lorg/light/CameraConfig$ImageOrigin;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public setRawInputForAR([BIIJ)V
    .locals 7

    .line 1
    sget-object v0, Lorg/light/Config;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Config;->instanceId:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lorg/light/ILightSDKServiceInterface;->cameraConfigSetRawInputForAR(I[BIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraConfig"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v4, v0, v2

    sub-long/2addr v0, p4

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long/2addr v2, p4

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    add-long/2addr p4, v4

    :cond_1
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lorg/light/CameraConfig;->nativeSetRawInputForAR([BIIJ)V

    :goto_0
    return-void
.end method
