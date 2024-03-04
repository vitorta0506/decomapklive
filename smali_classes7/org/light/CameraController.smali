.class public Lorg/light/CameraController;
.super Lorg/light/Controller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/CameraController$FilaPositionCallback;,
        Lorg/light/CameraController$HitTestFilaCallback;,
        Lorg/light/CameraController$CmShowCallback;,
        Lorg/light/CameraController$DisplayType;,
        Lorg/light/CameraController$CameraViewType;,
        Lorg/light/CameraController$MorphType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraController"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/light/Controller;-><init>()V

    return-void
.end method

.method private native nativeGetFilamentAssetPosition(Lorg/light/CameraController$FilaPositionCallback;)V
.end method

.method private native nativeGetHitTestFilamentAssets([FLorg/light/CameraController$HitTestFilaCallback;)V
.end method

.method private native nativePause3DAnimation()V
.end method

.method private native nativeRegister3DAnimation(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeRelease()V
.end method

.method private native nativeResume3DAnimation()V
.end method

.method private native nativeRotateArModelToFront(I)V
.end method

.method private native nativeSetARFrameInfo(Lorg/light/bean/ArFrameInfo;)V
.end method

.method private native nativeSetHitTestAfterUnprojection([F)V
.end method

.method private native nativeSetSegmentationFastMode(Z)V
.end method

.method private native nativeSetUEFaceStr(Ljava/lang/String;)V
.end method

.method private native nativeUpdateCameraTextureTimestamp(J)V
.end method

.method private native nativeUpdateTouchEvent(IJJI[[FII)V
.end method

.method private native nativeUpdateTouchRotate([F)V
.end method

.method private native nativeUpdateTouchScale(F)V
.end method

.method private native nativeUpdateViewParams([F[FF)V
.end method

.method private native nativeUpdateVoiceDecibel(F)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/light/Controller;->finalize()V

    .line 2
    invoke-virtual {p0}, Lorg/light/CameraController;->release()V

    return-void
.end method

.method public getFilamentAssetPosition(Lorg/light/CameraController$FilaPositionCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/light/CameraController$2;

    invoke-direct {v2, p0, p1}, Lorg/light/CameraController$2;-><init>(Lorg/light/CameraController;Lorg/light/CameraController$FilaPositionCallback;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerGetFilamentAssetPosition(ILorg/light/listener/AIDLFilaPositionCallback;)V
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

    const-string v0, "CameraController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/CameraController;->nativeGetFilamentAssetPosition(Lorg/light/CameraController$FilaPositionCallback;)V

    :goto_1
    return-void
.end method

.method public getHitTestFilamentAssets([FLorg/light/CameraController$HitTestFilaCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/light/CameraController$1;

    invoke-direct {v2, p0, p2}, Lorg/light/CameraController$1;-><init>(Lorg/light/CameraController;Lorg/light/CameraController$HitTestFilaCallback;)V

    move-object p2, v2

    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->cameraControllerGetHitTestFilamentAssets(I[FLorg/light/listener/AIDLHitTestFilaCallback;)V
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

    const-string p2, "CameraController"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/light/CameraController;->nativeGetHitTestFilamentAssets([FLorg/light/CameraController$HitTestFilaCallback;)V

    :goto_1
    return-void
.end method

.method public pause3DAnimation()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerPause3DAnimation(I)V
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

    const-string v1, "CameraController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/CameraController;->nativePause3DAnimation()V

    :goto_0
    return-void
.end method

.method public register3DAnimation(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerRegister3DAnimation(ILjava/util/List;)V
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

    const-string v0, "CameraController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/CameraController;->nativeRegister3DAnimation(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/light/Controller;->instanceId:I

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/light/Controller;->weakEngine:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/LightEngine;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Lorg/light/LightEngine;->setCameraTextureTimestamp(IJ)V

    .line 5
    :cond_0
    :try_start_0
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerRelease(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v3, p0, Lorg/light/Controller;->nativeHandle:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0}, Lorg/light/CameraController;->nativeRelease()V

    :cond_2
    :goto_0
    return-void
.end method

.method public resume3DAnimation()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerResume3DAnimation(I)V
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

    const-string v1, "CameraController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/CameraController;->nativeResume3DAnimation()V

    :goto_0
    return-void
.end method

.method public rotateArModelToFront(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerRotateArModelToFront(II)V
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

    const-string v0, "CameraController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/CameraController;->nativeRotateArModelToFront(I)V

    :goto_0
    return-void
.end method

.method public setARFrameInfo(Lorg/light/bean/ArFrameInfo;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerSetARFrameInfo(ILorg/light/bean/ArFrameInfo;)V
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

    const-string v0, "CameraController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/CameraController;->nativeSetARFrameInfo(Lorg/light/bean/ArFrameInfo;)V

    :goto_0
    return-void
.end method

.method public native setFaceStrWithGender(Ljava/lang/String;I)V
.end method

.method public setHitTestAfterUnprojection([F)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerSetHitTestAfterUnprojection(I[F)V
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

    const-string v0, "CameraController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/CameraController;->nativeSetHitTestAfterUnprojection([F)V

    :goto_0
    return-void
.end method

.method public native setKapuAnimation(Ljava/lang/String;Lorg/light/CameraController$CmShowCallback;)V
.end method

.method public native setKapuCameraViewType(Lorg/light/CameraController$CameraViewType;)V
.end method

.method public native setKapuDisplayType(Lorg/light/CameraController$DisplayType;)V
.end method

.method public native setKapuModel(Ljava/util/HashMap;Ljava/lang/String;Lorg/light/CameraController$CmShowCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/light/CameraController$CmShowCallback;",
            ")V"
        }
    .end annotation
.end method

.method public setSegmentationFastMode(Z)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerSetSegmentationFastMode(IZ)V
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

    const-string v0, "CameraController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/CameraController;->nativeSetSegmentationFastMode(Z)V

    :goto_0
    return-void
.end method

.method public setUEFaceStr(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerSetUEFaceStr(ILjava/lang/String;)V
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

    const-string v0, "CameraController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/CameraController;->nativeSetUEFaceStr(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateCameraTextureTimestamp(J)V
    .locals 7

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/light/Controller;->weakEngine:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/LightEngine;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/light/LightEngine;->setCameraTextureTimestamp(IJ)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v4, v0, v2

    sub-long/2addr v0, p1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long/2addr v2, p1

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v6, v0, v2

    if-lez v6, :cond_3

    add-long/2addr p1, v4

    .line 9
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/light/CameraController;->nativeUpdateCameraTextureTimestamp(J)V

    :goto_0
    return-void
.end method

.method public native updateKapuMorph(Lorg/light/CameraController$MorphType;)V
.end method

.method public updateTouchEvent(IJJLjava/util/ArrayList;II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p6

    .line 1
    sget-object v1, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v1, :cond_0

    move-object v12, p0

    .line 2
    :try_start_0
    iget v2, v12, Lorg/light/Controller;->instanceId:I

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lorg/light/ILightSDKServiceInterface;->cameraControllerUpdateTouchEvent(IIJJLjava/util/List;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    const-string v1, "CameraController"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v12, p0

    .line 4
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v8, v2, v1

    .line 5
    const-class v4, F

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [[F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_2

    .line 6
    aget-object v4, v9, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aput v5, v4, v1

    .line 7
    aget-object v4, v9, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v10, p7

    move/from16 v11, p8

    .line 8
    invoke-direct/range {v2 .. v11}, Lorg/light/CameraController;->nativeUpdateTouchEvent(IJJI[[FII)V

    :goto_1
    return-void
.end method

.method public updateTouchRotate([F)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerUpdateTouchRotate(I[F)V
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

    const-string v0, "CameraController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/CameraController;->nativeUpdateTouchRotate([F)V

    :goto_0
    return-void
.end method

.method public updateTouchScale(F)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerUpdateTouchScale(IF)V
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

    const-string v0, "CameraController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/CameraController;->nativeUpdateTouchScale(F)V

    :goto_0
    return-void
.end method

.method public updateViewParams([F[FF)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/light/ILightSDKServiceInterface;->cameraControllerUpdateViewParams(I[F[FF)V
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

    const-string p2, "CameraController"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/light/CameraController;->nativeUpdateViewParams([F[FF)V

    :goto_0
    return-void
.end method

.method public updateVoiceDecibel(F)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/Controller;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/Controller;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->cameraControllerUpdateVoiceDecibel(IF)V
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

    const-string v0, "CameraController"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/CameraController;->nativeUpdateVoiceDecibel(F)V

    :goto_0
    return-void
.end method
