.class public Lorg/light/NativeBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EGL_NO_NATIVE_FENCE_FD_ANDROID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NativeBuffer"

.field private static available:Z = false

.field private static lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;


# instance fields
.field private buffer:Landroid/hardware/HardwareBuffer;

.field private eglFenceEnabled:Z

.field private nativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "NativeBuffer"

    .line 1
    :try_start_0
    invoke-static {}, Lorg/light/NativeBuffer;->available()Z

    move-result v1

    sput-boolean v1, Lorg/light/NativeBuffer;->available:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeBuffer available() error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeBuffer available():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lorg/light/NativeBuffer;->available:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-boolean v1, Lorg/light/NativeBuffer;->available:Z

    if-nez v1, :cond_0

    const-string v1, "NativeBuffer not available"

    .line 5
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lorg/light/NativeBuffer;->nativeContext:J

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/light/NativeBuffer;->buffer:Landroid/hardware/HardwareBuffer;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/light/NativeBuffer;->eglFenceEnabled:Z

    const-string v0, "NativeBuffer"

    const-string v1, "create new"

    .line 13
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/light/NativeBuffer;->create(II)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/light/NativeBuffer;->nativeContext:J

    .line 15
    invoke-direct {p0}, Lorg/light/NativeBuffer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/HardwareBuffer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/light/NativeBuffer;->nativeContext:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/light/NativeBuffer;->buffer:Landroid/hardware/HardwareBuffer;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/light/NativeBuffer;->eglFenceEnabled:Z

    const-string v0, "NativeBuffer"

    const-string v1, "create from buffer"

    .line 5
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lorg/light/NativeBuffer;->createFromBuffer(Landroid/hardware/HardwareBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/NativeBuffer;->nativeContext:J

    .line 7
    iput-object p1, p0, Lorg/light/NativeBuffer;->buffer:Landroid/hardware/HardwareBuffer;

    .line 8
    invoke-direct {p0}, Lorg/light/NativeBuffer;->init()V

    return-void
.end method

.method private static native available()Z
.end method

.method private native bindTexture(JI)Z
.end method

.method private native create(II)J
.end method

.method private static native createEGLFence()I
.end method

.method private native createFromBuffer(Landroid/hardware/HardwareBuffer;)J
.end method

.method private native destroy(J)V
.end method

.method private native getBindTexture(J)I
.end method

.method private native getBuffer(J)Landroid/hardware/HardwareBuffer;
.end method

.method private native getHeight(J)I
.end method

.method private native getWidth(J)I
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/light/NativeBuffer;->isFenceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/light/NativeBuffer;->eglFenceEnabled:Z

    .line 2
    sget-object v1, Lorg/light/NativeBuffer;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lorg/light/NativeBuffer;->setEglFenceEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    sget-boolean v0, Lorg/light/NativeBuffer;->available:Z

    return v0
.end method

.method private static native isEglFenceEnabled()Z
.end method

.method public static isFenceEnabled()Z
    .locals 3

    .line 1
    sget-object v0, Lorg/light/NativeBuffer;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lorg/light/ILightSDKServiceInterface;->nativeBufferIsEglFenceEnabled()Z

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

    const-string v1, "NativeBuffer"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lorg/light/NativeBuffer;->isEglFenceEnabled()Z

    move-result v0

    return v0
.end method

.method private native resize(JII)Z
.end method

.method private static native setEglFenceEnabled(Z)V
.end method

.method public static setFenceEnabled(Z)V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/NativeBuffer;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p0}, Lorg/light/ILightSDKServiceInterface;->nativeBufferSetEglFenceEnabled(Z)V
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

    const-string v1, "NativeBuffer"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/light/NativeBuffer;->setEglFenceEnabled(Z)V

    return-void
.end method

.method public static setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    sput-object p0, Lorg/light/NativeBuffer;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    return-void
.end method

.method private static native waitEGLFence(I)Z
.end method


# virtual methods
.method public bindTexture(I)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/light/NativeBuffer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1, p1}, Lorg/light/NativeBuffer;->bindTexture(JI)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public createFence()Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/light/NativeBuffer;->eglFenceEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lorg/light/NativeBuffer;->createEGLFence()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 3
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    invoke-virtual {p0}, Lorg/light/NativeBuffer;->release()V

    return-void
.end method

.method public getBindTexture()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/light/NativeBuffer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lorg/light/NativeBuffer;->getBindTexture(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferHeight()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/light/NativeBuffer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lorg/light/NativeBuffer;->getHeight(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferWidth()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/light/NativeBuffer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lorg/light/NativeBuffer;->getWidth(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/light/NativeBuffer;->nativeContext:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    .line 2
    iget-object v0, p0, Lorg/light/NativeBuffer;->buffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 4
    iput-object v2, p0, Lorg/light/NativeBuffer;->buffer:Landroid/hardware/HardwareBuffer;

    .line 5
    :cond_0
    iget-wide v0, p0, Lorg/light/NativeBuffer;->nativeContext:J

    invoke-direct {p0, v0, v1}, Lorg/light/NativeBuffer;->getBuffer(J)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/light/NativeBuffer;->buffer:Landroid/hardware/HardwareBuffer;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public release()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/light/NativeBuffer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-string v0, "NativeBuffer"

    const-string v1, "destroy"

    .line 2
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/light/NativeBuffer;->buffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/light/NativeBuffer;->buffer:Landroid/hardware/HardwareBuffer;

    .line 6
    :cond_0
    iget-wide v0, p0, Lorg/light/NativeBuffer;->nativeContext:J

    invoke-direct {p0, v0, v1}, Lorg/light/NativeBuffer;->destroy(J)V

    .line 7
    iput-wide v2, p0, Lorg/light/NativeBuffer;->nativeContext:J

    :cond_1
    return-void
.end method

.method public updateSize(II)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/light/NativeBuffer;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/light/NativeBuffer;->resize(JII)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public waitFence(Landroid/os/ParcelFileDescriptor;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    invoke-static {p1}, Lorg/light/NativeBuffer;->waitEGLFence(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
