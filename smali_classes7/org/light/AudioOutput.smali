.class public Lorg/light/AudioOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioOutput"

.field private static lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;


# instance fields
.field private instanceId:I

.field private nativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lorg/light/AudioOutput;->nativeInit()V
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
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/AudioOutput;->instanceId:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/light/AudioOutput;->nativeContext:J

    return-void
.end method

.method private native nativeCopyNextSample()Lorg/light/AudioFrame;
.end method

.method private native nativeCopyNextSampleSyncEnable(Z)Lorg/light/AudioFrame;
.end method

.method private native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSeekTo(J)V
.end method

.method public static setLightSDKServiceInterface(Lorg/light/ILightSDKServiceInterface;)V
    .locals 0

    sput-object p0, Lorg/light/AudioOutput;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    return-void
.end method


# virtual methods
.method public copyNextSample()Lorg/light/AudioFrame;
    .locals 3

    .line 1
    sget-object v0, Lorg/light/AudioOutput;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/AudioOutput;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->audioOutputCopyNextSample(I)Lorg/light/AudioFrame;

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

    const-string v1, "AudioOutput"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/AudioOutput;->nativeCopyNextSample()Lorg/light/AudioFrame;

    move-result-object v0

    return-object v0
.end method

.method public copyNextSampleSyncEnable(Z)Lorg/light/AudioFrame;
    .locals 2

    .line 1
    sget-object v0, Lorg/light/AudioOutput;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/AudioOutput;->instanceId:I

    invoke-interface {v0, v1, p1}, Lorg/light/ILightSDKServiceInterface;->audioOutputCopyNextSampleSyncEnable(IZ)Lorg/light/AudioFrame;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

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

    const-string v0, "AudioOutput"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/light/AudioOutput;->nativeCopyNextSampleSyncEnable(Z)Lorg/light/AudioFrame;

    move-result-object p1

    return-object p1
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
    iget v0, p0, Lorg/light/AudioOutput;->instanceId:I

    if-eqz v0, :cond_0

    sget-object v1, Lorg/light/AudioOutput;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

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
    iget-wide v0, p0, Lorg/light/AudioOutput;->nativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 6
    invoke-direct {p0}, Lorg/light/AudioOutput;->nativeFinalize()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getInstanceId()I
    .locals 1

    iget v0, p0, Lorg/light/AudioOutput;->instanceId:I

    return v0
.end method

.method public final release()V
    .locals 3

    .line 1
    sget-object v0, Lorg/light/AudioOutput;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/AudioOutput;->instanceId:I

    invoke-interface {v0, v1}, Lorg/light/ILightSDKServiceInterface;->audioOutputRelease(I)V
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

    const-string v1, "AudioOutput"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/AudioOutput;->nativeRelease()V

    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    .line 1
    sget-object v0, Lorg/light/AudioOutput;->lightSDKServiceInterface:Lorg/light/ILightSDKServiceInterface;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/AudioOutput;->instanceId:I

    invoke-interface {v0, v1, p1, p2}, Lorg/light/ILightSDKServiceInterface;->audioOutputSeekTo(IJ)V
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

    const-string p2, "AudioOutput"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/light/AudioOutput;->nativeSeekTo(J)V

    :goto_0
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0

    iput p1, p0, Lorg/light/AudioOutput;->instanceId:I

    return-void
.end method
