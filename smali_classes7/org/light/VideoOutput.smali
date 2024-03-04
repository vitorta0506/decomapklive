.class public Lorg/light/VideoOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoOutput"

.field private static lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;


# instance fields
.field private instanceId:I

.field private nativeContext:J

.field private simpleRenderer:Lorg/light/utils/SimpleRenderer;

.field private weakEngine:Ljava/lang/ref/WeakReference;
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
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lorg/light/VideoOutput;->nativeInit()V
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
    iput v0, p0, Lorg/light/VideoOutput;->instanceId:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/light/VideoOutput;->weakEngine:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object v0, p0, Lorg/light/VideoOutput;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    return-void
.end method

.method public static init()V
    .locals 0

    return-void
.end method

.method private native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeReadSample(J)Z
.end method

.method private native nativeReadSampleCheckFlush(J)Z
.end method

.method private native nativeRelease()V
.end method

.method public static setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    sput-object p0, Lorg/light/VideoOutput;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    return-void
.end method


# virtual methods
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
    iget v0, p0, Lorg/light/VideoOutput;->instanceId:I

    if-eqz v0, :cond_1

    sget-object v0, Lorg/light/VideoOutput;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/light/VideoOutput;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lorg/light/utils/SimpleRenderer;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/light/VideoOutput;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    .line 6
    :cond_0
    :try_start_0
    sget-object v0, Lorg/light/VideoOutput;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    iget v1, p0, Lorg/light/VideoOutput;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->removeSdkInstance(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_1
    iget-wide v0, p0, Lorg/light/VideoOutput;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 9
    invoke-direct {p0}, Lorg/light/VideoOutput;->nativeFinalize()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getInstanceId()I
    .locals 1

    iget v0, p0, Lorg/light/VideoOutput;->instanceId:I

    return v0
.end method

.method public readSample(J)Z
    .locals 12

    .line 1
    sget-object v0, Lorg/light/VideoOutput;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lorg/light/VideoOutput;->weakEngine:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/light/LightEngine;

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lorg/light/LightEngine;->getLightSurface()Lorg/light/LightSurface;

    move-result-object v2

    const-string v3, "VideoOutput"

    if-nez v2, :cond_2

    const-string p1, "VideoOutput.readSample error: LightSurface not set"

    .line 5
    invoke-static {v3, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_2
    :try_start_0
    sget-object v4, Lorg/light/VideoOutput;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    iget v5, p0, Lorg/light/VideoOutput;->instanceId:I

    invoke-virtual {v2}, Lorg/light/LightSurface;->getInstanceId()I

    move-result v6

    .line 7
    invoke-virtual {v0}, Lorg/light/LightEngine;->getCameraControllerInstanceId()I

    move-result v7

    invoke-virtual {v0}, Lorg/light/LightEngine;->getCameraTextureTimestamp()J

    move-result-wide v8

    move-wide v10, p1

    .line 8
    invoke-interface/range {v4 .. v11}, Lorg/light/ILightSDKServiceInterface;->videoOutputReadSample(IIIJJ)Lorg/light/bean/ReadSampleResult;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-boolean v1, p1, Lorg/light/bean/ReadSampleResult;->readOk:Z

    .line 10
    iget-object p1, p1, Lorg/light/bean/ReadSampleResult;->fenceFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2, p1}, Lorg/light/LightSurface;->copyOutputTexture(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-wide/16 p1, -0x1

    .line 12
    invoke-virtual {v0, p1, p2}, Lorg/light/LightEngine;->setCameraTextureTimestamp(J)V

    return v1

    .line 13
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/light/VideoOutput;->nativeReadSample(J)Z

    move-result p1

    return p1
.end method

.method public readSampleCheckFlush(J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/light/VideoOutput;->nativeReadSampleCheckFlush(J)Z

    move-result p1

    return p1
.end method

.method public final release()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/VideoOutput;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/VideoOutput;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->videoOutputRelease(I)V
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

    const-string v1, "VideoOutput"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/VideoOutput;->nativeRelease()V

    :goto_0
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0

    iput p1, p0, Lorg/light/VideoOutput;->instanceId:I

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

    iput-object p1, p0, Lorg/light/VideoOutput;->weakEngine:Ljava/lang/ref/WeakReference;

    return-void
.end method
