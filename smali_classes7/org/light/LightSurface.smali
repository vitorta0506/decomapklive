.class public Lorg/light/LightSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LightSurface"

.field private static lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;


# instance fields
.field private hardwareTex:Z

.field private instanceId:I

.field private nativeBuffer:Lorg/light/NativeBuffer;

.field private nativeContext:J

.field private sdkOutputGlTex:I

.field private sdkOutputHeight:I

.field private sdkOutputWidth:I

.field private simpleRenderer:Lorg/light/utils/SimpleRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lorg/light/LightSurface;->nativeInit()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/LightSurface;->instanceId:I

    .line 3
    iput-boolean v0, p0, Lorg/light/LightSurface;->hardwareTex:Z

    .line 4
    iput v0, p0, Lorg/light/LightSurface;->sdkOutputGlTex:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/light/LightSurface;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    .line 6
    iput-object v0, p0, Lorg/light/LightSurface;->nativeBuffer:Lorg/light/NativeBuffer;

    return-void
.end method

.method public static init()V
    .locals 0

    return-void
.end method

.method public static makeFromNativeTexture(IIIZZ)Lorg/light/LightSurface;
    .locals 6

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/light/LightSurface;->makeFromTextureInternal(IIIZZZ)Lorg/light/LightSurface;

    move-result-object p0

    return-object p0
.end method

.method public static makeFromSurface(Landroid/view/Surface;Landroid/opengl/EGLContext;)Lorg/light/LightSurface;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lorg/light/LightSurface;->makeFromSurface(Landroid/view/Surface;Landroid/opengl/EGLContext;Z)Lorg/light/LightSurface;

    move-result-object p0

    return-object p0
.end method

.method public static makeFromSurface(Landroid/view/Surface;Landroid/opengl/EGLContext;Z)Lorg/light/LightSurface;
    .locals 3

    const-string v0, "LightSurface"

    .line 2
    sget-object v1, Lorg/light/LightSurface;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    invoke-interface {v1, p0, p2}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceMakeFromSurface(Landroid/view/Surface;Z)Lorg/light/service/InstanceId;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    new-instance p1, Lorg/light/LightSurface;

    invoke-direct {p1}, Lorg/light/LightSurface;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    iget p0, p0, Lorg/light/service/InstanceId;->id:I

    invoke-virtual {p1, p0}, Lorg/light/LightSurface;->setInstanceId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, p1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v2, p1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException:\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 7
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "LightSurface:%x init success"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    if-nez p0, :cond_2

    return-object v2

    :cond_2
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    .line 8
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq p1, v2, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/opengl/EGLContext;->getNativeHandle()J

    move-result-wide v0

    .line 10
    :cond_3
    invoke-static {p0, v0, v1, p2}, Lorg/light/LightSurface;->nativeMakeFromSurface(Landroid/view/Surface;JZ)Lorg/light/LightSurface;

    move-result-object p0

    return-object p0
.end method

.method public static makeFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)Lorg/light/LightSurface;
    .locals 1

    .line 1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p0, v0}, Lorg/light/LightSurface;->makeFromSurfaceTexture(Landroid/graphics/SurfaceTexture;Landroid/opengl/EGLContext;)Lorg/light/LightSurface;

    move-result-object p0

    return-object p0
.end method

.method public static makeFromSurfaceTexture(Landroid/graphics/SurfaceTexture;Landroid/opengl/EGLContext;)Lorg/light/LightSurface;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, p1}, Lorg/light/LightSurface;->makeFromSurface(Landroid/view/Surface;Landroid/opengl/EGLContext;)Lorg/light/LightSurface;

    move-result-object p0

    return-object p0
.end method

.method public static makeFromTexture(III)Lorg/light/LightSurface;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    .line 1
    invoke-static/range {v0 .. v5}, Lorg/light/LightSurface;->makeFromTextureInternal(IIIZZZ)Lorg/light/LightSurface;

    move-result-object p0

    return-object p0
.end method

.method public static makeFromTexture(IIIZ)Lorg/light/LightSurface;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 2
    invoke-static/range {v0 .. v5}, Lorg/light/LightSurface;->makeFromTextureInternal(IIIZZZ)Lorg/light/LightSurface;

    move-result-object p0

    return-object p0
.end method

.method public static makeFromTexture(IIIZZ)Lorg/light/LightSurface;
    .locals 6

    const/4 v4, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 3
    invoke-static/range {v0 .. v5}, Lorg/light/LightSurface;->makeFromTextureInternal(IIIZZZ)Lorg/light/LightSurface;

    move-result-object p0

    return-object p0
.end method

.method private static makeFromTextureInternal(IIIZZZ)Lorg/light/LightSurface;
    .locals 4

    const-string v0, "LightSurface"

    .line 1
    sget-object v1, Lorg/light/LightSurface;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v1, :cond_2

    const/4 p4, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/light/NativeBuffer;

    invoke-direct {v1, p1, p2}, Lorg/light/NativeBuffer;-><init>(II)V

    if-eqz p5, :cond_0

    .line 3
    invoke-virtual {v1, p0}, Lorg/light/NativeBuffer;->bindTexture(I)Z

    goto :goto_0

    :cond_0
    const/16 v2, 0xde1

    .line 4
    invoke-static {v2}, Lorg/light/utils/LightGLUtils;->createTexture(I)I

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Lorg/light/NativeBuffer;->bindTexture(I)Z

    .line 6
    :goto_0
    sget-object v2, Lorg/light/LightSurface;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    invoke-virtual {v1}, Lorg/light/NativeBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2, p3}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceMakeFromNativeBuffer(Landroid/hardware/HardwareBuffer;IIZ)Lorg/light/service/InstanceId;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 7
    new-instance v2, Lorg/light/LightSurface;

    invoke-direct {v2}, Lorg/light/LightSurface;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    iput-object v1, v2, Lorg/light/LightSurface;->nativeBuffer:Lorg/light/NativeBuffer;

    .line 9
    iput-boolean p5, v2, Lorg/light/LightSurface;->hardwareTex:Z

    .line 10
    iput p0, v2, Lorg/light/LightSurface;->sdkOutputGlTex:I

    .line 11
    iput p1, v2, Lorg/light/LightSurface;->sdkOutputWidth:I

    .line 12
    iput p2, v2, Lorg/light/LightSurface;->sdkOutputHeight:I

    .line 13
    iget p0, p3, Lorg/light/service/InstanceId;->id:I

    invoke-virtual {v2, p0}, Lorg/light/LightSurface;->setInstanceId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p4, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object p4, v2

    goto :goto_1

    :catch_1
    move-exception p0

    .line 14
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException:\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 15
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "LightSurface:%x init success"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4

    .line 16
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lorg/light/LightSurface;->nativeMakeFromTexture(IIIZZ)Lorg/light/LightSurface;

    move-result-object p0

    return-object p0
.end method

.method private native nativeClearRenderCurrent()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeFreeCache()V
.end method

.method private native nativeGetRenderCurrentGLContext()J
.end method

.method private static native nativeInit()V
.end method

.method private static native nativeMakeFromSurface(Landroid/view/Surface;JZ)Lorg/light/LightSurface;
.end method

.method private static native nativeMakeFromTexture(IIIZZ)Lorg/light/LightSurface;
.end method

.method private native nativeMakeRenderCurrent()V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeUpdateSize(II)V
.end method

.method public static setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    sput-object p0, Lorg/light/LightSurface;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    return-void
.end method


# virtual methods
.method public clearRenderCurrent()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightSurface;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/LightSurface;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceClearRenderCurrent(I)V
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

    const-string v1, "LightSurface"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/LightSurface;->nativeClearRenderCurrent()V

    :goto_0
    return-void
.end method

.method public copyOutputTexture(Landroid/os/ParcelFileDescriptor;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lorg/light/LightSurface;->nativeBuffer:Lorg/light/NativeBuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lorg/light/NativeBuffer;->waitFence(Landroid/os/ParcelFileDescriptor;)Z

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyOutputTexture close fence FD Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LightSurface"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lorg/light/LightSurface;->hardwareTex:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/light/LightSurface;->nativeBuffer:Lorg/light/NativeBuffer;

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lorg/light/LightSurface;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Lorg/light/utils/SimpleRenderer;

    invoke-direct {p1}, Lorg/light/utils/SimpleRenderer;-><init>()V

    iput-object p1, p0, Lorg/light/LightSurface;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    .line 8
    :cond_1
    iget-object p1, p0, Lorg/light/LightSurface;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    iget-object v0, p0, Lorg/light/LightSurface;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v0}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v0

    iget v1, p0, Lorg/light/LightSurface;->sdkOutputGlTex:I

    iget v2, p0, Lorg/light/LightSurface;->sdkOutputWidth:I

    iget v3, p0, Lorg/light/LightSurface;->sdkOutputHeight:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/light/utils/SimpleRenderer;->draw(IIII)V

    .line 9
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void
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
    iget v0, p0, Lorg/light/LightSurface;->instanceId:I

    if-eqz v0, :cond_0

    sget-object v1, Lorg/light/LightSurface;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightSurface"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v0, p0, Lorg/light/LightSurface;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 6
    invoke-direct {p0}, Lorg/light/LightSurface;->nativeFinalize()V

    :cond_1
    :goto_0
    return-void
.end method

.method public freeCache()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightSurface;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/LightSurface;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceFreeCache(I)V
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

    const-string v1, "LightSurface"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/LightSurface;->nativeFreeCache()V

    :goto_0
    return-void
.end method

.method public getInstanceId()I
    .locals 1

    iget v0, p0, Lorg/light/LightSurface;->instanceId:I

    return v0
.end method

.method public getRenderCurrentGLContext()J
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightSurface;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/LightSurface;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceGetRenderCurrentGLContext(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

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

    const-string v1, "LightSurface"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/LightSurface;->nativeGetRenderCurrentGLContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public makeRenderCurrent()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightSurface;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/LightSurface;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceMakeRenderCurrent(I)V
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

    const-string v1, "LightSurface"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/LightSurface;->nativeMakeRenderCurrent()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightSurface;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/LightSurface;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceRelease(I)V
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

    const-string v1, "LightSurface"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/LightSurface;->nativeRelease()V

    .line 5
    :goto_0
    iget-object v0, p0, Lorg/light/LightSurface;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lorg/light/utils/SimpleRenderer;->release()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/light/LightSurface;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/light/LightSurface;->nativeBuffer:Lorg/light/NativeBuffer;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v0

    invoke-static {v0}, Lorg/light/utils/LightGLUtils;->deleteTexture(I)V

    .line 10
    iget-object v0, p0, Lorg/light/LightSurface;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v0}, Lorg/light/NativeBuffer;->release()V

    :cond_2
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0

    iput p1, p0, Lorg/light/LightSurface;->instanceId:I

    return-void
.end method

.method public updateSize(II)V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/LightSurface;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/light/LightSurface;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/light/NativeBuffer;->updateSize(II)Z

    .line 3
    iput p1, p0, Lorg/light/LightSurface;->sdkOutputWidth:I

    .line 4
    iput p2, p0, Lorg/light/LightSurface;->sdkOutputHeight:I

    .line 5
    sget-object v0, Lorg/light/LightSurface;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    iget v1, p0, Lorg/light/LightSurface;->instanceId:I

    iget-object v2, p0, Lorg/light/LightSurface;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v2}, Lorg/light/NativeBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/light/ILightSDKServiceInterface;->lightSurfaceUpdateSize(ILandroid/hardware/HardwareBuffer;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    const-string p2, "LightSurface"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/light/LightSurface;->nativeUpdateSize(II)V

    :goto_0
    return-void
.end method
